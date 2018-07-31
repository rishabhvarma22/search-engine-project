<%-- 
    Document   : admin
    Created on : Feb 18, 2016, 7:12:45 PM
    Author     : hisoft1
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*,java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Admin</title>
        <style>
            .heade
            {
                position:absolute;
                width:50%;
                top: 17%;
                left:22%;
                height:5%;
                background-color:blue;
               
            }
            .data
            {
                position:absolute;
                width:50%;
                top: 23%;
                left:22%;
                height:40%;
                background:linear-gradient(to bottom,silver,white);
               
            }
            input[type='text']
            {
                border:1px solid gray;
            }
            input[type='password']
            {
                border:1px solid gray;
            }
             .header ul li
            {
                display:inline-block;
                padding:8px 15px;
            }
            .header ul li a
            {
                text-decoration:none;
                color:white;
                font-size:small;
                font-weight:bold;
                font-family:arial;
                
            }
            .header ul
            {
               background:linear-gradient(to bottom,darkturquoise,dodgerblue);
              
            }
            .header
            {
                position:absolute;
                left:0px;
                top:-20px;
                width:100%;
            }
        </style>
    </head>
    <body>
        <form >
             <div class="header">
                <ul>
                    <li><a href="about.jsp">About This Project</a></li>
                     <li><a href="aboutus.jsp">About us</a></li>
                     <li style="background-color:white"><a style="color:black" href="admin.jsp">Administrator Login</a></li>
                       <li><a href="index.jsp">Search Keyword</a></li>
                </ul>
            </div>
            <div class="heade">
                <h3 style="position:absolute;top:-30px;background-color:yellow;border-radius:15px 0px 0px 0px;width:50%">&nbsp;&nbsp;Admin Login&nbsp;&nbsp;|&nbsp;&nbsp;<a style="font-size:small;text-decoration:none" href="index.jsp">Home</a></h3>
               
            </div>
            <div class="data">
                <p > 
                <table cellpadding="4" style="position:absolute;left:30%;top:30%;width:20%">
                    <tr><td>User Id:</td><td><input style="background-color:aliceblue" type="text" name="t1"></td></tr>
                     <tr><td>Password:</td><td><input style="background-color:aliceblue" type="password" name="t2"></td></tr>
                     <tr><td></td><td><input style="background:linear-gradient(to bottom,white,silver);border:1px none silver;color:black;padding:5px;border-radius:4px;font-size:smaller" type="submit" name="btn" value="Sign In"></td></tr>
                </table>
                </p>
            </div>
            <%
String user=request.getParameter("t1");
String pass=request.getParameter("t2");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
    String sql="select * from login where userid=?";
    PreparedStatement stm=con.prepareStatement(sql);
    stm.setString(1, user);
    ResultSet rs=stm.executeQuery();
    while(rs.next())
    {
       String us=rs.getString("userid");
       String pa=rs.getString("password");
       String ty=rs.getString("type");
       if(us.equals(user) && pa.equals(pass) && ty.equals("Admin") )
       {
           out.println("<script>window.location.href='action.jsp';</script>");
       }  
       else if(us.equals(user) && pa.equals(pass) && ty.equals("User") )
       {
           out.println("<script>window.location.href='forum.jsp';</script>");
           
           
       }  
       else
       {
           out.print("<script>alert('Invailid Login');</script>");
       }
    }
}
catch(Exception e)
{
    
}








%>

        </form>
    </body>
</html>
