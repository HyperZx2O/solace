/**
 * Development seed. Synthetic data only: no real names, emails or clinical
 * content. Never run against staging or production.
 *
 * Safety: the seed refuses to run when NODE_ENV is staging or production, and
 * it uses MIGRATION_DATABASE_URL (the owner role) because the runtime role may
 * not rewrite rows.
 */
import { PrismaClient } from '@prisma/client';
import { CONSENT_ITEMS } from '../../src/common/enums';
import { PHQ9_SURVEY } from '../../src/modules/surveys/definitions';

const OWNER_URL = process.env.MIGRATION_DATABASE_URL ?? process.env.DATABASE_URL;

if (process.env.NODE_ENV === 'production' || process.env.NODE_ENV === 'staging') {
  process.stderr.write('Refusing to seed a non-development environment.\n');
  process.exit(1);
}

const prisma = new PrismaClient(OWNER_URL ? { datasourceUrl: OWNER_URL } : undefined);

const SYNTHETIC_EMAIL_DOMAIN = 'example.invalid';
const THERAPIST_EMAIL = `therapist@${SYNTHETIC_EMAIL_DOMAIN}`;
const PATIENT_EMAIL = `patient@${SYNTHETIC_EMAIL_DOMAIN}`;

/** argon2id hash of the development-only password below. Not a real credential. */
const DEV_PASSWORD = 'solace-dev-password-not-real';
const DEV_PASSWORD_HASH =
  '$argon2id$v=19$m=19456,p=1,t=2$9c+SaQiGWcWlOrMNNHGn5Q$m++nfJ4hJVqHAmHRunUJ1LTmRrz5LisaZzJBeyYFjG8';

const THERAPIST_ID = '00000000-0000-4000-8000-000000000001';
const PATIENT_ID = '00000000-0000-4000-8000-000000000002';
const CONNECTION_ID = '00000000-0000-4000-8000-000000000003';
const RESPONSE_CLIENT_ID = '00000000-0000-4000-8000-000000000004';

async function main(): Promise<void> {
  const survey = await prisma.survey.upsert({
    where: { key: PHQ9_SURVEY.key },
    update: {
      title: PHQ9_SURVEY.title,
      version: PHQ9_SURVEY.version,
      items: PHQ9_SURVEY.items.map((item) => ({ ...item })),
    },
    create: {
      key: PHQ9_SURVEY.key,
      title: PHQ9_SURVEY.title,
      version: PHQ9_SURVEY.version,
      items: PHQ9_SURVEY.items.map((item) => ({ ...item })),
    },
  });

  const therapist = await prisma.user.upsert({
    where: { id: THERAPIST_ID },
    update: { email: THERAPIST_EMAIL, passwordHash: DEV_PASSWORD_HASH },
    create: {
      id: THERAPIST_ID,
      role: 'therapist',
      status: 'active',
      email: THERAPIST_EMAIL,
      passwordHash: DEV_PASSWORD_HASH,
      ageConfirmedAt: new Date('2026-01-01T00:00:00.000Z'),
    },
  });

  await prisma.therapistProfile.upsert({
    where: { userId: therapist.id },
    update: {},
    create: {
      userId: therapist.id,
      licenceCiphertext: 'synthetic-ciphertext-not-a-real-licence',
      keyId: 'dev-key',
      professionalBody: 'Synthetic Body',
      countryOfPractice: 'XX',
      verificationStatus: 'verified',
      verifiedAt: new Date('2026-01-02T00:00:00.000Z'),
      mfaEnabled: false,
    },
  });

  const patient = await prisma.user.upsert({
    where: { id: PATIENT_ID },
    update: {
      email: PATIENT_EMAIL,
      passwordHash: DEV_PASSWORD_HASH,
      journalPrivacy: 'full_access',
    },
    create: {
      id: PATIENT_ID,
      role: 'patient',
      status: 'active',
      email: PATIENT_EMAIL,
      passwordHash: DEV_PASSWORD_HASH,
      journalPrivacy: 'full_access',
      ageConfirmedAt: new Date('2026-01-01T00:00:00.000Z'),
    },
  });

  // Append-only: add only items that have never been recorded. Never rewrite a
  // synthetic user's later choice during a re-seed.
  const consentRows = await prisma.consentRecord.findMany({
    where: { userId: patient.id },
    select: { item: true },
  });
  const recorded = new Set(consentRows.map((row) => row.item));
  const missingItems = CONSENT_ITEMS.filter((item) => !recorded.has(item));
  if (missingItems.length > 0) {
    await prisma.consentRecord.createMany({
      data: missingItems.map((item) => ({
        userId: patient.id,
        item,
        granted: true,
        source: 'onboarding' as const,
        appVersion: '0.0.0-seed',
      })),
    });
  }

  await prisma.connection.upsert({
    where: { id: CONNECTION_ID },
    update: {},
    create: {
      id: CONNECTION_ID,
      patientId: patient.id,
      therapistId: therapist.id,
      state: 'active',
      confirmedAt: new Date('2026-01-03T00:00:00.000Z'),
    },
  });

  const response = await prisma.surveyResponse.upsert({
    where: {
      userId_clientId: {
        userId: patient.id,
        clientId: RESPONSE_CLIENT_ID,
      },
    },
    update: {},
    create: {
      userId: patient.id,
      surveyId: survey.id,
      clientId: RESPONSE_CLIENT_ID,
      responses: { q1: 2, q2: 1, q3: 2, q4: 1, q5: 1, q6: 0, q7: 1, q8: 0, q9: 1 },
      status: 'completed',
      clientCreatedAt: new Date('2026-01-04T09:00:00.000Z'),
      completedAt: new Date('2026-01-04T09:05:00.000Z'),
    },
  });

  // q1..q9 = 2,1,2,1,1,0,1,0,1 -> 9, with item 9 > 0 (possible concern).
  await prisma.surveyResult.upsert({
    where: { responseId: response.id },
    update: {},
    create: {
      userId: patient.id,
      surveyId: survey.id,
      responseId: response.id,
      scores: { q1: 2, q2: 1, q3: 2, q4: 1, q5: 1, q6: 0, q7: 1, q8: 0, q9: 1 },
      totalScore: 9,
      phq9Item9: 1,
      createdAt: new Date('2026-01-04T09:05:00.000Z'),
    },
  });

  await prisma.resource.deleteMany({
    where: { name: { startsWith: 'Synthetic ' } },
  });
  await prisma.resource.createMany({
    data: [
      {
        name: 'Synthetic Emergency Line',
        number: '000',
        hours: '24/7',
        ownerName: 'Synthetic Provider',
        lastVerifiedAt: new Date('2026-01-01T00:00:00.000Z'),
        isEmergency: true,
      },
      {
        name: 'Synthetic Helpline',
        number: '000-0000',
        hours: '24/7',
        ownerName: 'Synthetic Provider',
        lastVerifiedAt: new Date('2026-01-01T00:00:00.000Z'),
        isEmergency: false,
      },
    ],
  });

  process.stdout.write(
    `Seeded synthetic data: survey=${survey.id} therapist=${therapist.id} patient=${patient.id}\n` +
      `Emails use the reserved domain ${SYNTHETIC_EMAIL_DOMAIN}.\n` +
      `Development login: ${PATIENT_EMAIL} / ${DEV_PASSWORD} (therapist: ${THERAPIST_EMAIL}).\n`,
  );
}

main()
  .catch((error: unknown) => {
    process.stderr.write(`${error instanceof Error ? error.message : String(error)}\n`);
    process.exitCode = 1;
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
