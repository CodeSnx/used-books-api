package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.domain.entity.SysRecycle;
import com.soft1851.used.books.api.mapper.SysRecycleMapper;
import com.soft1851.used.books.api.service.SysRecycleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
@Service
@Slf4j
public class SysRecycleServiceImpl extends ServiceImpl<SysRecycleMapper, SysRecycle> implements SysRecycleService {
    @Resource
    private SysRecycleMapper sysRecycleMapper;

    @Override
    public Map<String, Object> getRecycle(SysRecycle sysRecycle) {
        List<Map<String,Object>> maps = sysRecycleMapper.getRecycleById(sysRecycle.getUserId());
        Map<String,Object> map = new TreeMap<>();
        map.put("recycle",maps);
        return map;
    }

    @Override
    public void updateIntegration(SysRecycle sysRecycle) {
        sysRecycleMapper.insertRecycle(sysRecycle.getUserId(),sysRecycle.getAddressId(),sysRecycle.getBookNumber(),sysRecycle.getRecycleTime());
        if ("5-15本".equals(sysRecycle.getBookNumber())){
            sysRecycleMapper.updateIntegration(sysRecycle.getUserId(),sysRecycleMapper.getIntegration(sysRecycle.getUserId())+10);
        }else if ("15-25本".equals(sysRecycle.getBookNumber())){
            sysRecycleMapper.updateIntegration(sysRecycle.getUserId(),sysRecycleMapper.getIntegration(sysRecycle.getUserId())+20);
        }else if ("25-35本".equals(sysRecycle.getBookNumber())){
            sysRecycleMapper.updateIntegration(sysRecycle.getUserId(),sysRecycleMapper.getIntegration(sysRecycle.getUserId())+30);
        }else if ("35以上".equals(sysRecycle.getBookNumber())){
            sysRecycleMapper.updateIntegration(sysRecycle.getUserId(),sysRecycleMapper.getIntegration(sysRecycle.getUserId())+40);
        }else {
            log.info("传入数量错误");
        }
    }

    @Override
    public void updateStatus(SysRecycle sysRecycle) {
        sysRecycleMapper.updateStatus(sysRecycle.getId(),sysRecycle.getStatus());
    }
}
