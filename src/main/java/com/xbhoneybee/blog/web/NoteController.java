package com.xbhoneybee.blog.web;

import com.xbhoneybee.blog.mapper.NoteMapper;
import com.xbhoneybee.blog.pojo.Note;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import static java.lang.Math.min;

@Controller
public class NoteController {


    @Autowired
    NoteMapper noteMapper;
    @RequestMapping("/updateNote/{note_id}")
    public String updateNote(HttpServletRequest request,@PathVariable int note_id,Model m){
        Note note=noteMapper.get(note_id);
        note.setContent(request.getParameter("test-editormd-markdown-doc"));
        note.setContentHTML(request.getParameter("test-editormd-html-code"));
        note.setSummary(note.getContentHTML().substring(0, min(400,note.getContent().length())));
        note.setLast_edit_time(new java.sql.Date(new java.util.Date().getTime()));
        note.setTitle(request.getParameter("T"));
        noteMapper.update(note);
        List<Note> cs= noteMapper.findexit();
        m.addAttribute("cs", cs);
        return "console";
    }
    @RequestMapping("/deleteNote/{note_id}")
    public String deleteNote(@PathVariable int note_id,Model m){
        noteMapper.delete(note_id);
        List<Note> cs= noteMapper.findexit();
        m.addAttribute("cs", cs);
        return "console";
    }
    @RequestMapping("/editNote/{note_id}")
    public String updateNote(@PathVariable int note_id,Model m){
        Note c= noteMapper.get(note_id);
        m.addAttribute("c", c);
        return "note_update";
    }
    @RequestMapping("/write")
    public String writeNote(){
        return "note_write";
    }

    @RequestMapping("/save")
    public String writeNote(HttpServletRequest rp, Model m) throws Exception {
        rp.setCharacterEncoding( "utf-8" );
        Note note=new Note();
        note.setTitle(rp.getParameter("T"));
        note.setRead_times(0);
        note.setLast_edit_time(new java.sql.Date(new java.util.Date().getTime()));
        note.setContent(rp.getParameter("test-editormd-markdown-doc"));
        note.setContentHTML(rp.getParameter("test-editormd-html-code"));
        note.setSummary(note.getContentHTML().substring(0, min(400,note.getContent().length())));;
        noteMapper.save(note);
        List<Note> cs= noteMapper.findexit();
        m.addAttribute("cs", cs);
        return "console";
    }
    @RequestMapping("/showNote/{note_id}")
    public String showNote(@PathVariable int note_id, Model m) {
        Note c= noteMapper.get(note_id);
        m.addAttribute("c", c);
        noteMapper.addtimes(note_id);
        return "note_show";
    }
    @RequestMapping("/noteList")
    public String listNote(Model m) throws Exception {
        List<Note> cs= noteMapper.findexit();
        m.addAttribute("cs", cs);
        return "notelist";
    }
}
