package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.common.ResponseResult;
import com.soft1851.used.books.api.domain.entity.SysAddress;
import com.soft1851.used.books.api.service.SysAddressService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
@RestController
@RequestMapping("/sysAddress")
@Slf4j
public class SysAddressController {
    @Resource
    private SysAddressService sysAddressService;

    @PostMapping("/user")
    public Map<String,Object> selectAddress(SysAddress sysAddress){
        log.info(sysAddress.toString());
        return sysAddressService.getAddress(sysAddress);
    }

    @PostMapping("/insert")
    public ResponseResult insertAddress(SysAddress sysAddress){
        log.info((sysAddress.toString()));
        sysAddressService.insertAddress(sysAddress);
        return ResponseResult.success();
    }

    @PostMapping("/update")
    public ResponseResult updateAddress(SysAddress sysAddress){
        log.info(sysAddress.toString());
        sysAddressService.updateAddress(sysAddress);
        return ResponseResult.success();
    }

    @PostMapping("/delete")
    public ResponseResult deleteAddress(SysAddress sysAddress){
        log.info((sysAddress.toString()));
        sysAddressService.deleteAddress(sysAddress);
        return ResponseResult.success();
    }

}
