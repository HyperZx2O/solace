import { createHash, randomUUID, timingSafeEqual } from 'node:crypto';
import { Inject, Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { CONFIG } from '../../config/config';
import type { AppConfig } from '../../config/config';
import type { Role } from '../../common/enums';
import type { AccessTokenPayload, RefreshTokenPayload } from './auth.types';

const ISSUER = 'Solace-api';
const AUDIENCE = 'Solace-app';
const ALGORITHM = 'HS256';

@Injectable()
export class TokenService {
  constructor(
    @Inject(CONFIG) private readonly config: AppConfig,
    private readonly jwt: JwtService,
  ) {}

  get accessTtlSeconds(): number {
    return this.config.accessTokenTtlMin * 60;
  }

  refreshExpiry(now: Date = new Date()): Date {
    return new Date(now.getTime() + this.config.refreshTokenTtlDays * 24 * 60 * 60 * 1000);
  }

  signAccessToken(input: { userId: string; sessionId: string; role: Role }): Promise<string> {
    return this.jwt.signAsync(
      {
        sub: input.userId,
        sid: input.sessionId,
        role: input.role,
        type: 'access',
      } satisfies AccessTokenPayload,
      {
        secret: this.config.jwtAccessSecret,
        expiresIn: this.accessTtlSeconds,
        issuer: ISSUER,
        audience: AUDIENCE,
        algorithm: ALGORITHM,
      },
    );
  }

  signRefreshToken(input: {
    userId: string;
    sessionId: string;
    familyId: string;
  }): Promise<string> {
    return this.jwt.signAsync(
      {
        sub: input.userId,
        sid: input.sessionId,
        fid: input.familyId,
        type: 'refresh',
      } satisfies RefreshTokenPayload,
      {
        secret: this.config.jwtRefreshSecret,
        expiresIn: this.config.refreshTokenTtlDays * 24 * 60 * 60,
        issuer: ISSUER,
        audience: AUDIENCE,
        algorithm: ALGORITHM,
        // Without a unique id, two rotations inside the same second would sign
        // byte-identical tokens. Rotation would then be a no-op and the same
        // refresh token could be replayed without tripping reuse detection.
        jwtid: randomUUID(),
      },
    );
  }

  async verifyAccessToken(token: string): Promise<AccessTokenPayload> {
    const payload = await this.jwt.verifyAsync<AccessTokenPayload>(token, {
      secret: this.config.jwtAccessSecret,
      issuer: ISSUER,
      audience: AUDIENCE,
      algorithms: [ALGORITHM],
    });
    if (
      payload.type !== 'access' ||
      typeof payload.sub !== 'string' ||
      typeof payload.sid !== 'string' ||
      typeof payload.role !== 'string'
    ) {
      throw new Error('Malformed access token');
    }
    return payload;
  }

  async verifyRefreshToken(token: string): Promise<RefreshTokenPayload> {
    const payload = await this.jwt.verifyAsync<RefreshTokenPayload>(token, {
      secret: this.config.jwtRefreshSecret,
      issuer: ISSUER,
      audience: AUDIENCE,
      algorithms: [ALGORITHM],
    });
    if (
      payload.type !== 'refresh' ||
      typeof payload.sub !== 'string' ||
      typeof payload.sid !== 'string' ||
      typeof payload.fid !== 'string'
    ) {
      throw new Error('Malformed refresh token');
    }
    return payload;
  }

  /** Only a hash is stored, so a database leak does not yield usable tokens. */
  hashToken(token: string): string {
    return createHash('sha256').update(token).digest('hex');
  }

  sameTokenHash(storedHash: string, token: string): boolean {
    const computed = Buffer.from(this.hashToken(token), 'hex');
    const stored = Buffer.from(storedHash, 'hex');
    return stored.length === computed.length && timingSafeEqual(stored, computed);
  }
}
