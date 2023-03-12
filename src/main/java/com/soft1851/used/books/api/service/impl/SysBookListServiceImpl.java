package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.domain.entity.SysBookDetail;
import com.soft1851.used.books.api.domain.entity.SysBookList;
import com.soft1851.used.books.api.mapper.SysBookDetailMapper;
import com.soft1851.used.books.api.mapper.SysBookListMapper;
import com.soft1851.used.books.api.service.SysBookListService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-08
 */
@Service
@Transactional(rollbackFor = RuntimeException.class)
@Slf4j
public class SysBookListServiceImpl extends ServiceImpl<SysBookListMapper, SysBookList> implements SysBookListService {
    @Resource
    private SysBookListMapper sysBookListMapper;
    @Resource
    private SysBookDetailMapper sysBookDetailMapper;

    @Override
    public List<Map<String,Object>> getBookList() {
        QueryWrapper<SysBookList> queryWrapper =new QueryWrapper<>();
        List<Map<String,Object>> sysBookLists = sysBookListMapper.selectMaps(queryWrapper);
        sysBookLists.forEach(sysBookList -> {
            QueryWrapper<SysBookDetail> bookDetailQueryWrapper = new QueryWrapper<>();
            bookDetailQueryWrapper.eq("book_list_id",sysBookList.get("id").toString());
            List<SysBookDetail> sysBookDetails = sysBookDetailMapper.selectList(bookDetailQueryWrapper);
            sysBookList.put("bookListChild", sysBookDetails);
        });
        return sysBookLists;
    }

}
