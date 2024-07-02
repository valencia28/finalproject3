package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication //실행
//@ComponentScan  //<context:component-scan> 역할   //현재패키지 com.example.demo는 이 태그 생략가능 -> 하지만 이 태그가 여려개일경우 기본도 적어줘야함
//@ComponentScan(basePackages = "upload")    //ComponentScan 복수개 작성 가능
//@ComponentScan(basePackageClasses = BoardController.class)

//@ComponentScan(basePackages = {"upload", "spring.mybatis.board"})

//@ComponentScan(basePackages = "boardmapper")
//@MapperScan(basePackages = "boardmapper")

//@ComponentScan(basePackages = "websocket")

//@ComponentScan(basePackages = "booknew")
/* @MapperScan("booknew") */

@ComponentScan(basePackages = "book")

public class FirstbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(FirstbootApplication.class, args);
	}

}
