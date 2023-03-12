package com.soft1851.used.books.api.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.soft1851.used.books.api.domain.entity.SysUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-11
 */
public interface SysUserMapper extends BaseMapper<SysUser> {
    /**
     * 根据account查询管理员信息，包含其所有角色
     * @param account
     * @return
     */
    @Select("SELECT * FROM sys_user WHERE account = #{account}")
    SysUser selectByAccount(@Param("account") String account);

    /**
     * 根据name查询admin基础信息，用于个人信息，登录等
     * @param account
     * @return
     */
    @Select("SELECT * FROM sys_user WHERE account = #{account}")
    SysUser getSysUserByName(@Param("account") String account);

    /**
     * 根据id查询admin基础信息，用于个人信息修改
     * @param id
     * @return
     */
    @Select("SELECT id,account,password,address,balance,discount_coupon FROM sys_user WHERE id = #{id}")
    SysUser getSysUserById(@Param("id") Integer id);

    /**
     * 根据用户id查询余额
     * @param userId
     * @return
     */
    @Select("SELECT balance From sys_user WHERE id = #{userId}")
    Double getBalance(@Param("userId")Integer userId);

    /**
     * 余额充值
     * @param id
     * @param balance
     * @return
     */
    @Update("UPDATE sys_user SET balance = #{balance} WHERE id = #{id}")
    void updateBalance(@Param("id")Integer id,@Param("balance") Double balance);

}
