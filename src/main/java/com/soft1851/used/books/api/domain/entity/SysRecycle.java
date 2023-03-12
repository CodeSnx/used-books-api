package com.soft1851.used.books.api.domain.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDate;

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
@TableName("sys_recycle")
public class SysRecycle extends Model<SysRecycle> {

    private static final long serialVersionUID = 1L;

    /**
     * 订单id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 用户id
     */
    @TableField("user_id")
    private Integer userId;

    /**
     * 地址id
     */
    @TableField("address_id")
    private Integer addressId;

    /**
     * 书本数量
     */
    @TableField("book_number")
    private String bookNumber;

    /**
     * 下单时间
     */
    @TableField("time")
    private LocalDate time;

    /**
     * 预约时间
     */
    @TableField("recycle_time")
    private String recycleTime;

    /**
     * 状态码
     */
    @TableField("status")
    private Integer status;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
