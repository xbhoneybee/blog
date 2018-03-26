package com.xbhoneybee.blog.web;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class HelloController {

    @RequestMapping("/index")
    public String Index() throws Exception {
        return "index";
    }
    @RequestMapping("/")
    public String Face() throws Exception {
        return "index";
    }
    @RequestMapping("/aboutme")
    public String Aboutme() throws Exception {
        return "aboutme";
    }
}