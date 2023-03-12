package com.soft1851.used.books.api.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.*;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author wanghuanle
 * @since 2020-06-16
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_address")
public class SysAddress extends Model<SysAddress> {

    private static final long serialVersionUID = 1L;

    /**
     * 地址id
     */
    @TableId("id")
    private Integer id;

    /**
     * 用户id
     */
    @TableField("user_id")
    private Integer userId;

    /**
     * 收件人姓名
     */
    @TableField("user_name")
    private String userName;

    /**
     * 省市区
     */
    @TableField("address_a")
    private String addressA;

    /**
     * 详细地址
     */
    @TableField("address_b")
    private String addressB;

    /**
     * 手机号
     */
    @TableField("phone")
    private String phone;

    /**
     * 状态码
     */
    @TableField("status")
    private Boolean status;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
