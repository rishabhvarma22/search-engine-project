<%-- 
    Document   : reg
    Created on : Apr 3, 2018, 11:37:20 PM
    Author     : suraj
--%>
<%@page import="javax.swing.JOptionPane"%>
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
                margin-top: 0%;
                box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.2);
                width: 400px;
            }
        </style>
    </head>
    <body style="background-image: url('images/1.jpg')">
        <form>
    <center>
        <div id="reg">
            <br><br>
            <h1 style="color:white">SIGN UP</h1>
            <table width="90%" cellpadding="15" style="margin-top:5%;color:white">
                <tr>
                    <td>
                        <input style="width:100%;padding: 5px"  placeholder="Full Name" type="text" name="t1"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input  type="radio" name="rd1" value="Male"/>Male<input type="radio" name="rd1" value="Female"/>Female
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:100%;padding: 5px" required="" placeholder="(dob) dd/mm/yyyy"  type="text" name="t5"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:100%;padding: 5px" maxlength="10"  placeholder="Mobile" type="text" name="t2"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:100%;padding: 5px"  placeholder="Email" type="text" name="t3"/>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <select name="sp1">
                            <option value="PHP">PHP</option>
                            <option value="JAVA">JAVA</option>
                            <option value="C Programming">C Programming</option>
                           <option value="C++">C++</option>
                             <option value="ANDROID">ANDROID</option>
                               <option value="ASP.NET">ASP.NET</option>
                                 <option value="DOT NET">DOT NET</option>
                                   <option value="PYTHON">PYTHON</option>
                                     <option value="KOTLIN">KOTLIN</option>
                        </select>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:100%;padding: 5px"  placeholder="Password" type="password" name="t4"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input style="width:50%;padding: 7px;background-color:red;color:white;border:1px none silver"  type="submit" name="btn" value="SIGN UP"/>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <a style="color:white;font-size:small" href="reg.jsp">Already Registered?</a>
                    </td>
                </tr>
            </table>
        </div>
    </center>
     <%
String name=request.getParameter("t1");
String gender=request.getParameter("rd1");
String mobile=request.getParameter("t2");
String pas=request.getParameter("t4");
String email=request.getParameter("t3");
String cat=request.getParameter("sp1");
String dob=request.getParameter("t5");
String btn=request.getParameter("btn");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
    if(btn.equals("SIGN UP"))
    {
         if(name.length()>0)
         {
             if(mobile.length()>0 && mobile.matches("^[0-9]+$") && mobile.length()==10)
             {
                 if(pas.length()>0)
                 {
                     if(email.length()>0 && email.matches("^\\w+([.]\\w+)*@\\w+(\\.\\w{2,3})+$"))
                     {
                         String sql3="select * from reg where email=?";
                         PreparedStatement stm3=con.prepareStatement(sql3);
                         stm3.setString(1, email);
                         ResultSet rs3=stm3.executeQuery();
                         String bl="";
                         while(rs3.next())
                         {
                             bl=rs3.getString("name");
                            
                         }
                         if(bl.length()>0)
                         {
                             out.print("<script>alert('User already registered?');</script>");
                         }
                         else
                         {
                             String sql="insert into reg values(?,?,?,?,?,?,?)";
                          PreparedStatement stm=con.prepareStatement(sql);
                        stm.setString(1, name);
                        stm.setString(2, gender);
                         stm.setString(3, mobile);
                        stm.setString(4, email);
                        stm.setString(5, pas);
                        stm.setString(6, cat);
                         stm.setString(7, dob);
                        stm.execute();
                       String sql2="insert into login values(?,?,?)";
                       PreparedStatement stm2=con.prepareStatement(sql2);
                       stm2.setString(1, email);
                       stm2.setString(2, pas);
                       stm2.setString(3, "User");
                       stm2.execute();
                       out.print("<script>alert('Registered Successfully');</script>");
                       out.println("<script>window.location.href='signup.jsp';</script>");
                         }
                     }
                      else
                    {
                         out.print("<script>alert('Email id is Empty?OR Invailid');</script>");
                   }
                 }
                  else
                 {
                     out.print("<script>alert('Password is Empty?');</script>");
                  }
             }
              else
             {
                out.print("<script>alert('Mobile number is Empty?OR Invailid OR Should be 10 digits');</script>");
             }
         }
         else
         {
             out.print("<script>alert('User Name is Empty?');</script>");
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
