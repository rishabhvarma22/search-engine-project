<%-- 
    Document   : index
    Created on : Feb 16, 2016, 10:11:49 AM
    Author     : hisoft1
--%>

<%@page import="java.net.ConnectException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.*,java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input[type='text']
            {
                width:100%;
                padding:2%;
                border:1px solid skyblue;
                border-radius:3px;
            }
            #b1
            {
                
                
            }
             #b2
            {
                 padding:1% 6%;
                 border:1px none silver;
              background: linear-gradient(to bottom,deepskyblue,deepskyblue);
              border-radius:2px;
              position:absolute;
              left:56%;
              top:130%;
              font-family:arial;
              font-weight:bold;
              color:black;
                
            }
            #b1:hover
            {
                
            }
             #b2:hover
            {
                border:1px solid silver;
            }
            #t1:hover
            {
                border:1px double silver;
            }
            .search
            {
                position:absolute;
                top:26%;
                left:28%;
            }
            .header
            {
                position:absolute;
                left:0px;
                top:-10px;
                width:100%;
                text-align: right;
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
            .header ul li a:hover
            {
              
                opacity:0.7;
              
            }
            .search ul li{
                display: inline-block;
                padding:15px 6px;
            }
            .footer
            {
                position: absolute;
                bottom: 0px;
                width:100%;
                text-align:center;
                color:white;
                font-size:small;
            }
        </style>
    </head>
    <body style="background-image: url('images/1.jpg')">
        <form>
            <%
            int freq=0;
            int neqfreq=0;
            %>
           
            <div class="search">
                <ul>
                    <li style="font-weight:bold;font-size:x-large;color:white">SearchBox</li>
                    <li><input style="font-size:small" size="50" placeholder="TYPE YOUR SEARCH HERE.." type="text" name="T1" ></li>
                    <li><input style="padding:9px 15px;background-color: orange;color:white;border:1px none silver"  type="submit" name="btn" value="Go"></li>
                </ul>
            </div>
            <div class="header">
                <ul>
                    <li style="display: none"><a href="about.jsp">About This Project</a></li>
                     <li><a href="reg.jsp">Forum</a></li>
                     <li><a href="aboutus.jsp">About us</a></li>
                      <li><a href="signup.jsp">Sign Up</a></li>
                      <li><a href="reg.jsp">Sign In</a></li>
                </ul>
            </div>
            <%
            String vl=request.getParameter("btn");
           try
           {
                if(vl.equals("Go"))
               {
                  
                  String s1=request.getParameter("T1");
                 // File f=new File("E:/miniSearch.txt");
                 // FileWriter fw=new FileWriter(f,true);
                 // BufferedWriter bw=new BufferedWriter(fw);
                 // bw.newLine();
                  //bw.write(s1);
                 // bw.flush();
                 // bw.close();
                if(s1.length()>0)
                {
                      request.getRequestDispatcher("search.jsp?T1="+s1.toLowerCase()).forward(request, response);
                }
                else
                {
                    out.print("<script>alert('Enter keyword first?');</script>"); 
                }
                 
                  
               }
               
           }
           catch(Exception e)
           {
               
           }
            %>
            <div class="footer">
                <p>COPYRIGHT &copy; SEARCHBOX.ALL RIGHTS RESERVED</p>
            </div>
        </form>
    </body>
</html>
