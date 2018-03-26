package com.xbhoneybee.blog.mapper;

import com.xbhoneybee.blog.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface UserMapper {
    @Select("select * from user")
    List<User> findAll();
}
