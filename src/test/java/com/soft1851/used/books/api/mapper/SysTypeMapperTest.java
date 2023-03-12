package com.soft1851.used.books.api.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class SysTypeMapperTest {
    @Resource
    private SysTypeMapper sysTypeMapper;

    @Test
    void getBooksByType() {
        System.out.println(sysTypeMapper.getBooksByType(1).size());
    }
}