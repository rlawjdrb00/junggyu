package com.spring.controller;

import com.spring.dto.Notice;
import com.sun.org.glassfish.gmbal.ParameterNames;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.spring.service.NoticeService;

import java.util.List;

@Controller
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    private NoticeService service;

    @GetMapping(value = "/add")
    public String addForm(Model model) {
        model.addAttribute("notice", new Notice());
        return "notice/add";
    }

    @PostMapping(value = "/add")
    public String add(@ModelAttribute("notice") Notice notice) {
        service.add(notice);
        return "redirect:/notice/list";
    }

    @GetMapping(value = "/list")
    public String list(Model model) {
        List<Notice> noticeList = service.getList();
        model.addAttribute("noticeList", noticeList);
        return "notice/list";
    }

    @PostMapping(value = "/list")
    public String listForm(@ModelAttribute("notice") Notice notice) {

        System.out.println("list Post");
        return "redirect:/notice/list";
    }

    @GetMapping(value ="/view/{idx:.+}")
    public String view(Notice notice , Model model){
        Notice notice2 = service.view(notice);
        model.addAttribute("notice",notice2);
        return "notice/view";
    }

    @PostMapping(value="/view/{idx:.+}")
    public String viewUpdate(@ModelAttribute("notice") Notice notice ,Model model){
        Notice notice2 = service.view(notice);
        model.addAttribute("notice",notice2);
        return "/notice/viewUpdate";
    }
    @PostMapping(value="/update/{idx:.+}")
    public String update(Notice notice,Model model){
        service.update(notice);
        model.addAttribute("notice",notice);
        return "redirect:/notice/view/{idx}";
    }

    @GetMapping(value="/delete/{idx:.+}")
    public String delete(Notice notice){

        service.delete(notice);
        return "redirect:/notice/list";
    }



}



