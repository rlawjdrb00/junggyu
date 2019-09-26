package com.spring.service;

import com.spring.dto.Notice;
import com.spring.mapper.NoticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper mapper;

    @Override
    public void add(Notice notice) {
        mapper.insert(notice);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Notice> getList() {
        return mapper.getList();
    }

    @Override
    public Notice view(Notice notice){
        return mapper.view(notice);
    }

    @Override
    public void update(Notice notice){
          mapper.update(notice);
    }

    @Override
    public void delete(Notice notice) {
        mapper.delete(notice);

    }
}
