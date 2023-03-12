package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.common.ResponseResult;
import com.soft1851.used.books.api.domain.entity.SysBuyBooks;
import com.soft1851.used.books.api.service.SysBuyBooksService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-23
 */
@RestController
@RequestMapping("/sysBuyBooks")
@Slf4j
public class SysBuyBooksController {
    @Resource
    private SysBuyBooksService sysBuyBooksService;

    @PostMapping("/insert")
    public ResponseResult buyBook(SysBuyBooks sysBuyBooks){
        log.info(sysBuyBooks.toString());
        sysBuyBooksService.buyBook(sysBuyBooks);
        return ResponseResult.success();
    }

    @PostMapping("/exchange")
    public ResponseResult exchangeBook(SysBuyBooks sysBuyBooks){
        log.info(sysBuyBooks.toString());
        sysBuyBooksService.exchangeBook(sysBuyBooks);
        return ResponseResult.success();
    }

    @PostMapping("/status")
    public ResponseResult updateStatus(SysBuyBooks sysBuyBooks){
        log.info(sysBuyBooks.toString());
        sysBuyBooksService.updateStatus(sysBuyBooks);
        return ResponseResult.success();
    }

    @PostMapping("/all")
    public List<Map<String,Object>> getBooks(SysBuyBooks sysBuyBooks){
        log.info(sysBuyBooks.toString());
        return sysBuyBooksService.getBooks(sysBuyBooks);
    }

}
