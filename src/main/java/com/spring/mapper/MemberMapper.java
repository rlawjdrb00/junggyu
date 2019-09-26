package com.spring.mapper;

import com.spring.dto.Member;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberMapper {

    public void memberSignUp(Member member);
    public int checkUserId(String inputId);

}