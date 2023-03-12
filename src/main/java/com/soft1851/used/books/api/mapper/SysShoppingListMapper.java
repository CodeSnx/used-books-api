package com.soft1851.used.books.api.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.soft1851.used.books.api.domain.entity.SysShoppingList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

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
public interface SysShoppingListMapper extends BaseMapper<SysShoppingList> {
    /**
     * 根据书的id查询该书数量
     * @param bookId
     * @return
     */
    @Select("SELECT quantity FROM sys_book_detail WHERE id=#{bookId}")
    Integer getQuantity(@Param("bookId")Integer bookId);

    @Insert("INSERT INTO sys_shopping_list(user_id,book_id) VALUES (#{userId},#{bookId})")
    void insertBook(@Param("userId") Integer userId,@Param("bookId")Integer bookId);

    /**
     * 根据用户的id查询回收订单的信息
     * @param userId
     * @return
     */
    @Select("SELECT t1.book_name,t1.book_cover,t1.author,t1.price,t1.discount,b.id,b.book_id FROM sys_shopping_list b " +
            "LEFT JOIN sys_book_detail t1 " +
            "ON b.book_id = t1.id " +
            "WHERE b.user_id = #{userId}")
    List<Map<String,Object>> getBook(int userId);

    /**
     * 根据id删除书籍（书袋）
     * @param id
     */
    @Delete("DELETE FROM sys_shopping_list WHERE id = #{id}")
    void deleteBook(@Param("id")Integer id);

}
