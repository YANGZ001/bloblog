package com.yangz.bloblog;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.yangz.bloblog.dao")
public class BloblogApplication {
    public static void main(String[] args) {
        SpringApplication.run(BloblogApplication.class, args);
    }
}
