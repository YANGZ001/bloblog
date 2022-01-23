package com.yangz.bloblog;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.yangz.bloblog.dao")// : does not work. Used @component at mapper alternatively.
@SpringBootApplication
public class BloblogApplication {
    public static void main(String[] args) {
        SpringApplication.run(BloblogApplication.class, args);
    }
}
