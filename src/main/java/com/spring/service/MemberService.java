package com.spring.service;

import com.spring.dto.Member;

public interface MemberService {

    public void memberSignUp(Member member);

    public int checkUserId(String inputId);

}
