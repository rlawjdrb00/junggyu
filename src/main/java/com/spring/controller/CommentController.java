package com.spring.controller;

import com.spring.dto.Comment;
import com.spring.service.CommentService;
import com.spring.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.Map;
@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private NoticeService noticeSerivce;


    @PostMapping(value ="/addComment")
    public @ResponseBody Comment addComment(@RequestParam Map<String,Object >params){
        Comment com = new Comment();
        com.setBoardIdx(Integer.parseInt((String) params.get("idx")));
        com.setContents((String) params.get("contents"));
        com.setWriter((String) params.get("userId"));
        int commentIdx = commentService.addComment(com);
        return com;
    }

    @PostMapping(value="/commentUpdate")
    @ResponseBody
    public Comment commentUpdate(@RequestParam Map<String,Object> params){
        Comment com = new Comment();
        com.setIdx(Integer.parseInt((String) params.get("boardIdx")));
        com.setContents((String) params.get("contents"));
        int commentUpdate = commentService.updateComment(com);
        return com;

    }

    @PostMapping(value ="/commentUpdateView")
    @ResponseBody
    public Comment commentUpdateView(@RequestParam Map<String, Object> params){
        Comment com = new Comment();
        com.setIdx(Integer.parseInt((String) params.get("boardIdx")));
        com.setContents((String) params.get("contents"));
        com.setWriter((String) params.get("userId"));
        return com;

    }

    @PostMapping(value= "/commentDelete")
    public Comment commentDelete(@RequestParam Map<String,Object> params){
        Comment com = new Comment();
        com.setIdx(Integer.parseInt((String) params.get("boardIdx")));
        com.setContents((String) params.get("contents"));
        int commentDelete =commentService.deleteComment(com);
        return com;
    }

}