package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.service.SysBookListService;
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
 * @since 2020-06-08
 */
@RestController
@RequestMapping("/sysBookList")
public class SysBookListController {
    @Resource
    private SysBookListService sysBookListService;

    @PostMapping(value = "/all")
    public List<Map<String,Object>> getBookList(){
        return sysBookListService.getBookList();
    }

}
