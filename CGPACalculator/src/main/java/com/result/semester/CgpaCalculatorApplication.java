package com.result.semester;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CgpaCalculatorApplication {

	public static void main(String[] args) {
		SpringApplication.run(CgpaCalculatorApplication.class, args);
		System.out.println("This is a web Application Which can be taken data through a from and calculate your CGPA");
	}

}
