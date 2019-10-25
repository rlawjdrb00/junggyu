package com.spring.service;

import com.spring.dto.Member;
import com.spring.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper mapper;

    @Override
    public void memberSignUp(Member member) {
        mapper.memberSignUp(member);
    }

    @Override
    public int checkUserId(String inputId){
        int idCnt = mapper.checkUserId(inputId.replace("=",""));
        return idCnt;
    }

    @Override
    public boolean login(Member member, HttpSession session) {

        Member member2 = viewMember(member);
        if(member2 != null){
            session.setAttribute("member",member2);
            return true;
        }
        return false;
    }

    @Override
    public  Member viewMember(Member member){
        return mapper.memberInfo(member);
    }


}
