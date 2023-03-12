package com.soft1851.used.books.api.service;

import com.soft1851.used.books.api.domain.dto.SelectDto;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class SysBookDetailServiceTest {
    @Resource
    private SysBookDetailService sysBookDetailService;

    @Test
    void selectBookByName() {
        SelectDto selectDto = SelectDto.builder()
                .Author("全")
                .bookName("全")
                .build();
        System.out.println(sysBookDetailService.selectBookByName(selectDto));
    }
}