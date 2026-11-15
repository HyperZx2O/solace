import { Transform } from 'class-transformer';
import {
  Equals,
  IsBoolean,
  IsEmail,
  IsNotEmpty,
  IsOptional,
  IsString,
  MaxLength,
  MinLength,
} from 'class-validator';

const normalizeEmail = ({ value }: { value: unknown }): unknown =>
  typeof value === 'string' ? value.trim().toLowerCase() : value;

export class SignupDto {
  @Transform(normalizeEmail)
  @IsEmail()
  email!: string;

  @IsString()
  @MinLength(12)
  @MaxLength(200)
  password!: string;

  /** OD-3: under-18 signup is blocked. The client cannot override this. */
  @IsBoolean()
  @Equals(true, { message: 'You must be 18 or older to use Solace' })
  ageConfirmed!: boolean;

  @IsOptional()
  @IsString()
  @MaxLength(50)
  appVersion?: string;
}

export class LoginDto {
  @Transform(normalizeEmail)
  @IsEmail()
  email!: string;

  @IsString()
  @IsNotEmpty()
  @MaxLength(200)
  password!: string;

  @IsOptional()
  @IsString()
  @MaxLength(120)
  deviceLabel?: string;
}

export class RefreshDto {
  @IsString()
  @IsNotEmpty()
  refreshToken!: string;
}

export class LogoutDto {
  @IsOptional()
  @IsString()
  @IsNotEmpty()
  refreshToken?: string;
}
