<%-- 
    Document   : reg
    Created on : Apr 3, 2018, 11:37:20 PM
    Author     : suraj
--%>
<%@page import="javax.swing.JOptionPane,javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*,java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #reg
            {
                margin-top: 8%;
                box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.2);
                width: 350px;
                height:400px;
            }
        </style>
    </head>
    <body style="background-image: url('images/1.jpg')">
        <form>
            <a style="color:white;font-size:small" href="index.jsp">Back</a>
    <center>
        <div id="reg">
            <br><br>
            <h1 style="color:white"><a href="index.jsp" style="text-decoration:none;color:white"></a>SIGN IN</h1>
            <table width="90%" cellpadding="15" style="margin-top:5%">
                <tr>
                    <td>
                        <input style="width:100%;padding: 5px"  placeholder="Email" type="text" name="t1"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:100%;padding: 5px;border:1px none silver;border-bottom:2px solid white" placeholder="******" type="password" name="t2"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:50%;padding: 7px;background-color:red;color:white;border:1px none silver"  type="submit" name="btn" value="SIGN IN"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <a style="color:white;font-size:small" href="forgote.jsp">Forgote Password?</a><BR>
                         <a style="color:white;font-size:small" href="signup.jsp">Create New Account?</a>
                    </td>
                </tr>
                <tr>
                    <td>
                       
                    </td>
                </tr>
            </table>
        </div>
    </center>
     <%
String user=request.getParameter("t1");
String pass=request.getParameter("t2");
String btn=request.getParameter("btn");
String cat="";
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
    if(btn.equals("SIGN IN"))
    {
         if(user.length()>0 && user.matches("^\\w+([.]?\\w+)*@\\w+(\\.\\w{2,3})+$"))
         {
             if(pass.length()>0)
             {
                 String sql="select * from login where userid=?";
               PreparedStatement stm=con.prepareStatement(sql);
               stm.setString(1, user);
               ResultSet rs=stm.executeQuery();
               while(rs.next())
       {
       String us=rs.getString("userid");
       String pa=rs.getString("password");
       String ty=rs.getString("type");
       String sql2="select * from reg where email=?";
       PreparedStatement stm2=con.prepareStatement(sql2);
       stm2.setString(1, user);
       ResultSet rs2=stm2.executeQuery();
       while(rs2.next())
       {
           cat=rs2.getString("cat");
       }
       if(us.equals(user) && pa.equals(pass) && ty.equals("admin") )
       {
           session.setAttribute("userid",user);
           out.println("<script>window.location.href='action.jsp';</script>");
       }  
       else   if(us.equals(user) && pa.equals(pass) && ty.equals("User") )
       {
            session.setAttribute("userid",user);
            session.setAttribute("catt",cat);
            out.println("<script>window.location.href='forum.jsp';</script>");
          
           
       }    
       else
       {
            out.print("<script>alert('Invailid Login');</script>");
       }
    }
             }
             else
             {
              out.println("<script>alert('Password is empty?');</script>");
             }
         }
         else
         {
              out.println("<script>alert('Email Address is empty?OR Invailid');</script>");
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
