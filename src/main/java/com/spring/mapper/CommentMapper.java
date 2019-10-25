package com.spring.mapper;

import com.spring.dto.Comment;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentMapper {
    int addComment(Comment com);
    int updateComment(Comment com);
    int deleteComment(Comment com);
}
