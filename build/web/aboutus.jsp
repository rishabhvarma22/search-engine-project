<%-- 
    Document   : aboutus
    Created on : Feb 18, 2016, 2:33:04 PM
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
                top:7%;
                left:22%;
                width:50%;
                height:50%;
            }
        </style>
    </head>
    <body>
         <form>
           <div class="header">
                <ul>
                    <li ><a  href="about.jsp">About This Project</a></li>
                     <li style="background-color:white"><a style="color:black" href="aboutus.jsp">About us</a></li>
                      <li><a href="admin.jsp">Administrator Login</a></li>
                         <li><a href="index.jsp">Search Keyword</a></li>
                </ul>
            </div>
           <div class="data">
               <h3>Search Engine's mission is to organize the world’s information and make it universally accessible and useful. </h3>
               <h4>#-Focus on the user and all else will follow. </h4>
               <p>Since the beginning, we’ve focused on providing the best user experience possible. Whether we’re designing a new Internet browser or a new tweak to the look of the homepage, we take great care to ensure that they will ultimately serve you, rather than our own internal goal or bottom line. </p>
               <p>

                   <strong>Founded</strong><br>
    2018<br>
    <strong> Founders</strong><br>
    Sagar<br>
    <strong>Incorporation</strong><br>
    Jan 2, 2018<br>
    <strong> Initial public offering</strong><br>
    Jan 2, 2018<br>
    <strong>Headquarters</strong><br>
    Lucknow Gomtinagar 226010

</p>
           </div>
        </form>
    </body>
</html>
