package com.spring.controller;

import com.spring.dto.Member;
import com.spring.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {


    @Autowired
    private MemberService memberService;


    @GetMapping(value="/signUp")
    public String signUp(){
        return "member/signUp";
    }


    @PostMapping(value = "/signUp")
    public @ResponseBody Map<String , Object> signUpOk(Member member){
        memberService.memberSignUp(member);
        Map<String,Object> map= new HashMap<>();
        map.put("data","success");
        return map;
    }
    @GetMapping(value="/signUpOk")
    public String signUpOk() {return "member/signUpOk";}

    @PostMapping(value ="/signUpIdCheck")
    @ResponseBody
    public String signUpCheckID(@RequestBody String inputId ){
        String checkRst;
        int idCnt = memberService.checkUserId(inputId);

            if(idCnt > 0) {
                checkRst = "F";
            }else {
                checkRst = "S";
            }
            return checkRst;
    }


    @GetMapping(value ="/login")
    public String login(){
        System.out.println("GET");
        return "member/login";
    }

    @PostMapping(value ="/loginCheck")
    public @ResponseBody String loginCheck(@ModelAttribute Member member , HttpSession session){
        boolean result = memberService.login(member,session);

        if(result == true){
            return "success";
        }else{
            return "failure";
        }
    }

    @GetMapping(value ="/logout")
    public String logout(HttpSession session) {
        session.invalidate();

        return "redirect:/";
    }





}
