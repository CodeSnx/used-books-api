package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.service.SysTypeService;
import org.springframework.web.bind.annotation.*;

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
@RequestMapping("/sysType")
public class SysTypeController {
    @Resource
    private SysTypeService sysTypeService;

    @PostMapping("/subtype")
    public List<Map<String,Object>> getType(){
        return sysTypeService.getType();
    }

    @PostMapping("/all")
    public List<Map<String,Object>> getBooksByType(){
        return sysTypeService.getBooksByType();
    }

}
