package com.soft1851.used.books.api;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

/**
 * @author wanghuanle
 */

@SpringBootApplication
@MapperScan("com.soft1851.used.books.api.mapper")
@ServletComponentScan
public class UsedBooksApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(UsedBooksApiApplication.class, args);
    }

}
