package com.soft1851.used.books.api.service;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class SysTypeServiceTest {
    @Resource
    private SysTypeService sysTypeService;

    @Test
    void getSubtype() {
        sysTypeService.getType().forEach(System.out::println);
    }
}