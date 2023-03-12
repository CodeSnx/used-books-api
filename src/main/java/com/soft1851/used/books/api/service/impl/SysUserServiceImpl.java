package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.common.ResultCode;
import com.soft1851.used.books.api.domain.dto.LoginDto;
import com.soft1851.used.books.api.domain.entity.SysUser;
import com.soft1851.used.books.api.exception.CustomException;
import com.soft1851.used.books.api.mapper.SysUserMapper;
import com.soft1851.used.books.api.service.SysUserService;
import com.soft1851.used.books.api.util.Md5Util;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;
import java.util.TreeMap;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-11
 */
@Service
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements SysUserService {
    @Resource
    private SysUserMapper sysUserMapper;

    @Override
    public Map<String, Object> login(LoginDto loginDto) {
        SysUser user = sysUserMapper.getSysUserByName(loginDto.getAccount());
        if (user != null){
            String pass = Md5Util.getMd5(loginDto.getPassword(),true,32) ;
            if (user.getPassword().equals(pass)){
                SysUser sysUser = sysUserMapper.selectByAccount(loginDto.getAccount());
                Map<String,Object> map = new TreeMap<>();
                map.put("user",sysUser);
                return map;
            }else {
                log.error("密码错误");
                throw new CustomException("密码错误", ResultCode.USER_PASSWORD_ERROR);
            }
        }else {
            log.error("账号不存在");
            throw new CustomException("账号不存在", ResultCode.USER_NOT_FOUND);
        }
    }

    @Override
    public void insertBalance(SysUser sysUser) {
        sysUserMapper.updateBalance(sysUser.getId(),sysUserMapper.getBalance(sysUser.getId())+sysUser.getBalance());
    }

    @Override
    public SysUser getSysUserById(int id) {
        return sysUserMapper.getSysUserById(id);
    }

}
