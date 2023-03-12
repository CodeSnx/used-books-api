package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.common.ResponseResult;
import com.soft1851.used.books.api.domain.entity.SysShoppingList;
import com.soft1851.used.books.api.service.SysShoppingListService;
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
 * @since 2020-06-16
 */
@RestController
@RequestMapping("/sysShoppingList")
@Slf4j
public class SysShoppingListController {
    @Resource
    private SysShoppingListService sysShoppingListService;

    @PostMapping("/insert")
    public ResponseResult insertBook(SysShoppingList sysShoppingList){
        log.info(sysShoppingList.toString());
        sysShoppingListService.insertBook(sysShoppingList);
        return ResponseResult.success();
    }

    @PostMapping("/all")
    public List<Map<String,Object>> getBook(SysShoppingList sysShoppingList) {
        log.info(sysShoppingList.toString());
        return sysShoppingListService.getBook(sysShoppingList.getUserId());
    }

    @PostMapping("/delete")
    public ResponseResult deleteBook(SysShoppingList sysShoppingList){
        log.info(sysShoppingList.toString());
        sysShoppingListService.deleteBook(sysShoppingList);
        return ResponseResult.success();
    }
}
