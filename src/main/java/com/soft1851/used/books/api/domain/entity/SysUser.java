package com.soft1851.used.books.api.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.math.BigDecimal;

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
@TableName("sys_user")
public class SysUser extends Model<SysUser> {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @TableId("id")
    private Integer id;

    /**
     * 昵称
     */
    @TableField("nickname")
    private String nickname;

    /**
     * 账号
     */
    @TableField("account")
    private String account;

    /**
     * 密码
     */
    @TableField("password")
    private String password;

    /**
     * 头像
     */
    @TableField("avatar")
    private String avatar;

    /**
     * 地址
     */
    @TableField("address")
    private String address;

    /**
     * 余额
     */
    @TableField("balance")
    private Double balance;

    /**
     * 优惠券
     */
    @TableField("discount_coupon")
    private BigDecimal discountCoupon;

    /**
     * 积分
     */
    @TableField("integration")
    private Integer integration;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
