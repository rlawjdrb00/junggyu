<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Tester
  Date: 2019-09-10
  Time: 오후 4:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>noticeWriteForm</title>

</head>

<style>
    .noticeTextarea{
        height:430px!important;
    }
</style>

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
                <td ><form:input path="title" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><form:textarea path="content" class="form-control noticeTextarea" id="ir1" name="ir1"/></td>
            </tr>
            <tr>
                <th>작성자: </th>
                <%--<td><input type="text" placeholder="작성자 " name="writer" id="writer" class="form-control"/></td>--%>
                <td><form:input path="writer" class="form-control" readonly="readonly" value="${member.userId}"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" id="writeBtn" name="writebtn" value="등록" class="btn btn-primary"/>
                    <%--<input type="button" value="reset" class="pull-left"/>--%>
                    <input type="button" value="글 목록으로... " class="btn btn-primary" onclick="javascript:location.href='/'"/>
                </td>
            </tr>
        <%--</form>--%>
        </form:form>
        </tbody>
    </table>
</div>
</div>


<jsp:include page="../tab/footer.jsp"/>
</body>