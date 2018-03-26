package com.xbhoneybee.blog.mapper;

import com.xbhoneybee.blog.pojo.Note;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface NoteMapper {
    @Select("select * from note order by note_id desc")
    List<Note> findAll();

    @Select("select * from note where note_id > 0 order by note_id desc")
    List<Note> findexit();

    @Select("select * from note where note_id= #{note_id} ")
    Note get(int note_id);

    @Insert(" insert into note (title,summary,content,last_edit_time,contentHTML ) values (#{title},#{summary},#{content},#{last_edit_time},#{contentHTML}) ")
    int save(Note note);

    @Update(" update note set note_id=-note_id where note_id= #{note_id} ")
    void delete(int note_id);

    @Update("update note set title=#{title},content=#{content},summary=#{summary},last_edit_time=#{last_edit_time},contentHTML=#{contentHTML} where note_id=#{note_id} ")
    int update(Note note);

    @Update("update note set read_times=read_times+1 where note_id=#{note_id}")
    void addtimes(int note_id);
}
