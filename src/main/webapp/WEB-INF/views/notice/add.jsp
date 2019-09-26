<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Tester
  Date: 2019-09-10
  Time: 오후 4:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>noticeWriteForm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="../tab/header.jsp"/>
<div class="container">
    <table class="table table-bordered">
        <thead>
        <caption> 글쓰기 </caption>
        </thead>
        <tbody>
        <%--<form action="<%=request.getContextPath()%>/notice/list" method="post">--%>
        <form:form modelAttribute="notice" action="/notice/add">
            <tr>
                <th>제목: </th>
                <%--<td><form:input type="text" placeholder="제목을 입력하세요. " name="title" id="title" class="form-control"/></td>--%>
                <td><form:input path="title" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><form:textarea path="content" class="form-control"/></td>
            </tr>
            <tr>
                <th>작성자: </th>
                <%--<td><input type="text" placeholder="작성자 " name="writer" id="writer" class="form-control"/></td>--%>
                <td><form:input path="writer" class="form-control" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록" class="pull-right"/>
                    <%--<input type="button" value="reset" class="pull-left"/>--%>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='/'"/>
                </td>
            </tr>
        <%--</form>--%>
        </form:form>
        </tbody>
    </table>
</div>

<jsp:include page="../tab/footer.jsp"/>
</body>
</html>
