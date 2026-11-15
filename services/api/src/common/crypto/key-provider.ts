import { createHash } from 'node:crypto';
import { ConfigError } from '../../config/config';
import type { AppConfig } from '../../config/config';

/**
 * Resolves the field-encryption data key (ADR-6). The key itself is never in the
 * database. CP1 ships a local provider and an environment-backed provider; a
 * KMS/secret-manager adapter is blocked on OD-8 and must be added before real
 * data is held in production.
 */
export interface FieldKey {
  readonly keyId: string;
  readonly key: Buffer;
}

export interface KeyProvider {
  current(): FieldKey;
}

export const KEY_PROVIDER = Symbol('KEY_PROVIDER');

const KEY_BYTES = 32;

export class LocalKeyProvider implements KeyProvider {
  private readonly fieldKey: FieldKey;

  constructor(ref: string) {
    // Deterministic development/test key derived from the reference. It is not a
    // secret and must never be accepted in production.
    const key = createHash('sha256').update(`Solace-field-encryption:${ref}`).digest();
    this.fieldKey = Object.freeze({ keyId: 'local:v1', key });
  }

  current(): FieldKey {
    return this.fieldKey;
  }
}

export class EnvKeyProvider implements KeyProvider {
  private readonly fieldKey: FieldKey;

  constructor(variable: string) {
    const raw = process.env[variable];
    if (!raw) {
      throw new ConfigError([`FIELD_ENCRYPTION_KEY_REF names ${variable}, which is not set`]);
    }
    const key = Buffer.from(raw, 'base64');
    if (key.length !== KEY_BYTES) {
      throw new ConfigError([
        `${variable} must be a base64-encoded 32-byte key, got ${key.length} bytes`,
      ]);
    }
    this.fieldKey = Object.freeze({ keyId: `env:${variable}:v1`, key });
  }

  current(): FieldKey {
    return this.fieldKey;
  }
}

/**
 * Ref formats:
 * - `dev://name` or `test://name`: deterministic local key, non-production only.
 * - `env://VARIABLE`: base64 32-byte key in that environment variable.
 * Anything else (including `kms://`) fails closed rather than falling back.
 */
export function createKeyProvider(config: AppConfig): KeyProvider {
  const ref = config.fieldEncryptionKeyRef;
  if (ref.startsWith('dev://') || ref.startsWith('test://')) {
    if (config.isProduction) {
      throw new ConfigError([
        `FIELD_ENCRYPTION_KEY_REF=${ref} is a local development key and is refused in production`,
      ]);
    }
    return new LocalKeyProvider(ref);
  }
  if (ref.startsWith('env://')) {
    return new EnvKeyProvider(ref.slice('env://'.length));
  }
  throw new ConfigError([
    `FIELD_ENCRYPTION_KEY_REF scheme is not supported: "${ref.split('://')[0] ?? ref}"`,
  ]);
}
