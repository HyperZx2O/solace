import 'reflect-metadata';
import { NestFactory } from '@nestjs/core';
import type { NestExpressApplication } from '@nestjs/platform-express';
import { ConfigError, loadConfig } from './config/config';
import { createLogger } from './common/logger';
import type { Logger } from './common/logger';

async function bootstrap(): Promise<void> {
  let config;
  let logger: Logger;

  try {
    config = loadConfig();
    logger = createLogger({
      level: config.logLevel,
      pretty: !config.isProduction && config.nodeEnv !== 'test',
    });
  } catch (error) {
    if (error instanceof ConfigError) {
      process.stderr.write(`${error.message}\n`);
      process.exit(1);
    }
    throw error;
  }

  // AppModule is imported only after configuration is validated. Importing it
  // earlier pulls in Prisma Client, which loads the project's .env file as a
  // side effect and would let a missing variable slip past the fail-fast check.
  const { AppModule } = await import('./app.module');

  const app = await NestFactory.create<NestExpressApplication>(AppModule, {
    logger: false,
  });

  app.enableShutdownHooks();
  app.enableCors({
    origin: config.corsOrigins.length > 0 ? [...config.corsOrigins] : false,
    credentials: false,
  });

  await app.listen(config.port);

  logger.info(
    {
      port: config.port,
      env: config.nodeEnv,
      service: 'solace-api',
    },
    'Solace-api listening',
  );
}

void bootstrap();
