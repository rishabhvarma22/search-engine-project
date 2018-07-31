<%-- 
    Document   : search
    Created on : Feb 16, 2016, 12:44:39 PM
    Author     : hisoft1
--%>
<%@page import="sun.security.util.Cache"%>
<%@page import="javax.print.DocFlavor.STRING"%>
<%@page import="java.io.*,java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="ajaxlgo.js"></script>
        <script src="ny.js" type="text/javascript"></script>
        <style>
            .header
            {
                position:absolute;
                top:0px;
                left:0px;
                width:100%;
                padding:16px;
               box-shadow: 0px 0px 0px 1px silver;
                
            }
             #b1
            {
                
              border:1px solid silver;
              background: linear-gradient(to bottom,silver,aliceblue 100%);
              border-radius:2px;
              position:absolute;
              left:41%;
              top:20%;
              font-family:arial;
              color:black;
              padding:7px;
             
                
            }
            #t1
            {
                position:absolute;
                left: 20%;
                top:20%;
                padding:8px;
                width:20%;
                 border:1px solid silver;
                 border-radius:3px;
            }
            #b1:hover
            {
                border:1px solid gray;
            }
            #t1:hover
            {
                border:1px double gray;
            }
            .data
            {
                position:absolute;
                top:18%;
                left:20%;
                width:80%;
                height:500px;
                overflow-y:auto;
               
            }
            #siz
            {
                position:absolute;
                top:13%;
                left:20%;
                color:orange;
            }
            .footer
            {
                position:absolute;
                left:0px;
                height:50px;
                width:100%;
                border:1px solid silver;
                bottom:0px;
                text-align:center;
                z-index:100;
                background-color:aliceblue;
            }
            .mn
            {
                position:absolute;
                right:10%;
                top:100px;
                width:25%;
                height:60%;
                box-shadow:0px 0px 3px 0px silver;
                overflow-y:auto;
            }
            #pp
            {
                position: absolute;
                right:30px;
                top:0px;
                
                
            }
            #pp ul li
            {
                display:inline;
                padding:1px 20px;
            }
            #pp ul li a
            {
                text-decoration: none;
                color:gray;
            }
        </style>
        <script>
            function df(anchor)
            {
                var vl=anchor.getAttribute('vlt');
                window.location.href="result.jsp?T1="+vl;
            }
            function dg(anchor)
            {
                var vl=anchor.getAttribute('vlt');
                document.getElementById('vall').innerHTML=vl;
                
            }
            function xyz()
            {
                var a=document.getElementById('t1').value;
                window.location.href="search.jsp?T1="+a;
            }
        </script>
    </head>
    <body>
        <form>
            <%
            int size=0;
            int pagd=0;
            int p=1;
            String a[]=new String[10];
            String title1=null;
            String desc1=null;
            String url1=null;
            String mob1=null;
            String email1=null;
            String vl=request.getParameter("T1");
            %>
        <div class="header">
            <div id="pp">
                <ul>
                    <li style="display: none"><a href="about.jsp">About This Project</a></li>
                     <li><a href="reg.jsp">Forum</a></li>
                     <li><a href="aboutus.jsp">About us</a></li>
                      <li><a href="signup.jsp">Sign Up</a></li>
                      <li><a href="reg.jsp">Sign In</a></li>
                </ul>
            </div>
            <a style="text-decoration:none;font-family:arial;margin-left: 4%;color:gray;font-size:larger" href="index.jsp">SearchBox</a>
            <input style="" placeholder="TYPE YOUR SEARCH HERE.." id="t1" type="text" name="T1">&nbsp;&nbsp;&nbsp;&nbsp;<a id="b1" onclick="xyz()" href="#">GO</a>
            
        </div>

            <div class="data" >
               
                <%
           Connection con=null;
           ResultSet rs=null;
           ResultSet rs2=null;
           String desc=null;
           String btn1=request.getParameter("btn");
           
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
           }
           catch(Exception e)
           {
               
           }
        %>
        <%
        
        String sql="select * from indexer where keyword like'%"+vl+"%' and keyword not in (select * from block where val LIKE '%"+vl+"') ORDER BY freq DESC";
        PreparedStatement stm=con.prepareStatement(sql);
        rs=stm.executeQuery();
        while(rs.next())
        {
            String url=rs.getString("url");
            String title=rs.getString("title");
            String hig=rs.getString("highlight");
            desc=rs.getString("dis");
            size++;
            a[size]="vl"+size+"()";
        %>
        
        <div class="d1" style="border:1px none silver;width:40%;height:120px;overflow:hidden">
            <a title="<%=desc%>" vlt="<%=title%>" onclick="df(this)" id="a<%=size%>" href="#"><span><%=title%></span></a><br>
            <a style="font-size:small;color:green;font-family:arial" href="#"><%=url%></a><br>
            <p  style="font-size:small;font-family:arial"><%=hig%></p>
         </div> 
         <%
          }
        %>
        </div>
        <span id="siz">Total result found-&nbsp;<%=size%>&nbsp;</span>
            <div class="footer">
              
            <%
          
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234"); 
                  String sql2="select * from indexer ORDER BY pageno DESC";
                  PreparedStatement stm2=con.prepareStatement(sql2);
                  rs2=stm2.executeQuery();
                  rs2.next();
                  pagd=rs2.getInt("pageno");
                  for(int j=0;j<pagd;j++)
                 {
                      String lg[]=new String[10];
                      lg[j]="pg"+j+"()";
                 %>
                
                 <%
                 }
                 }
                 catch(Exception e2)
                 {
                     
                 }
                 %>
                 <%
                try
                {
                     if(vl.equals("Search"))
                  {
                  
                  String s1=request.getParameter("T1");
                  File f=new File("E:/miniSearch.txt");
                  FileWriter fw=new FileWriter(f,true);
                  BufferedWriter bw=new BufferedWriter(fw);
                  bw.newLine();
                  bw.write(s1);
                  bw.flush();
                  bw.close();
                  request.getRequestDispatcher("search.jsp?T1="+s1).forward(request, response);
                 
                  
                  }
                }
                catch(Exception e4)
                {
                    
                }
                 %>
                 <%
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
                  con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234"); 
                  String sql1="select * from indexer where keyword=?";
                  PreparedStatement stm1=con.prepareStatement(sql1);
                  stm1.setString(1, vl);
                  ResultSet rs1=stm1.executeQuery();
                  rs1.next();
                  title1=rs1.getString("title");
                  desc1=rs1.getString("dis");
                  url1=rs1.getString("url");
                  mob1=rs1.getString("contact");
                  email1=rs1.getString("email");
                     
                 }
                 catch(Exception e5)
                 {
                     
                 }
                 %>
            </div>  
            <div class="mn">
                <h4 style="text-align:center;border-bottom:1px solid silver;color:black;font-family:arial"><%=title1%></h4>
                <p style="color:gray;font-family:arial;font-size:small;margin-left:2%"><%=desc1%></p>
                <p style="text-align:center;color:blue;font-family:arial;font-size:small"><a href="<%=url1%>" target="_blank"><%=url1%></a></p>
                <p style="text-align:center;color:blue;font-family:arial;font-size:small"><a href="#" target="_blank"><%=mob1%></a></p>
                <p style="text-align:center;color:blue;font-family:arial;font-size:small"><a href="mail to:gmail.com" target="_self"><%=email1%></a></p>
            </div>
        <form>
    </body>
</html>
