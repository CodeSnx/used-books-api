package com.soft1851.used.books.api.domain.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
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
@TableName("sys_book_list")
public class SysBookList extends Model<SysBookList> {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 书单名
     */
    @TableField("book_list_name")
    private String bookListName;

    /**
     * 封面图
     */
    @TableField("cover")
    private String cover;

    /**
     * 书单描述
     */
    @TableField("description")
    private String description;

    /**
     * 书本数
     */
    @TableField("books_quantity")
    private Integer booksQuantity;

    /**
     * 收藏量
     */
    @TableField("like_quantity")
    private Integer likeQuantity;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
