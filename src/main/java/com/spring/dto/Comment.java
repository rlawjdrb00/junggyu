package com.spring.dto;

public class Comment {

    private int idx;
    private String contents;
    private int boardIdx;
    private String writer;



    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public int getBoardIdx() {
        return boardIdx;
    }

    public void setBoardIdx(int boardIdx) {
        this.boardIdx = boardIdx;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }


    @Override
    public String toString() {
        return "Comment{" +
                "idx=" + idx +
                ", contents='" + contents + '\'' +
                ", boardIdx=" + boardIdx +
                ", writer='" + writer + '\'' +
                '}' ;
    }
}