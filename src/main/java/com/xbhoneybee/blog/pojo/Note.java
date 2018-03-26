package com.xbhoneybee.blog.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Note {
    private int note_id;
    private String title;
    private String summary;
    private String content;
    private String contentHTML;
    private int read_times;
    private Date last_edit_time;
    public int getNote_id(){
        return note_id;
    }
    public int getRead_times(){return read_times;}
    public String getTitle(){return title;}
    public String getSummary(){return summary;}
    public String getContent(){return content;}
    public String getContentHTML(){return contentHTML;}
    public String getLast_edit_time(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String s = sdf.format(last_edit_time);
        return s;
    }
    public void setNote_id(int id){note_id=id;}
    public void setTitle(String t){title=t;}
    public void setSummary(String a){summary=a;}
    public void setContent(String c){content=c;}
    public void setContentHTML(String c){contentHTML=c;}
    public void setRead_times(int rt){read_times=rt;}
    public void setLast_edit_time(Date time){last_edit_time=time;}
}
