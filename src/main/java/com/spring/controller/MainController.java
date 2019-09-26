package com.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @GetMapping(value = {"/", "/index"})
    public String home(Model model) {
        model.addAttribute("greed", "hello");
        return "index";
    }

}
