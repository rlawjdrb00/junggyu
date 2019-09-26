package com.spring.mapper;

import com.spring.dto.Notice;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticeMapper {

    public void insert(Notice notice);

    public List<Notice> getList();

    public Notice view(Notice notice);

    public void update(Notice notice);

    public void delete(Notice notice);

}
