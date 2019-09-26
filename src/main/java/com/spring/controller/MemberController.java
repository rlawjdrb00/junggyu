package com.spring.controller;

import com.spring.dto.Member;
import com.spring.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.web.bind.annotation.*;

@Controller
public class MemberController {


    @Autowired
    private MemberService memberService;


    @GetMapping(value="/signUp")
    public String signUp(){
        return "member/signUp";
    }
    @GetMapping(value ="/login")
    public String login(){
        return "member/login";
    }



//    @RequestMapping(value = "/signUpOk",method = RequestMethod.GET)
    @GetMapping(value="/signUpOk")
    public @ResponseBody Map<String , Object> signUpOk(Member member){
        memberService.memberSignUp(member);
        Map<String,Object> map= new HashMap<>();
        map.put("data","success");
        return map;
    }

    @PostMapping(value="/signUpOK")
    public String signUpOkForm(){

        return "redirect:/member/signUpOk";
    }




//    @PostMapping(value =\"/signUpIdCheck")
    @RequestMapping("signUpIdCheck")
    @ResponseBody
    public String signUpCheckID(@RequestBody String inputId){
        String checkRst;
        int idCnt = memberService.checkUserId(inputId);
        System.out.println("dddddddddd : " +idCnt);

            if(idCnt > 0)
                checkRst ="F";
            else
                checkRst ="S";

        System.out.println(checkRst+" : checkRst");
            return checkRst;
    }



}
