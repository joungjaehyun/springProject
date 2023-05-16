package com.hi.deptspring.deptspring.domain;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class DeptRegistRequest {

    private String dname;
    private String loc;
}
