package com.soft1851.used.books.api.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.soft1851.used.books.api.domain.entity.SysRecycle;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
public interface SysRecycleMapper extends BaseMapper<SysRecycle> {
    /**
     * 根据用户id查询recycle表所有信息
     * @param userId
     * @return
     */
    @Select("SELECT * FROM sys_recycle WHERE user_id = #{userId}")
    List<Map<String,Object>> getRecycleById(@Param("userId")Integer userId);

    /**
     * 根据用户id查询user表积分信息
     * @param userId
     * @return
     */
    @Select("SELECT integration FROM sys_user WHERE id = #{userId}")
    Integer getIntegration(@Param("userId")Integer userId);

    /**
     * 根据用户id更新用户的积分信息
     * @param userId
     * @param integration
     */
    @Update("UPDATE sys_user SET integration=#{integration} WHERE id = #{userId}")
    void updateIntegration(@Param("userId")Integer userId,@Param("integration")Integer integration);

    /**
     * 添加回收订单
     * @param userId
     * @param addressId
     * @param bookNumber
     * @param recycleTime
     */
    @Insert("INSERT INTO sys_recycle(user_id,address_id,book_number,recycle_time,status) VALUES(#{userId},#{addressId},#{bookNumber},#{recycleTime},0)")
    void insertRecycle(@Param("userId")Integer userId, @Param("addressId")Integer addressId, @Param("bookNumber")String bookNumber,@Param("recycleTime")String recycleTime);

    /**
     * 更改订单状态
     * @param id
     * @param status
     */
    @Update("UPDATE sys_recycle SET status=#{status} WHERE id = #{id}")
    void updateStatus(@Param("id")Integer id,@Param("status")Integer status);
}
