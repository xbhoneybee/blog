package com.xbhoneybee.blog.pojo;

public class User {
    private String user_id;
    private String user_email;
    private String user_pswd;
    public String getUser_id(){
        return user_id;
    }
    public void setUser_id(String id){
        user_id=id;
    }
    public String getUser_email(){ return user_email; }
    public void setUser_email(String email){user_email=email; }
    public String getUser_pswd(){ return user_pswd; }
    public void setUser_pswd(String pswd){
             user_pswd=pswd;
         }
}
