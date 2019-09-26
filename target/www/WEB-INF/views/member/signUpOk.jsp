<%--
  Created by IntelliJ IDEA.
  User: Tester
  Date: 2019-09-23
  Time: 오후 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../tab/header.jsp"/>
<H1>회원가입 완료</H1>
<%
    String userid= request.getParameter("userid");
    String no = request.getParameter("userpw");
    String addr = request.getParameter("SignUpUserCompanyAddress");
    String address = request.getParameter("signUpUserCompanyAddressDetail");
%>

<%= userid%>
<%= no%>
<%= addr%>
<%= address%>

<jsp:include page="../tab/footer.jsp"/>