package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.entity.SysBuyBooks;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-23
 */
@Transactional(rollbackFor = Exception.class)
public interface SysBuyBooksService extends IService<SysBuyBooks> {
    /**
     * 买书
     * @param sysBuyBooks
     */
    void buyBook(SysBuyBooks sysBuyBooks);

    /**
     * 积分兑换
     * @param sysBuyBooks
     */
    void exchangeBook(SysBuyBooks sysBuyBooks);

    /**
     * 状态更改
     * @param sysBuyBooks
     */
    void updateStatus(SysBuyBooks sysBuyBooks);

    /**
     * 获取购买订单信息
     * @param sysBuyBooks
     * @return
     */
    List<Map<String,Object>> getBooks(SysBuyBooks sysBuyBooks);



}
