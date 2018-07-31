 <%@page import="sun.tools.jar.resources.jar"%>
<%@page import="javax.print.DocFlavor.STRING"%>
<%-- 
    Document   : logic
    Created on : Feb 16, 2016, 12:59:31 PM
    Author     : hisoft1
--%>
<%@page import="java.io.*,java.sql.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
           
            function d()
            {
                 var d=new Date();
                 document.getElementById('d1').value=d.toLocaleString();
            }
            window.onload=d;
        </script>
    </head>
    <body>
        <form>
       
        <%
           Connection con=null;
           ResultSet rs=null;
           String vl=request.getParameter("T1");
           String title,dis,url=null,url2,dis2;
           String d2=request.getParameter("d1");
           int freq=0;
           int neqfreq=0;
           
         %>
         <div class="details">
              <p style="text-align:center"> <a href="index.jsp"><img style="" width="73px" height="70px" src="images/shlogo.png"></a></p>
           <%
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                String sql="select * from indexer where title=?";
               PreparedStatement stm=con.prepareStatement(sql);
               stm.setString(1, vl);
               rs=stm.executeQuery();
               while(rs.next())
               {
                   dis=rs.getString("dis");
                   url=rs.getString("url");
               %>
             
               <h1 style="text-align:center;color:yellowgreen"><%=vl%></h1>
               <hr/>
               <p style="width:40%;position:absolute;top:20%;left:30%;height:400px;overflow-y:auto"><%=dis%></p>
               <%
               }
               }
               catch(Exception e)
               {
                   
               }
               %>
               <%
               
               try
               {
                  Class.forName("com.mysql.jdbc.Driver");
                  con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                  String sql="select * from indexer where title=?";
                  PreparedStatement stm=con.prepareStatement(sql);
                  stm.setString(1, vl);
                  rs=stm.executeQuery();
                  rs.next();
                  freq=rs.getInt("freq");
                  neqfreq=freq+1; 
                  {
                      String sql2="update indexer set freq=? where title=?";
                      PreparedStatement stm2=con.prepareStatement(sql2);
                      stm2.setInt(1, neqfreq);
                      stm2.setString(2, vl);
                      stm2.execute();
                      
                      
                  }
                  
               }
               catch(Exception e)
                                             {
                   
               }
               %>
         </div>
    </form>
    </body>
</html>
