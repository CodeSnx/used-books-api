package com.soft1851.used.books.api.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_subtype")
public class SysSubtype extends Model<SysSubtype> {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @TableId("id")
    private Integer id;

    /**
     * 类别id
     */
    @TableField("type_id")
    private Integer typeId;

    /**
     * 子类别名
     */
    @TableField("subtype_name")
    private String subtypeName;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
