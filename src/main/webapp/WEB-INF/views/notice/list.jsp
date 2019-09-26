<%--
  Created by IntelliJ IDEA.
  User: Tester
  Date: 2019-08-30
  Time: 오후 6:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<head>
    <title>Title</title>

</head>
<body>
<jsp:include page="../tab/header.jsp"/>

<table class="table">
    <thead class="black white-text">
    <tr>
        <th scope="col">글 번호</th>
        <th scope="col">제목</th>
        <th scope="col">작성자</th>
        <th scope="col">작성날짜</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${noticeList}" var="notice" varStatus="status">

    <tr>
        <th scope="row">${status.count}</th>
        <td><a href="view/${notice.idx}">${notice.title}</a></td>
        <td>${notice.writer}</td>
        <td>${notice.regdata}</td>
    </tr>
        </c:forEach>
    </tbody>
</table>

<tr>
    <a href="<%=request.getContextPath()%>/notice/add">글작성</a>
</tr>

<jsp:include page="../tab/footer.jsp"/>

