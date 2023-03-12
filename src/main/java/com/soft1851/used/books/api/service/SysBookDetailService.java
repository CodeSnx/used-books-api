package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.dto.SelectDto;
import com.soft1851.used.books.api.domain.entity.SysBookDetail;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
public interface SysBookDetailService extends IService<SysBookDetail> {
    /**
     *
     * @param selectDto
     * @return
     */
    Map<String,Object> selectBookByName(SelectDto selectDto);

    /**
     * 根据一级分类id查询所有分类下的书籍
     * @param typeId
     * @return
     */
    List<Map<String, Object>> getBookDetailsByTypeId(int typeId);



}
