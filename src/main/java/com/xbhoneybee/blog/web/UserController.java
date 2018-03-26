package com.xbhoneybee.blog.web;
import com.xbhoneybee.blog.mapper.NoteMapper;
import com.xbhoneybee.blog.mapper.UserMapper;
import com.xbhoneybee.blog.pojo.Note;
import com.xbhoneybee.blog.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserMapper userMapper;
    @Autowired
    NoteMapper noteMapper;
    @RequestMapping("/login")
    public String login(HttpSession session,Model m){

        String user = (String) session.getAttribute("username");
        if(user==null)
        return "login";
        List<Note> cs= noteMapper.findexit();
        m.addAttribute("cs", cs);
        return "console";
    }
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("username");
        return "index";
    }
    @RequestMapping("/admin")
    public String listUser(HttpServletRequest request, Model m, HttpSession session) {
        List<User> us=userMapper.findAll();
        String ret="ok";
        m.addAttribute("state",ret);
        String username=request.getParameter("username");
        String pswd=request.getParameter("password");
        for(User u :us){
            if(u.getUser_id().equals(username)&&u.getUser_pswd().equals(pswd))
            {
                List<Note> cs= noteMapper.findexit();
                m.addAttribute("cs", cs);
                request.getSession().setAttribute("username", username);
                session.setAttribute("username", username);
                return "console";
            }
        }
        ret="fail";
        m.addAttribute("state",ret);
        return "login";
    }
}
