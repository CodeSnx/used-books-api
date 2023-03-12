package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.entity.SysType;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-08
 */
public interface SysTypeService extends IService<SysType> {
    /**
     *书籍分类
     *
     * @return
     */
    List<Map<String,Object>> getType();

    /**
     * 获取大分类下所有图书
     * @return
     */
    List<Map<String, Object>> getBooksByType();
}
