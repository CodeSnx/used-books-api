package com.soft1851.used.books.api.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.soft1851.used.books.api.domain.entity.SysType;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-08
 */
public interface SysTypeMapper extends BaseMapper<SysType> {
    @Select("SELECT b.* FROM sys_book_detail b " +
            "LEFT JOIN sys_subtype t1 " +
            "ON t1.id = b.subtype_id " +
            "LEFT JOIN sys_type t2 " +
            "ON t2.id = t1.type_id " +
            "WHERE t2.id = #{id}")
    List<Map<String,Object>> getBooksByType(int id);

}
