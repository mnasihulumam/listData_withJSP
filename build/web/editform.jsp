<%-- 
    Document   : editform
    Created on : Dec 23, 2020, 2:06:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edit Form</title>
    </head>
    <body>
        <%@page import="function.user,function.fuser"%>
        <%
            String id = request.getParameter("iduser");
            fuser u = user.getRecordById(Integer.parseInt(id));
        %>
        <h1>Edit Form</h1>
        <form action="prosesedit.jsp" method="post">
            <input type="hidden" name="iduser" value="<%=u.getIduser()%>"/>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="namauser" 
                               value="<%= u.getNamauser()%>"/></td>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" 
                               value="<%= u.getUsername()%>"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" 
                               value="<%= u.getPassword()%>"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Edit User"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>