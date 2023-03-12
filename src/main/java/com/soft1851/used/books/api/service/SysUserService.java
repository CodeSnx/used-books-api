package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.dto.LoginDto;
import com.soft1851.used.books.api.domain.entity.SysUser;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-11
 */
public interface SysUserService extends IService<SysUser> {
    /**
     * 登录
     *
     * @param loginDto
     * @return boolean
     */
    Map<String,Object> login(LoginDto loginDto);

    /**
     * 充值
     * @param sysUser
     */
    void insertBalance(SysUser sysUser);

    /**
     * 根据用户id查询用户信息
     * @param id
     * @return
     */
    SysUser getSysUserById(int id);


}
