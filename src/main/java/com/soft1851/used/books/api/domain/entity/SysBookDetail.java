package com.soft1851.used.books.api.domain.entity;

import java.math.BigDecimal;
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
@TableName("sys_book_detail")
public class SysBookDetail extends Model<SysBookDetail> {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @TableId("id")
    private Integer id;

    /**
     * 书单id
     */
    @TableField("book_list_id")
    private Integer bookListId;

    /**
     * 子类别id
     */
    @TableField("subtype_id")
    private Integer subtypeId;

    /**
     * 书名
     */
    @TableField("book_name")
    private String bookName;

    /**
     * 封面
     */
    @TableField("book_cover")
    private String bookCover;

    /**
     * 作者
     */
    @TableField("author")
    private String author;

    /**
     * 书籍简介
     */
    @TableField("introduction")
    private String introduction;

    /**
     * 原价
     */
    @TableField("price")
    private BigDecimal price;

    /**
     * 折扣
     */
    @TableField("discount")
    private BigDecimal discount;

    /**
     * 数量
     */
    @TableField("quantity")
    private Integer quantity;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
