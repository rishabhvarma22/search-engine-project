package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.ConnectException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.InputStream;
import java.io.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            input[type='text']\n");
      out.write("            {\n");
      out.write("                width:100%;\n");
      out.write("                padding:2%;\n");
      out.write("                border:1px solid skyblue;\n");
      out.write("                border-radius:3px;\n");
      out.write("            }\n");
      out.write("            #b1\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("             #b2\n");
      out.write("            {\n");
      out.write("                 padding:1% 6%;\n");
      out.write("                 border:1px none silver;\n");
      out.write("              background: linear-gradient(to bottom,deepskyblue,deepskyblue);\n");
      out.write("              border-radius:2px;\n");
      out.write("              position:absolute;\n");
      out.write("              left:56%;\n");
      out.write("              top:130%;\n");
      out.write("              font-family:arial;\n");
      out.write("              font-weight:bold;\n");
      out.write("              color:black;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            #b1:hover\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("             #b2:hover\n");
      out.write("            {\n");
      out.write("                border:1px solid silver;\n");
      out.write("            }\n");
      out.write("            #t1:hover\n");
      out.write("            {\n");
      out.write("                border:1px double silver;\n");
      out.write("            }\n");
      out.write("            .search\n");
      out.write("            {\n");
      out.write("                position:absolute;\n");
      out.write("                top:26%;\n");
      out.write("                left:28%;\n");
      out.write("            }\n");
      out.write("            .header\n");
      out.write("            {\n");
      out.write("                position:absolute;\n");
      out.write("                left:0px;\n");
      out.write("                top:-10px;\n");
      out.write("                width:100%;\n");
      out.write("                text-align: right;\n");
      out.write("            }\n");
      out.write("            .header ul li\n");
      out.write("            {\n");
      out.write("                display:inline-block;\n");
      out.write("                padding:8px 15px;\n");
      out.write("            }\n");
      out.write("            .header ul li a\n");
      out.write("            {\n");
      out.write("                text-decoration:none;\n");
      out.write("                color:white;\n");
      out.write("                font-size:small;\n");
      out.write("                font-weight:bold;\n");
      out.write("                font-family:arial;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .header ul li a:hover\n");
      out.write("            {\n");
      out.write("              \n");
      out.write("                opacity:0.7;\n");
      out.write("              \n");
      out.write("            }\n");
      out.write("            .search ul li{\n");
      out.write("                display: inline-block;\n");
      out.write("                padding:15px 6px;\n");
      out.write("            }\n");
      out.write("            .footer\n");
      out.write("            {\n");
      out.write("                position: absolute;\n");
      out.write("                bottom: 0px;\n");
      out.write("                width:100%;\n");
      out.write("                text-align:center;\n");
      out.write("                color:white;\n");
      out.write("                font-size:small;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image: url('images/1.jpg')\">\n");
      out.write("        <form>\n");
      out.write("            ");

            int freq=0;
            int neqfreq=0;
            
      out.write("\n");
      out.write("           \n");
      out.write("            <div class=\"search\">\n");
      out.write("                <ul>\n");
      out.write("                    <li style=\"font-weight:bold;font-size:x-large;color:white\">SearchBox</li>\n");
      out.write("                    <li><input style=\"font-size:small\" size=\"50\" placeholder=\"TYPE YOUR SEARCH HERE..\" type=\"text\" name=\"T1\" ></li>\n");
      out.write("                    <li><input style=\"padding:9px 15px;background-color: orange;color:white;border:1px none silver\"  type=\"submit\" name=\"btn\" value=\"Go\"></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <ul>\n");
      out.write("                    <li style=\"display: none\"><a href=\"about.jsp\">About This Project</a></li>\n");
      out.write("                     <li><a href=\"reg.jsp\">Forum</a></li>\n");
      out.write("                     <li><a href=\"aboutus.jsp\">About us</a></li>\n");
      out.write("                      <li><a href=\"signup.jsp\">Sign Up</a></li>\n");
      out.write("                      <li><a href=\"reg.jsp\">Sign In</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            ");

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
            
      out.write("\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <p>COPYRIGHT &copy; SEARCHBOX.ALL RIGHTS RESERVED</p>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
