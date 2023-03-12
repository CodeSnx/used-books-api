package com.soft1851.used.books.api.controller;


import com.soft1851.used.books.api.domain.dto.SelectDto;
import com.soft1851.used.books.api.domain.dto.SingleFieldDto;
import com.soft1851.used.books.api.domain.entity.SysBookDetail;
import com.soft1851.used.books.api.service.SysBookDetailService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
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
@RequestMapping("/sysBookDetail")
@Slf4j
public class SysBookDetailController {
    @Resource
    private SysBookDetailService sysBookDetailService;

    @PostMapping("/name")
    public Map<String,Object> selectBook(SelectDto selectDto) {
        log.info(selectDto.toString());
        return sysBookDetailService.selectBookByName(selectDto);
    }

    @PostMapping("/list")
    public List<SysBookDetail> getAll() {
        return sysBookDetailService.list();
    }

    @PostMapping("/list/tyeId")
    public List<Map<String, Object>> getAllBooksByTypeId(@RequestBody SingleFieldDto singleFieldDto) {
        return sysBookDetailService.getBookDetailsByTypeId(Integer.parseInt(singleFieldDto.getFields().toString()));
    }

}
