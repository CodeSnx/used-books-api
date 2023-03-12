package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.entity.SysAddress;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
@Transactional(rollbackFor = Exception.class)
public interface SysAddressService extends IService<SysAddress> {
    /**
     * 获取地址信息
     * @param sysAddress
     * @return
     */
    Map<String,Object> getAddress(SysAddress sysAddress);

    /**
     * 添加地址
     * @param sysAddress
     * @return
     */
    void insertAddress(SysAddress sysAddress);

    /**
     * 更改地址
     * @param sysAddress
     */
    void updateAddress(SysAddress sysAddress);

    /**
     * 删除地址
     * @param sysAddress
     */
    void deleteAddress(SysAddress sysAddress);

}
