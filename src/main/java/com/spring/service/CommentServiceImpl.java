package com.spring.service;

import com.spring.dto.Comment;
import com.spring.mapper.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper mapper;


    @Override
    public int addComment(Comment com) {
        return mapper.addComment(com);
    }

    @Override
    public int updateComment(Comment com) {
        return mapper.updateComment(com);
    }

    @Override
    public int deleteComment(Comment com) {
        return mapper.deleteComment(com);
    }


}
