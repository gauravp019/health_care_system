package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import database.DbConn;

public final class chatbox_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" >\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css\">\n");
      out.write("<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>\n");
      out.write("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.3/jquery.mCustomScrollbar.min.css'>\n");
      out.write("<link rel=\"stylesheet\" href=\"chatboxstyle.css\">\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Chat With US</title>\n");
      out.write("    </head>\n");
      out.write("     <body style=\"background-color: #DEF2F1;\">\n");
      out.write("         <div class=\"chat\">\n");
      out.write("  <div class=\"chat-title\">\n");
      out.write("    <h1>CHAT WITH US</h1>\n");
      out.write("    <h2>AskDoc</h2>\n");
      out.write("    <figure class=\"avatar\">\n");
      out.write("        <img src=\"images/logo1.png\"/></figure>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("             \n");
      out.write("   <div class=\"messages\">\n");
      out.write("    <div class=\"messages-content\"></div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"message-box\">\n");
      out.write("      <form action=\"Chat\" method=\"post\"> \n");
      out.write("        <textarea type=\"text\" class=\"message-input\" placeholder=\"Type message...\" name=\"search\"></textarea>\n");
      out.write("    <button type=\"submit\" class=\"message-submit\">Send</button>\n");
      out.write("    ");

        String chat=(String)session.getAttribute("chat");
     System.out.print(chat);
    if (chat==null) 
    {
    
      out.write("\n");
      out.write("    SEARCH VALID\n");
      out.write("    ");
  
    }
    
      out.write("\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("             </div>\n");
      out.write("         <div class=\"bg\"></div>\n");
      out.write("              \n");
      out.write("         \n");
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
