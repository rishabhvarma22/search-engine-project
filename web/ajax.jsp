<%--  
    Document   : ajax
    Created on : Mar 16, 2016, 4:40:44 PM
    Author     : suman
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <%
             try
             {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                String sql="insert into block values(?)";
                             
             }
             catch(Exception e)
             {
                 
             }
            %>
        </table>
    </body>
</html>
