<%-- 
    Document   : index
    Created on : Dec 21, 2020, 12:49:12 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>READ DATA (DATABASE MYSQL)</title>
    </head>
    <body>
        <%@page import="function.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <h1>READ DATA (DATABASE MYSQL)</h1>
        <%
            List<fuser> list = user.getAllRecords();
            request.setAttribute("list", list);
        %>
        <table border="1" width="90%">
        <tr>
            <th>Nama</th>
            <th>Username</th>
            <th>Password</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getNamauser()}</td>
            <td>${u.getUsername()}</td>
            <td>${u.getPassword()}</td>
            <td><a href="editform.jsp?iduser=${u.getIduser()}">Edit</a></td>
            <td><a href="deleteuser.jsp?iduser=${u.getIduser()}">Delete</a></td>
        </tr>
        </c:forEach>
        </table>
        <br/>
    </body>
</html>