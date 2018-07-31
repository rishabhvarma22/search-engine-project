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
            <h1 style="color:white"><a href="index.jsp" style="text-decoration:none;color:white"></a>Reset your password</h1>
            <table width="90%" cellpadding="15" style="margin-top:5%">
                <tr>
                    <td>
                        <span style="color:white">Enter your dob</span><br>
                        <input style="width:100%;padding: 5px" placeholder="dd/mm/yyyy"  type="text" name="t1"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <span style="color:white">New Password</span><br>
                        <input style="width:100%;padding: 5px;border:1px none silver;border-bottom:2px solid white" placeholder="******" type="password" name="t2"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:50%;padding: 7px;background-color:red;color:white;border:1px none silver"  type="submit" name="btn" value="Change"/>
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
String dob=request.getParameter("t1");
String pass=request.getParameter("t2");
String btn=request.getParameter("btn");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
    if(btn.equals("Change"))
    {
         if(dob.length()>0)
         {
             if(pass.length()>0)
             {
                 String sql="select * from reg where dob=?";
                 PreparedStatement stm=con.prepareStatement(sql);
                 stm.setString(1,dob);
                 ResultSet rs=stm.executeQuery();
                 String str="";
                 while(rs.next())
                {
                     str=rs.getString("email");
                     String sql2="update login set password=? where userid=?";
                     PreparedStatement stm2=con.prepareStatement(sql2);
                     stm2.setString(1, pass);
                     stm2.setString(2, str);
                     stm2.execute();
                     out.print("<script>alert('Changed Successfully');</script>");
                      out.print("<script>window.location.href='forgote.jsp';</script>");
                }
               
             }
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
