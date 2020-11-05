package com.mk.docker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages= {"com.mk.docker"})
public class DockerMkApplication {

	public static void main(String[] args) {
		SpringApplication.run(DockerMkApplication.class, args);
	}

}
