package com.soft1851.used.books.api.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author xiguangping
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SelectDto {
    private String bookName;
    private String Author;
}
