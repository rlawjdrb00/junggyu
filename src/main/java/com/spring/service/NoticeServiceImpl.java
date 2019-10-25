package com.spring.service;

import com.spring.common.Weather;
import com.spring.dto.Comment;
import com.spring.dto.Criteria;
import com.spring.dto.Notice;
import com.spring.mapper.NoticeMapper;
import com.sun.istack.internal.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.*;
import java.time.DateTimeException;
import java.util.ArrayList;
import java.util.Date;
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
    public List<Notice> getList(Criteria cri) {
        return mapper.getList(cri);
    }

    @Override
    public Notice view(Notice notice) {
        return mapper.view(notice);
    }

    @Override
    public void update(Notice notice) {
        mapper.update(notice);
    }

    @Override
    public void delete(Notice notice) {
        mapper.delete(notice);

    }

    @Override
    public int countBoardListTotal() {
        return mapper.countBoardList();
    }

    @Override
    public List<Comment> getCommentList(int idx) {
        return mapper.getCommentList(idx);
    }


}
