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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="../tab/header.jsp"/>

<div class="container">
<table class="table table-hover">
    <thead>
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
        <td>${notice.regdate}</td>
    </tr>
        </c:forEach>

    </tbody>
</table>

    </hr>
    <c:if test="${member.userId !=null }">
    <a href="<%=request.getContextPath()%>/notice/add" class="btn float-right">글작성</a>
    </c:if>
    <div class="text-center">
<ul class="pagination  justify-content: center; ">
    <c:if test="${pageMaker.prev }">
        <li class="page-item">
            <a href='<c:url value="/notice/list?page=${pageMaker.startPage-1 }"/>'></a>
        </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
        <li class="page-item">
            <a href='<c:url value="/notice/list?page=${idx }"/>'><i class="fa">${idx }</i></a>
        </li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
        <li class="page-item">
            <a href='<c:url value="/notice/list?page=${pageMaker.endPage+1 }"/>'></a>
        </li>
    </c:if>
        </ul>
    </div>
</div>


<jsp:include page="../tab/footer.jsp"/>

