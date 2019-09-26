package com.spring.service;

import com.spring.dto.Notice;

import java.util.List;


public interface NoticeService {

    public void add(Notice notice);

    public List<Notice> getList();

    public  Notice view(Notice notice);

    public void update(Notice notice);

    public void delete(Notice notice);
}
