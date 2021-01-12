<%-- 
    Document   : deleteuser
    Created on : Dec 28, 2020, 8:42:02 AM
    Author     : HP
--%>

<%@page import="function.user"%>
<jsp:useBean id="u" class="function.fuser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=user.delete(u);
response.sendRedirect("index.jsp");
%>
