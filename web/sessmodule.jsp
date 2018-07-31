<%@page import="javax.servlet.http.HttpSession" %>
<%
    String ctz=session.getAttribute("catt").toString();
    String id=request.getParameter("T1");
    String title=request.getParameter("T2");
     String cat=request.getParameter("T3");
    session.setAttribute("id",id);
     session.setAttribute("title",title);
     try
     {
         if(ctz.equals(cat))
         {
          out.println("<script>window.location.href='freply.jsp';</script>");
         }
         else
        {
            out.print("<script>alert('You are not able to reply on this post');</script>");
         out.println("<script>window.location.href='forum.jsp';</script>");
        }
     }
     catch(Exception e)
     {
         
     }
    
%>