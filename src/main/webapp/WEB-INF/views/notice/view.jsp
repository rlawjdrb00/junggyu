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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/reply.js"></script>

<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../tab/header.jsp"/>
<div class="container">
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
                <label>제목</label> <input class="form-control" readonly="readonly"value="${notice.title}"/>
            </div>
            <div class="form-group">
                <label>번호</label> <input class="form-control" readonly="readonly" id="idx" value="${notice.idx}"/>
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
    <div class="co1-lg-center text-lg-left">
        <c:forEach items="${result}" var="data" end="39">
            <div class="co1-lg-3 col-md-4 col-6">
                {data}
                    <p class="center"><h2>${data.dateTerm}</h2></p>
                    <p class="center"><h2>${data.pageNum}</h2></p>
                    <p class="center"><h2>rrrrrrrrrrrrr</h2></p>
            </div>
        </c:forEach>
    </div>

    <table>
        <h2>qweqweqweqwewq</h2>
    <c:forEach items="${weather}" var ="weather" varStatus="status">
        <tr>
        <td> ${weather.coValue}</td>
        <td> ${weather.dataTime}</td>
        <td> ${weather.mangName}</td>
        <td> ${weather.so2Value}</td>
        </tr>
    </c:forEach>
    </table>

    <table id="commentList">
        <tr>
            <Th scope="col">작성자</Th>
            <Th scope="col">글번호</Th>
            <Th scope="col">내용</Th>
            <c:forEach items="${commentList}" var ="comment" varStatus="status">
                <tr data-commentidx="${comment.idx}">
                    <td>${comment.writer}</td>
                    <td>${comment.idx}</td>
                    <td><input type="text" name="contents" value="${comment.contents}" readonly="readonly">
                        <c:if test="${member.userId eq 'admin' || member.userId eq comment.writer}">
                            <input type="button" value="수정" readonly="readonly" onclick="commentUpdateView(${comment.idx})">
                            <input type="button" value="삭제" readonly="readonly" onclick="commentDelete(${comment.idx})">
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tr>
    </table>
    <form action="">
        <input type="text" name="contents" id="contents"/>
        <input type="button" class="btn btn-outline btn-primary" value="댓글작성" onclick="noticeAddComment();" />
    </form>
</section>
</div>

<script type="text/javascript">

    function noticeAddComment() {
        var params = {};
        params.contents = $("#contents").val();
        params.idx =  $("#idx").val();
        params.userId = "${member.userId}";
        $.ajax({
            type:"POST",
            url:"/addComment",
            data:params,
            success : function (data){
                var html = '<tr data-commentidx='+ data.boardIdx+'>';
                alert(data.idx);
                html += '<td scope="row">'+params.userId+'</td>';
                html += '<td scope="row">'+data.boardIdx+'</td>';
                html += '<td scope="row"><input type="text" name="contents" value="'+data.contents+'">' +
                        '<input type="button" value="수정" onclick="commentUpdateView('+data.boardIdx+');"/>';
                html += '<input type="button" value="삭제" onclick="commentDelete('+data.boardIdx+');"></td>';
                html += '</tr>';

            },
            error : function (request, error) {
                console.log(error);
                alert(params +" : params");
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }

    function commentUpdateView(commentIdx) {
        var params={};
        params.boardIdx= commentIdx;
        params.contents = $("tr[data-commentIdx="+commentIdx + "] [ name=contents]").text();
        params.userId = "${member.userId}";

        $.ajax({
            type:"POST",
            url:"/commentUpdateView",
            data : params,
            success : function (data) {
               $("#commentUpdate").attr('type','hidden');
               $("#contentsUpdate").attr('type','hidden');
               $("#contentsWriter").attr('type','hidden');
               var html = '<tr data-commentidx='+ data.boardIdx+'>';
               html += '<td><input type="text" id="contentsWriter" value="'+params.userId+'"></td>';
               html += '<td><input type="text" name="contents" id="contentsUpdate" value="'+data.contents+'">'+
                       '<input id="commentUpdate" type="button" onclick="commentUpdate('+data.idx+');" value="수정완료"/></td>';
               $("#commentList").prepend(html);

            },error:function (error) {
                alert("ERROR : "+error);
            }
        });
    }

    function commentUpdate(commentIdx) {
        params = {};
        params.boardIdx = commentIdx;
        params.contents=$("#contentsUpdate").val();
        $.ajax({
            type:"POST",
            url:"/commentUpdate",
            data:params,
            success : function (data) {
                $("#commentUpdate").attr('type','hidden');
                $("#contentsUpdate").attr('type','hidden');
                $("#contentsWriter").attr('type','hidden');
                $("tr[data-commentidx="+data.boardIdx+"] [name=contents]").val(data.contents);
            },
            error:function (error) {
                alert("ERROR : "+error);
            }
        });
    }

    function commentDelete(commentIdx){
        params = {};
        params.boardIdx= commentIdx;
        params.contents = $("tr[data-commentIdx="+commentIdx + "] [ name=contents]").text();
        alert(params.boardIdx);
        $.ajax({
            type:"POST",
            url:"/commentDelete",
            data:params,
            success:function (data) {
                $("tr[data-commentIdx="+data.boardIdx+"] [ name=contents]").val(data.contents);
                location.reload();
            },error:function (error) {
                console.log(error);
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }

</script>
<jsp:include page="../tab/footer.jsp"/>
</body>
</html>
