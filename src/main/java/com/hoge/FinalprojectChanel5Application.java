package com.hoge;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
@MapperScan(basePackages = "com.hoge.mapper")
public class FinalprojectChanel5Application {

	public static void main(String[] args) {
		SpringApplication.run(FinalprojectChanel5Application.class, args);
	}

}
