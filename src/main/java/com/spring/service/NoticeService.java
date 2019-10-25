package com.spring.service;

import com.spring.common.Weather;
import com.spring.dto.Comment;
import com.spring.dto.Criteria;
import com.spring.dto.Notice;

import java.util.List;


public interface NoticeService {

    public void add(Notice notice);

    public List<Notice> getList(Criteria cri);

    public  Notice view(Notice notice);

    public void update(Notice notice);

    public void delete(Notice notice);

    public int countBoardListTotal();

    public List<Comment> getCommentList(int idx);





}

