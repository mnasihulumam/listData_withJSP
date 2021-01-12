<%-- 
    Document   : prosesedit
    Created on : Dec 23, 2020, 2:07:20 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.user"%>
<jsp:useBean id="u" class="function.fuser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=user.update(u);
response.sendRedirect("index.jsp");
%>