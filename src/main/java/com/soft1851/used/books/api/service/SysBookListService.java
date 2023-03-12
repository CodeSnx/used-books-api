package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.entity.SysBookList;

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
public interface SysBookListService extends IService<SysBookList> {
    /**
     *精选书单
     *
     * @return
     */
    List<Map<String,Object>> getBookList();

}
