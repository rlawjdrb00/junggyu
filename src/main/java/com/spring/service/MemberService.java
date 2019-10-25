package com.spring.service;

import com.spring.dto.Member;

import javax.servlet.http.HttpSession;

public interface MemberService {

    public void memberSignUp(Member member);

    public int checkUserId(String inputId);

    public boolean login(Member member,HttpSession session);

    public Member viewMember(Member member);



}
