package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.domain.entity.SysBuyBooks;
import com.soft1851.used.books.api.mapper.SysBuyBooksMapper;
import com.soft1851.used.books.api.mapper.SysShoppingListMapper;
import com.soft1851.used.books.api.service.SysBuyBooksService;
import lombok.extern.slf4j.Slf4j;
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
 * @since 2020-06-23
 */
@Service
@Slf4j
public class SysBuyBooksServiceImpl extends ServiceImpl<SysBuyBooksMapper, SysBuyBooks> implements SysBuyBooksService {
    @Resource
    private SysBuyBooksMapper sysBuyBooksMapper;

    @Resource
    private SysShoppingListMapper sysShoppingListMapper;

    @Override
    public void buyBook(SysBuyBooks sysBuyBooks) {
        if (sysBuyBooksMapper.getBalance(sysBuyBooks.getUserId()) >= (sysBuyBooksMapper.getPrice(sysBuyBooks.getBookId())*sysBuyBooksMapper.getDiscount(sysBuyBooks.getBookId())*0.1)) {
            sysBuyBooksMapper.buyBook(sysBuyBooks.getBookId(), sysBuyBooks.getUserId());
            sysBuyBooksMapper.updateQuantity(sysBuyBooks.getBookId(), sysBuyBooksMapper.getQuantity(sysBuyBooks.getBookId()) - 1);
            sysBuyBooksMapper.updateBalance(sysBuyBooks.getUserId(), sysBuyBooksMapper.getBalance(sysBuyBooks.getUserId()) - (sysBuyBooksMapper.getPrice(sysBuyBooks.getBookId()) * sysBuyBooksMapper.getDiscount(sysBuyBooks.getBookId()) * 0.1));
            sysShoppingListMapper.deleteBook(sysBuyBooks.getId());
        }else {
            log.info("余额不足");
        }
    }

    @Override
    public void exchangeBook(SysBuyBooks sysBuyBooks) {
        if (sysBuyBooksMapper.getIntegration(sysBuyBooks.getUserId()) >= sysBuyBooksMapper.selectIntegration(sysBuyBooks.getBookId())) {
            sysBuyBooksMapper.buyBook(sysBuyBooks.getBookId(), sysBuyBooks.getUserId());
            sysBuyBooksMapper.updateQuantity(sysBuyBooks.getBookId(), sysBuyBooksMapper.getQuantity(sysBuyBooks.getBookId()) - 1);
            sysBuyBooksMapper.updateIntegration(sysBuyBooks.getUserId(), sysBuyBooksMapper.getIntegration(sysBuyBooks.getUserId()) - sysBuyBooksMapper.selectIntegration(sysBuyBooks.getBookId()));
            sysShoppingListMapper.deleteBook(sysBuyBooks.getId());
        }else {
            log.info("剩余积分不足");
        }
    }

    @Override
    public void updateStatus(SysBuyBooks sysBuyBooks) {
        sysBuyBooksMapper.updateStatus(sysBuyBooks.getId(),sysBuyBooks.getStatus());
    }

    @Override
    public List<Map<String, Object>> getBooks(SysBuyBooks sysBuyBooks) {
        return sysBuyBooksMapper.getBooks(sysBuyBooks.getUserId());
    }
}
