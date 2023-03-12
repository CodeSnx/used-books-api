package com.soft1851.used.books.api.service;

import com.soft1851.used.books.api.domain.entity.SysAddress;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class SysAddressServiceTest {
    @Resource
    private SysAddressService sysAddressService;

    @Test
    void getAddress() {
        SysAddress sysAddress = SysAddress.builder()
                .userId(1802343215)
                .build();
        System.out.println(sysAddressService.getAddress(sysAddress));
    }

    @Test
    void insertAddress() {
        SysAddress sysAddress = SysAddress.builder()
                .userId(1802343215)
                .userName("席光平")
                .addressA("江苏省-南京市-栖霞区")
                .addressB("南京工业职业技术学院")
                .phone("18851137516")
                .status(false)
                .build();
        sysAddressService.insertAddress(sysAddress);
//        SysAddress sysAddress = new SysAddress();
//        System.out.println(sysAddressService.insertAddress(sysAddress.setUserId(1802343215),sysAddress.setUserName("xiguangping"),sysAddress.setAddressA("江苏省-南京市-栖霞区"),sysAddress.setAddressB("南京工业职业技术学院"),sysAddress.setPhone("17681082295"),sysAddress.setStatus(0)));
    }
}