
<%@page import="java.sql.*,java.io.*,java.util.*" %>

<%
String user=request.getParameter("t1");
String pass=request.getParameter("t2");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/finalsearch","root","Std@1234");
    String sql="select * from login where userid=?";
    PreparedStatement stm=con.prepareStatement(sql);
    stm.setString(1, user);
    ResultSet rs=stm.executeQuery();
    while(rs.next())
    {
       String us=rs.getString("userid");
       String pa=rs.getString("password");
       String ty=rs.getString("type");
       if(us.equals(user) && pa.equals(pass) && ty.equals("admin") )
       {
           request.getRequestDispatcher("welcomadmin.jsp").forward(request, response);
       }  
       else
       {
           out.println("<script>alert('Invailid login');</script>");
           request.getRequestDispatcher("admin.jsp").forward(request, response);
       }                                      
    }
}
catch(Exception e)
{
    
}








%>
