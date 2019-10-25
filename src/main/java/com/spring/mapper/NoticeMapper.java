package com.spring.mapper;

import com.spring.common.Weather;
import com.spring.dto.Comment;
import com.spring.dto.Criteria;
import com.spring.dto.Notice;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticeMapper {

    public void insert(Notice notice);

    public List<Notice> getList(Criteria cri);

    public Notice view(Notice notice);

    public void update(Notice notice);

    public void delete(Notice notice);

    public int countBoardList();

    public List<Comment> getCommentList(int idx);



}
