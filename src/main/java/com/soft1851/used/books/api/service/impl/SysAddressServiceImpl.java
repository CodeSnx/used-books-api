package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.domain.entity.SysAddress;
import com.soft1851.used.books.api.mapper.SysAddressMapper;
import com.soft1851.used.books.api.service.SysAddressService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
@Transactional(rollbackFor = Exception.class)
public class SysAddressServiceImpl extends ServiceImpl<SysAddressMapper, SysAddress> implements SysAddressService {
    @Resource
    private SysAddressMapper sysAddressMapper;

    @Override
    public Map<String, Object> getAddress(SysAddress sysAddress) {
        List<Map<String,Object>> maps = sysAddressMapper.getAddressById(sysAddress.getUserId());
        Map<String,Object> map = new TreeMap<>();
        map.put("address",maps);
        return map;
    }

    @Override
    public void insertAddress(SysAddress sysAddress) {
        if(sysAddress.getStatus()==true){
            //把该账户原来默认地址的status改为0
            sysAddressMapper.updateAddress2(sysAddress.getUserId(),false);
            //新增操作
            sysAddressMapper.insertAddress(sysAddress.getUserId(),sysAddress.getUserName(),sysAddress.getAddressA(),sysAddress.getAddressB(),sysAddress.getPhone(),sysAddress.getStatus());

        }else {
            sysAddressMapper.insertAddress(sysAddress.getUserId(),sysAddress.getUserName(),sysAddress.getAddressA(),sysAddress.getAddressB(),sysAddress.getPhone(),sysAddress.getStatus());
        }
//        sysAddress.getUserId(),sysAddress.getUserName(),sysAddress.getAddressA(),sysAddress.getAddressB(),sysAddress.getPhone(),sysAddress.getStatus()
    }

    @Override
    public void updateAddress(SysAddress sysAddress) {
        sysAddressMapper.updateAddress(sysAddress.getId(),sysAddress.getUserName(),sysAddress.getAddressA(),sysAddress.getAddressB(),sysAddress.getPhone(),sysAddress.getStatus());
    }

    @Override
    public void deleteAddress(SysAddress sysAddress) {
        sysAddressMapper.deleteAddress(sysAddress.getId());
    }
}
