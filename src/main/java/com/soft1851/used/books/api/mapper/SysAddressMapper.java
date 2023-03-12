package com.soft1851.used.books.api.mapper;

import com.soft1851.used.books.api.domain.entity.SysAddress;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
public interface SysAddressMapper extends BaseMapper<SysAddress> {
    @Select("SELECT * FROM sys_address WHERE user_id = #{userId}")
    List<Map<String,Object>> getAddressById(@Param("userId") Integer userId);

    @Insert("INSERT INTO sys_address(user_id,user_name,address_a,address_b,phone,status) values(#{userId},#{userName},#{addressA},#{addressB},#{phone},#{status})")
    void insertAddress(@Param("userId") Integer userId,@Param("userName") String userName,@Param("addressA")String addressA,@Param("addressB")String addressB,@Param("phone")String phone,@Param("status")Boolean status);

    @Update("UPDATE sys_address SET user_name = #{userName}, address_a = #{addressA},address_b=#{addressB},phone=#{phone},status=#{status} WHERE id = #{id}")
    void updateAddress(@Param("id")Integer id,@Param("userName") String userName,@Param("addressA")String addressA,@Param("addressB")String addressB,@Param("phone")String phone,@Param("status")Boolean status);

    @Update("UPDATE sys_address SET status=#{status} WHERE user_id = #{userId}")
    void updateAddress2(@Param("userId")Integer userId,@Param("status")Boolean status);


    @Delete("DELETE FROM sys_address WHERE id = #{id}")
    void deleteAddress(@Param("id")Integer id);
}
