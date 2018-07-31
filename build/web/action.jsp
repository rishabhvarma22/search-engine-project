<%-- 
    Document   : action
    Created on : Feb 20, 2016, 10:27:18 AM
    Author     : hisoft1
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page import="java.io.*,java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquery.js"></script>
        <title>JSP Page</title>
         <style>
            .header
            {
                position:absolute;
                width:50%;
                top: 14%;
                left:22%;
                height:5%;
                background-color:blue;
               
            }
            .data
            {
                position:absolute;
                width:50%;
                top: 20%;
                left:22%;
                height:40%;
                background:linear-gradient(to bottom,silver,white);
               
            }
            .keymaster
            {
                position:absolute;
                top:150px;
                left:300px;
                background-color:#CDF0F6;
                width:40%;
                height:67%;
                border:2px solid #f1f1f1;
                display:none;
            }
        </style>
        <script>
            $(function(){
                $('.b1').click(function(){
                    $('.keymaster').fadeIn("slow");
                });
                $('.b2').click(function(){
                    $('.keymaster').fadeOut("slow");
                });
            });
        </script>
    </head>
   <body>
         <form>
            <div class="header">
                <h3 style="position:absolute;top:-30px;background-color:yellow;border-radius:15px 0px 0px 0px;width:50%">&nbsp;&nbsp;Welcome Admin&nbsp;&nbsp;|&nbsp;&nbsp;<a style="font-size:small;text-decoration:none" href="index.jsp">Log Out</a></h3>
               
            </div>
            <div class="data">
                <p > 
                <table cellpadding="6" style="position:absolute;left:25%;top:20%;width:30%">
                    <tr><td><input class="b1" type="button" value="Keyword Master" name="btn"/></td><td><input type="submit" value="Clear Cache" name="btn"/></td></tr>
                   
                </table>
                <table style="position:absolute;left:23%;top:37%;">
                    <tr><td>Enter Keyword:</td><td><input style="padding:5px" placeholder="Keyword" type="text" name="block"><input style="padding:5px;border:1px none silver" type="submit" name="btn" value="Block"></td></tr>
                </table>
                </p>
                 <hr style="position:absolute;left:0%;top:54%;width:100%">
            </div>
       
       <%
            String uv=request.getParameter("btn");
            try
            {
                if(uv.equals("Clear Cache"))
                {
                    File f=new File("D:/miniSearch.txt");
                    PrintWriter pw=new PrintWriter(f);
                    pw.write("");
                   
                }
                if(uv.equals("Block"))
                {
                    String vl2=request.getParameter("block");
                    if(!vl2.isEmpty())
                    {
                        try
                        {
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                            String sql="insert into block values(?)";
                            PreparedStatement stm=con.prepareStatement(sql);
                            stm.setString(1, vl2);
                            stm.execute();
                            
                        }
                        catch(Exception e)
                        {
                            
                        }
                    }
                }
                if(uv.equals("Clear all"))
                {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                            String sql="delete from block";
                            PreparedStatement stm=con.prepareStatement(sql);
                            stm.execute();
                }
                 if(uv.equals("Add Content"))
                {
                            String ky=request.getParameter("kt1");
                            String url=request.getParameter("kt2");
                            String til=request.getParameter("kt3");
                            String hi=request.getParameter("kt4");
                            String des=request.getParameter("kt5");
                            String fq=request.getParameter("kt6");
                            String pno=request.getParameter("kt7");
                            String cn=request.getParameter("kc");
                            String em=request.getParameter("ke");
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                            if(!ky.isEmpty() && !url.isEmpty() && !til.isEmpty() && !hi.isEmpty() && !des.isEmpty() && !fq.isEmpty() && !pno.isEmpty())
                            {
                                 String sql="insert into indexer values(?,?,?,?,?,?,?,?,?)";
                            PreparedStatement stm=con.prepareStatement(sql);
                            stm.setString(1, ky.toLowerCase());
                            stm.setString(2, url);
                            stm.setString(3, til);
                            stm.setString(4, hi);
                            stm.setString(5, des);
                            stm.setString(6, cn);
                            stm.setString(7, em);
                            stm.setString(8, fq);
                            stm.setString(9, pno);
                            stm.execute();
                            out.print("<script>alert('Added Successfully');</script>");
                            }
                            else
                            {
                                 out.print("<script>alert('Some Text are Missing');</script>");
                            }
                }
            }
            catch(Exception e)
            {
                
            }
            %>
           
            <h3 style="position:absolute;left:32%;top:42%;">Blocked Keywords:&nbsp;<input type="submit" value="Clear all" name="btn"></h3>
             <div style="position:absolute;left:32%;top:50%;overflow-y:auto;border:1px solid silver;width:30%;height:36%" >
                    <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/finalsearch" user="root" password="Std@1234"></sql:setDataSource>    
                    <sql:query var="result" dataSource="${ds}" sql="select * from block"></sql:query>
                    <table>
                     <c:forEach var="row" items="${result.rows}">
                         <tr><td><c:out value="${row.val}"></c:out></td></tr>
                     </c:forEach>
                </table>
          </div>
            <div class="keymaster">
                <input class="b2" style="position:absolute;right:0px" type="button" value="X" name="btn">
                <table style="position:absolute;left:6%">
                    <h3 style="text-align:center;border-bottom:1px solid silver">Keyword Setting</h3>
                    <tr><td>Keyword:</td><td><input type="text" name="kt1"></td></tr>
                    <tr><td>Url:</td><td><input type="text" name="kt2"></td></tr>
                    <tr><td>Title:</td><td><input type="text" name="kt3"></td></tr>
                    <tr><td>Highlight:</td><td><textarea rows="3" cols="30" name="kt4"></textarea></td></tr>
                    <tr><td>Description:</td><td><textarea rows="3" cols="30" name="kt5"></textarea></td></tr>
                    <tr><td>Contact:</td><td><input type="text" name="kc"></td></tr>
                     <tr><td>Email:</td><td><input type="text" name="ke"></td></tr>
                    <tr><td>FREQ:</td><td><input type="text" name="kt6"></td></tr>
                    <tr><td>Page No:</td><td><input type="text" name="kt7"></td></tr>
                    <tr><td></td><td><input type="Submit" name="btn" value="Add Content"></td></tr>
                </table>
            </div>
     </form>
    </body>
</html>
