package com.yangz.bloblog;

import com.yangz.bloblog.dao.AdminUserMapper;
import com.yangz.bloblog.service.AdminUserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BloblogApplicationTests {
    @Autowired
    AdminUserService adminUserService;

    @Test
    void contextLoads() {
    }

    @Test
    void adminTest() {
        String username = "admin";
        String password = "123";
        System.out.println(adminUserService.login(username, password));
    }
}
