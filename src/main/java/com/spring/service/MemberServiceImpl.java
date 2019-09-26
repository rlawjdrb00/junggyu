package com.spring.service;

import com.spring.dto.Member;
import com.spring.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper mapper;

    @Override
    public void memberSignUp(Member member){
        mapper.memberSignUp(member);
    }

    @Override
    public int checkUserId(String inputId){
        int idCnt = mapper.checkUserId(inputId);
        return idCnt;
    }

}
