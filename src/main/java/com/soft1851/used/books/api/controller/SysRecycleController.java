package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.common.ResponseResult;
import com.soft1851.used.books.api.domain.entity.SysRecycle;
import com.soft1851.used.books.api.service.SysRecycleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
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
@RequestMapping("/sysRecycle")
@Slf4j
public class SysRecycleController {
    @Resource
    private SysRecycleService sysRecycleService;

    @PostMapping("/all")
    public Map<String,Object> getRecycle(SysRecycle sysRecycle){
        log.info(sysRecycle.toString());
        return sysRecycleService.getRecycle(sysRecycle);
    }

    @PostMapping("/insert")
    public ResponseResult insertRecycle(SysRecycle sysRecycle){
        log.info((sysRecycle.toString()));
        sysRecycleService.updateIntegration(sysRecycle);
        return ResponseResult.success();
    }

    @PostMapping("/status")
    public ResponseResult updateStatus(SysRecycle sysRecycle){
        log.info((sysRecycle.toString()));
        sysRecycleService.updateStatus(sysRecycle);
        return ResponseResult.success();
    }
}
