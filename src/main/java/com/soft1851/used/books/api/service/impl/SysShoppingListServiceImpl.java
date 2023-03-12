package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.domain.entity.SysShoppingList;
import com.soft1851.used.books.api.mapper.SysShoppingListMapper;
import com.soft1851.used.books.api.service.SysShoppingListService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
@Service
public class SysShoppingListServiceImpl extends ServiceImpl<SysShoppingListMapper, SysShoppingList> implements SysShoppingListService {
    @Resource
    private SysShoppingListMapper sysShoppingListMapper;

    @Override
    public void insertBook(SysShoppingList sysShoppingList) {
        sysShoppingListMapper.insertBook(sysShoppingList.getUserId(),sysShoppingList.getBookId());
    }

    @Override
    public List<Map<String,Object>> getBook(int userId) {
       return sysShoppingListMapper.getBook(userId);
    }

    @Override
    public void deleteBook(SysShoppingList sysShoppingList) {
        sysShoppingListMapper.deleteBook(sysShoppingList.getId());
    }
}
