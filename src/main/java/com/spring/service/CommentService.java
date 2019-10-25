package com.spring.service;

import com.spring.dto.Comment;

public interface CommentService {

    public int addComment(Comment com);

    public int updateComment(Comment com);

    public int deleteComment(Comment com);
}
