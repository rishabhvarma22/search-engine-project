<%-- 
    Document   : freply.jsp
    Created on : Apr 4, 2018, 1:25:53 AM
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
    </head>
    <body>
        <form>
            <%
                 String id="";
                  String title="";
                  String cat="";
            %>
        <%
            
            id=session.getAttribute("id").toString();
            title=session.getAttribute("title").toString();
            cat=session.getAttribute("catt").toString();
        %>
        
        <h1>Comments</h1>
        <p style="font-weight: bold"><%=title%></p>
        <div>
            
                <%
                 String id2=session.getAttribute("id").toString();
                 try
                 {
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                      String sql="select * from forumreply where id=?";
                      PreparedStatement stm=con.prepareStatement(sql);
                      stm.setString(1,id2);
                      ResultSet rs=stm.executeQuery();
                      while(rs.next())
                      {
                        
                          String dis=rs.getString("msg");
                          
                          
                          
             %>
             <div style="margin:4px;border:1px none gray;padding:0px;width:400px">
                 <p style="color:gray"><%=dis%></p>
                 <hr>
                  
             </div>
             <%
                 
                 }
                 } 
                 catch(Exception e)
                {

                }
             %>
            
        </div>
        <p><textarea rows="4" cols="50" name="t1"></textarea></p>
        <p>&emsp;<input type="submit" name="btn" value="Post"/></p>
        <%
            SimpleDateFormat st=new SimpleDateFormat("dd/mm/yyyy");
            Calendar c=Calendar.getInstance();
            String date=st.format(c.getTime());
            String btn=request.getParameter("btn");
            String msg=request.getParameter("t1");
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
                 if(btn.equals("Post"))
                 {
                     String sql2="insert into forumreply values(?,?,?)";
                     PreparedStatement stm2=con.prepareStatement(sql2);
                     stm2.setString(1,id);
                     stm2.setString(2, msg);
                     stm2.setString(3, date);
                     stm2.execute();
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
