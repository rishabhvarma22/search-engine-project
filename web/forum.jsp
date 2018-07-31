<%-- 
    Document   : forum
    Created on : Apr 4, 2018, 12:29:14 AM
    Author     : suraj
--%>
<%@page import="java.text.SimpleDateFormat,javax.servlet.http.HttpSession"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*,java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #frame
            {
                margin-top:2%;
                width:80%;
                height:500px;
                border:1px solid silver;
            }
            #block1
            {
                float:left;
                width:30%;
                background-color:#f2f2f2;
                height:100%;
                
            }
            #block2
            {
                float:right;
                width:70%;
                height:100%;
                
            }
            #data{
                
                
                height:67%;
                overflow-y: auto;
            }
        </style>
    </head>
    <body>
        <form>
            <%
            String cat2=request.getParameter("ct1");
            String userid=session.getAttribute("userid").toString();
             String ctz=session.getAttribute("catt").toString();
            %>
           
            <h3>Welcome,&nbsp;<%=userid%>,<%=ctz%>&emsp;</h3>
            <p style="position:absolute;right:20px;top:5px"><a href="reg.jsp" style="font-size:small">LOG OUT</a></p>
        <div id="frame">
            <div id="block1">
                <h2>&emsp;Search Categories</h2>
                <table>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=PHP">&emsp;PHP</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=JAVA">&emsp;JAVA</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=ANDROID">&emsp;ANDROID</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=DOT NET">&emsp;DOT NET</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=HTML">&emsp;HTML</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=C">&emsp;C PROGRAMMIN</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=C++">&emsp;C++</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=PYTHON">&emsp;PYTHON</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=MYSQL">&emsp;MYSQL</a></td></tr>
                    <tr><td><a style="text-decoration:none" href="forum.jsp?ct1=KOTLIN">&emsp;KOTLIN</a></td></tr>
                </table>
            </div>
            <div id="block2">
                <p style="padding: 10px"><input type="text" size="40" placeholder="Title" name="t1"/><br><textarea rows="2" cols="100" name="t2"></textarea><br><input type="submit" value="Post" name="btn"/></p>
                <p style="background-color:#f2f2f2;height:2px"></p>
             <div id="data">
             <%
                 int k=0;
                 try
                 {
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                      String sql="select * from forum where cat=? ORDER BY id DESC";
                      PreparedStatement stm=con.prepareStatement(sql);
                      if(cat2.length()>0)
                      {
                          stm.setString(1,cat2); 
                      }
                      else
                      {
                         stm.setString(1,ctz); 
                      }
                      
                      ResultSet rs=stm.executeQuery();
                      while(rs.next())
                      {
                          String id=rs.getString("id");
                          String title=rs.getString("title");
                          String dis=rs.getString("dis");
                           String dt=rs.getString("date");
                           String cat=rs.getString("cat");
                          String url="sessmodule.jsp?T1="+id+"&T2="+title+"&T3="+cat;
                          String sql2="select * from forumreply where id=?";
                          PreparedStatement stm2=con.prepareStatement(sql2);
                          stm2.setString(1,id);
                          ResultSet rs2=stm2.executeQuery();
                          while(rs2.next())
                          {
                              k=k+1;
                          }
                          
                          
             %>
             <div style="margin:4px;border:1px solid gray;padding:5px">
                 <p style="font-family:arial;font-weight: bold"><%=title%></p>
                  <p><%=dis%></p>
                  <p style="color:gray">Posted on: <%=dt%></p>
                  <p><a style="text-decoration: none" href="<%=url%>">Comment (<%=k%>)</a></p>
                  
             </div>
             <%
                 
                 }
                 } 
                 catch(Exception e)
                {

                }
             %>
            </div>
        </div>
        <%
            String user="ss";
            String cat=session.getAttribute("catt").toString();
            String title=request.getParameter("t1");
            String msg=request.getParameter("t2");
            SimpleDateFormat st=new SimpleDateFormat("dd/mm/yyyy");
            Calendar c=Calendar.getInstance();
            int dd=c.get(Calendar.DAY_OF_MONTH);
            int mm=c.get(Calendar.MONTH)+1;
            int yy=c.get(Calendar.YEAR);
            String date=String.valueOf(dd)+"/"+String.valueOf(mm)+"/"+String.valueOf(yy);
            String btn=request.getParameter("btn");
         try
         {
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
              if(btn.equals("Post"))
              {
                  String sql="insert into forum(title,userid,dis,date,cat)values(?,?,?,?,?)";
                  PreparedStatement stm=con.prepareStatement(sql);
                  stm.setString(1,title);
                  stm.setString(2, userid);
                  stm.setString(3, msg);
                  stm.setString(4, date);
                   stm.setString(5, cat);
                  stm.execute();
                   out.print("<script>alert('Posted Successfully');</script>");
                   out.println("<script>window.location.href='forum.jsp';</script>");
              }
         }
         catch(Exception e)
         {
             
         }
        
        %>
    </form>
    </body>
</html>
