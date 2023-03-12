package com.soft1851.used.books.api.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.soft1851.used.books.api.domain.entity.SysBuyBooks;
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
 * @since 2020-06-23
 */
public interface SysBuyBooksMapper extends BaseMapper<SysBuyBooks> {

    @Insert("INSERT INTO sys_buy_books(book_id,user_id,status) VALUES (#{bookId},#{userId},0)")
    void buyBook(@Param("bookId")Integer bookId,@Param("userId")Integer userId);
    /**
     * 更改订单状态
     * @param id
     * @param status
     */
    @Update("UPDATE sys_buy_books SET status=#{status} WHERE id = #{id}")
    void updateStatus(@Param("id")Integer id, @Param("status")Integer status);

    /**
     * 根据书的id查询该书还剩多少本
     * @param bookId
     * @return
     */
    @Select("SELECT quantity From sys_book_detail WHERE id = #{bookId}")
    Integer getQuantity(@Param("bookId")Integer bookId);

    /**
     * 根据书的id查询价格
     * @param bookId
     * @return
     */
    @Select("SELECT price From sys_book_detail WHERE id = #{bookId}")
    Double getPrice(@Param("bookId")Integer bookId);

    /**
     * 根据书的id查询积分
     * @param bookId
     * @return
     */
    @Select("SELECT integration From sys_book_detail WHERE id = #{bookId}")
    Integer selectIntegration(@Param("bookId")Integer bookId);

    /**
     * 根据书的id查询折扣
     * @param bookId
     * @return
     */
    @Select("SELECT discount From sys_book_detail WHERE id = #{bookId}")
    Double getDiscount(@Param("bookId")Integer bookId);

    /**
     * 根据用户id查询余额
     * @param userId
     * @return
     */
    @Select("SELECT balance From sys_user WHERE id = #{userId}")
    Double getBalance(@Param("userId")Integer userId);

    /**
     * 根据用户id查询积分额度
     * @param userId
     * @return
     */
    @Select("SELECT integration From sys_user WHERE id = #{userId}")
    Integer getIntegration(@Param("userId")Integer userId);

    /**
     * 更新书籍数量
     * @param bookId
     */
    @Update("UPDATE sys_book_detail SET quantity=#{quantity} WHERE id = #{bookId} ")
    void updateQuantity(@Param("bookId")Integer bookId,@Param("quantity")Integer quantity);

    /**
     * 根据用户id更改余额
     * @param userId
     * @param balance
     */
    @Update("UPDATE sys_user SET balance=#{balance} WHERE id = #{userId} ")
    void updateBalance(@Param("userId")Integer userId,@Param("balance")Double balance);

    /**
     * 根据用户id更改余额
     * @param userId
     * @param integration
     */
    @Update("UPDATE sys_user SET integration=#{integration} WHERE id = #{userId} ")
    void updateIntegration(@Param("userId")Integer userId,@Param("integration")Integer integration);

    /**
     * 购买订单查询
     * @param userId
     * @return
     */
    @Select("SELECT a.book_name,a.author,a.book_cover,a.price,a.discount,b.id,b.status FROM sys_book_detail a " +
            "LEFT JOIN sys_buy_books b " +
            "ON a.id = b.book_id " +
            "WHERE b.user_id = #{userId} ")
    List<Map<String,Object>> getBooks(@Param("userId")Integer userId);

}
