package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.domain.dto.SelectDto;
import com.soft1851.used.books.api.domain.entity.SysBookDetail;
import com.soft1851.used.books.api.mapper.SysBookDetailMapper;
import com.soft1851.used.books.api.service.SysBookDetailService;
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
public class SysBookDetailServiceImpl extends ServiceImpl<SysBookDetailMapper, SysBookDetail> implements SysBookDetailService {
    @Resource
    private SysBookDetailMapper sysBookDetailMapper;

    @Override
    public Map<String,Object> selectBookByName(SelectDto selectDto) {
//        System.out.println(selectDto);
        List<Map<String, Object>> sysBookDetail = sysBookDetailMapper.getBookByName(selectDto.getBookName(),selectDto.getAuthor());
//        System.out.println(sysBookDetail.toString());
        Map<String,Object> map= new TreeMap<>();
        map.put("book",sysBookDetail);
        return map;
    }

    @Override
    public List<Map<String, Object>> getBookDetailsByTypeId(int typeId) {
        return sysBookDetailMapper.getBookBySubType(typeId);
    }
}
