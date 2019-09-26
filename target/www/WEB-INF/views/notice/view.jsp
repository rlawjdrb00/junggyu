<%--
  Created by IntelliJ IDEA.
  User: Tester
  Date: 2019-09-18
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../tab/header.jsp"/>
<section class="content">
    <div class="box-header">
        <h3 class="box-title">게시판 상세보기</h3>
    </div>
    <%--<form:form path="/update/${notice.idx}">--%>
        <%--<form:form path="/update/${notice.idx}">--%>
    <form:form>
        <div class="box-body">
            <div class="form-group">
                <label>작성자</label>
                <div class="form-control" readonly="readonly">${notice.writer} </div>
            </div>
            <div class="form-group">
                <label>제목</label> <div class="form-control" readonly="readonly">${notice.title}</div>
            </div>
            <div class="form-group">
                <label>내용</label>
                <textarea class="form-control"  rows="10" readonly="readonly" name="content" id="content">${notice.content}</textarea>
            </div>
        </div>
        <div class="box-footer">

            <a href="/update/${notice.idx}"><button type="submit" class="btn btn-primary" name="update">수정</button></a>
            <a href="/notice/delete/${notice.idx}"><button type="button" class="btn btn-primary" name="delete">삭제</button></a>
        </div>

    </form:form>

</section>

<jsp:include page="../tab/footer.jsp"/>
</body>
</html>
