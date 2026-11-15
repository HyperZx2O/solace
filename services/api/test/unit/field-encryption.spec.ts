import { randomBytes } from 'node:crypto';
import type { AppConfig } from '../../src/config/config';
import { ConfigError } from '../../src/config/config';
import {
  FieldDecryptionError,
  FieldEncryptionService,
  aadFor,
} from '../../src/common/crypto/field-encryption.service';
import { createKeyProvider } from '../../src/common/crypto/key-provider';

function serviceWithKey(key: Buffer): FieldEncryptionService {
  return new FieldEncryptionService({ current: () => ({ keyId: 'test:v1', key }) });
}

function config(ref: string, isProduction = false): AppConfig {
  return { fieldEncryptionKeyRef: ref, isProduction } as unknown as AppConfig;
}

describe('AES-256-GCM field encryption (ADR-6)', () => {
  const key = Buffer.alloc(32, 7);
  const service = serviceWithKey(key);
  const aad = aadFor('safety_plans', 'field1', 'row-1');

  it('round-trips a value', () => {
    const plaintext = 'Call my sister. Walk to the park.';
    expect(service.decrypt(service.encrypt(plaintext, aad), aad)).toBe(plaintext);
  });

  it('does not store the plaintext in the ciphertext', () => {
    const plaintext = 'a very recognisable safety plan sentence';
    expect(service.encrypt(plaintext, aad)).not.toContain(plaintext);
  });

  it('uses a fresh IV, so equal plaintexts encrypt differently', () => {
    const first = service.encrypt('same', aad);
    const second = service.encrypt('same', aad);
    expect(first).not.toBe(second);
    expect(service.decrypt(second, aad)).toBe('same');
  });

  it('fails when the AAD does not match the row or field', () => {
    const payload = service.encrypt('secret', aad);
    expect(() => service.decrypt(payload, aadFor('safety_plans', 'field1', 'another-row'))).toThrow(
      FieldDecryptionError,
    );
    expect(() => service.decrypt(payload, aadFor('safety_plans', 'field2', 'row-1'))).toThrow(
      FieldDecryptionError,
    );
  });

  it('fails when the ciphertext is tampered with', () => {
    const payload = service.encrypt('secret', aad);
    const bytes = Buffer.from(payload, 'base64');
    bytes[bytes.length - 1] = (bytes[bytes.length - 1] as number) ^ 0xff;
    expect(() => service.decrypt(bytes.toString('base64'), aad)).toThrow(FieldDecryptionError);
  });

  it('fails with a different key', () => {
    const payload = service.encrypt('secret', aad);
    const other = serviceWithKey(Buffer.alloc(32, 8));
    expect(() => other.decrypt(payload, aad)).toThrow(FieldDecryptionError);
  });

  it('rejects an obviously short payload', () => {
    expect(() => service.decrypt(Buffer.alloc(10).toString('base64'), aad)).toThrow(
      FieldDecryptionError,
    );
  });

  it('treats null as absent, not as an empty string', () => {
    expect(service.encryptOptional(null, aad)).toBeNull();
    expect(service.decryptOptional(null, aad)).toBeNull();
    expect(service.decryptOptional(undefined, aad)).toBeNull();
    expect(service.currentKeyId()).toBe('test:v1');
  });
});

describe('field key provider', () => {
  const envVar = 'Solace_TEST_FIELD_KEY';
  const original = process.env[envVar];

  afterEach(() => {
    if (original === undefined) {
      delete process.env[envVar];
    } else {
      process.env[envVar] = original;
    }
  });

  it('derives a deterministic local key for dev:// and test:// refs', () => {
    const first = createKeyProvider(config('dev://Solace-field-key'));
    const second = createKeyProvider(config('dev://Solace-field-key'));
    expect(first.current().key).toHaveLength(32);
    expect(first.current().key.equals(second.current().key)).toBe(true);
    expect(first.current().keyId).toBe('local:v1');
    expect(createKeyProvider(config('test://key')).current().key).toHaveLength(32);
  });

  it('refuses a local development key in production', () => {
    expect(() => createKeyProvider(config('dev://key', true))).toThrow(ConfigError);
  });

  it('reads a base64 32-byte key from env://', () => {
    const raw = randomBytes(32);
    process.env[envVar] = raw.toString('base64');
    const provider = createKeyProvider(config(`env://${envVar}`));
    expect(provider.current().key.equals(raw)).toBe(true);
  });

  it('refuses a missing or wrong-sized env key', () => {
    delete process.env[envVar];
    expect(() => createKeyProvider(config(`env://${envVar}`))).toThrow(ConfigError);
    process.env[envVar] = Buffer.alloc(16).toString('base64');
    expect(() => createKeyProvider(config(`env://${envVar}`))).toThrow(ConfigError);
  });

  it('fails closed for an unsupported scheme', () => {
    expect(() => createKeyProvider(config('kms://some-key'))).toThrow(ConfigError);
  });
});
