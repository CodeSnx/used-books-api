package com.soft1851.used.books.api.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.soft1851.used.books.api.domain.entity.SysBookDetail;
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
public interface SysBookDetailMapper extends BaseMapper<SysBookDetail> {
    @Select("SELECT book_name,author From sys_book_detail where book_name LIKE CONCAT('%',#{bookName},'%') OR author LIKE CONCAT('%',#{author},'%') ")
    List<Map<String,Object>> getBookByName(@Param("bookName") String bookName, @Param("author") String author );

    @Select(value = "SELECT b.* FROM sys_subtype s " +
            "LEFT JOIN sys_book_detail b " +
            "ON b.subtype_id = s.id " +
            "WHERE s.type_id = #{typeId}")
    List<Map<String, Object>> getBookBySubType(int typeId);
}
