package com.soft1851.used.books.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.soft1851.used.books.api.domain.entity.SysRecycle;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
public interface SysRecycleService extends IService<SysRecycle> {
    Map<String,Object> getRecycle(SysRecycle sysRecycle);

    void updateIntegration(SysRecycle sysRecycle);

    void updateStatus(SysRecycle sysRecycle);



}
