package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.entity.SysShoppingList;

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
public interface SysShoppingListService extends IService<SysShoppingList> {
    /**
     * 添加书（书袋）
     * @param sysShoppingList
     */
    void insertBook(SysShoppingList sysShoppingList);

    List<Map<String,Object>> getBook(int userId);

    /**
     * 书籍删除（书袋）
     * @param sysShoppingList
     */
    void deleteBook(SysShoppingList sysShoppingList);

}
