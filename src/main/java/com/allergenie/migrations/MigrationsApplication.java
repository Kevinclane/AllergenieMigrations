package com.allergenie.migrations;

import com.azure.security.keyvault.secrets.SecretClient;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.Environment;
import org.springframework.javapoet.ClassName;

import java.util.Arrays;
import java.util.logging.Logger;

@SpringBootApplication
public class MigrationsApplication implements CommandLineRunner {

	private final Environment environment;
	private static final Logger logger = Logger.getLogger(ClassName.class.getName());
	private final SecretClient secretClient;

	public MigrationsApplication(Environment environment, SecretClient secretClient) {
		this.environment = environment;
		this.secretClient = secretClient;
	}

	public static void main(String[] args) {
		SpringApplication.run(MigrationsApplication.class, args);
	}

	@Override
	public void run(String... args) {
		String[] activeProfiles = environment.getActiveProfiles();
		logger.info("CS: " + secretClient.getSecret("ConnectionString").getValue());

		if (activeProfiles.length == 0) {
			logger.info("No active profiles");
		}

		if (Arrays.stream(activeProfiles).noneMatch(env -> (env.equalsIgnoreCase("local")))) {
			logger.info("Running in " + activeProfiles[0] + " mode");
		} else {
			logger.info("Running in local mode");
			logger.info("Serving on port 8080");
		}

	}
}
