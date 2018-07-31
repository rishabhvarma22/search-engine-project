<%-- 
    Document   : about
    Created on : Feb 18, 2016, 2:24:25 PM
    Author     : hisoft1
--%>

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
                 padding:2% 5%;
                 border:1px none silver;
            background: linear-gradient(to bottom,silver,aliceblue 100%);
              border-radius:2px;
              position:absolute;
              left:37%;
              top:130%;
              font-family:arial;
              font-weight:bold;
              color:black;
              border:1px solid silver;
                
            }
             #b2
            {
                 padding:1% 5%;
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
                border:2px solid silver;
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
                top:20%;
                left:28%;
                width:40%;
            }
            .header
            {
                position:absolute;
                left:0px;
                top:-20px;
                width:100%;
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
            .data
            {
                position:absolute;
                top:8%;
                left:22%;
                width:50%;
                height:50%;
            }
            .data ul li
            {
                padding:3px;
            }
        </style>
    </head>
    <body>
       <form>
           <div class="header">
                <ul>
                    <li style="background-color:white"><a style="color:black" href="about.jsp">About This Project</a></li>
                     <li><a href="aboutus.jsp">About us</a></li>
                      <li><a href="admin.jsp">Administrator Login</a></li>
                         <li><a href="index.jsp">Search Keyword</a></li>
                </ul>
            </div>
           <div class="data">
               <ul type="none">
                   <li><h3>Project Title:</h3>&nbsp;SearchEngin & Blogging Application</li>
                   <li><h3>Technology:</h3>&nbsp;Java EE (Jsp+Servlet)<br> Ajax, Jquery & JavaScript</li>
                   <li><h3>Database:</h3>&nbsp;MySql+ Wamp Server</li>
                   <li><h3>Purpose:</h3>&nbsp;To provides best user experience regarding information electronicaly</li>
               </ul>
           </div>
        </form>
    </body>
</html>
