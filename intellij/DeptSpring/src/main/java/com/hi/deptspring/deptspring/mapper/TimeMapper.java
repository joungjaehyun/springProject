package com.hi.deptspring.deptspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

@Mapper
public interface TimeMapper {

    String getTime();
}
