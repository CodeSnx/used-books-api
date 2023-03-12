package com.soft1851.used.books.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.soft1851.used.books.api.domain.entity.SysBookDetail;
import com.soft1851.used.books.api.domain.entity.SysSubtype;
import com.soft1851.used.books.api.domain.entity.SysType;
import com.soft1851.used.books.api.mapper.SysBookDetailMapper;
import com.soft1851.used.books.api.mapper.SysSubtypeMapper;
import com.soft1851.used.books.api.mapper.SysTypeMapper;
import com.soft1851.used.books.api.service.SysTypeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-08
 */
@Service
@Transactional(rollbackFor = RuntimeException.class)
@Slf4j
public class SysTypeServiceImpl extends ServiceImpl<SysTypeMapper, SysType> implements SysTypeService {
    @Resource
    private SysTypeMapper sysTypeMapper;

    @Resource
    private SysSubtypeMapper sysSubtypeMapper;

    @Resource
    private SysBookDetailMapper sysBookDetailMapper;

    @Override
    public List<Map<String,Object>> getType() {
        QueryWrapper<SysType> queryWrapper = new QueryWrapper<>();
        List<Map<String,Object>> sysTypes = sysTypeMapper.selectMaps(queryWrapper);
        sysTypes.forEach(sysType -> {
            QueryWrapper<SysSubtype> sysSubtypeQueryWrapper = new QueryWrapper<>();
            sysSubtypeQueryWrapper.eq("type_id",sysType.get("id").toString());
            List<Map<String,Object>> sysSubtypes =sysSubtypeMapper.selectMaps(sysSubtypeQueryWrapper);
            sysType.put("typeChild",sysSubtypes);
            sysSubtypes.forEach(sysSubtype -> {
                QueryWrapper<SysBookDetail> sysBookDetailQueryWrapper = new QueryWrapper<>();
                sysBookDetailQueryWrapper.eq("subtype_id",sysSubtype.get("id").toString());
                List<SysBookDetail> sysBookDetails = sysBookDetailMapper.selectList(sysBookDetailQueryWrapper);
                sysSubtype.put("subtypeChild",sysBookDetails);
            });

        });
        return sysTypes;
    }

    @Override
    public List<Map<String, Object>> getBooksByType() {
        QueryWrapper<SysType> queryWrapper = new QueryWrapper<>();
        List<Map<String,Object>> sysTypes = sysTypeMapper.selectMaps(queryWrapper);
        sysTypes = sysTypes.subList(0, 5);
        sysTypes.forEach(sysType -> {
            List<Map<String, Object>> books = sysTypeMapper.getBooksByType(Integer.parseInt(sysType.get("id").toString()));
            sysType.put("books", books);
        });
        return sysTypes;
    }

}
