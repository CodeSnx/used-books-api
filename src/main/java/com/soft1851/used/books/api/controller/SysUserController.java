package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.common.ResponseResult;
import com.soft1851.used.books.api.domain.dto.LoginDto;
import com.soft1851.used.books.api.domain.entity.SysUser;
import com.soft1851.used.books.api.service.SysUserService;
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
 * @since 2020-06-11
 */
@RestController
@RequestMapping("/sysUser")
@Slf4j
public class SysUserController {
    @Resource
    private SysUserService sysUserService;

    @PostMapping("/login")
    public Map login(LoginDto loginDto) {
        log.info(loginDto.toString());
        return sysUserService.login(loginDto);
    }

    @PostMapping("/balance")
    public ResponseResult insertBalance(SysUser sysUser){
        log.info(sysUser.toString());
        sysUserService.insertBalance(sysUser);
        return ResponseResult.success();
    }

    @PostMapping("/all")
    public SysUser getSysUserById(int id){
        log.info(sysUserService.getSysUserById(id).toString());
        return sysUserService.getSysUserById(id);
    }


}
