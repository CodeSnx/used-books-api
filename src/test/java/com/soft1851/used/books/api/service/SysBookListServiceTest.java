package com.soft1851.used.books.api.service;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class SysBookListServiceTest {
    @Resource
    private SysBookListService sysBookListService;

    @Test
    void getBookList() {
//        System.out.println(sysBookListService.getBookList());
        sysBookListService.getBookList().forEach(System.out::println);
    }

    @Test
    void testGetBookList() {
    }
}