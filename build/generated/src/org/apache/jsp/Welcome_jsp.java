package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Welcome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\t\r\n");
      out.write("<head>\r\n");
      out.write("\t<link href=\"cssmf.css\" rel=\"stylesheet\">\r\n");
      out.write("\t<link href=\"modal.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>\r\n");
      out.write("<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&amp;subset=latin,latin-ext'><link rel=\"stylesheet\" href=\"logstyle.css\">\r\n");
      out.write("<!-- partial -->\r\n");
      out.write("  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src=\"logscript.js\"></script>\r\n");
      out.write("\r\n");
      out.write(" <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write(" \r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Welcome</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body style=\"background-color: #fff\">\r\n");
      out.write("    \t<div class=\"topdiv\">\r\n");
      out.write("\t\t<marquee>At ASKDoc we are there for you at any time any place </marquee>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("    <div class=\"my\" align=\"center\" style=\"margin-top:  0.5%\">\r\n");
      out.write("\r\n");
      out.write("  <p><img src=\"images/logo1.png\" width=\"240\" height=\"240\"></p>\r\n");
      out.write("  <table width=\"100%\" border=\"0\" align=\"center\">\r\n");
      out.write("    <tbody>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <th width=\"33%\" height=\"156\" scope=\"col\">&nbsp;\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("         <!--LOGIN BUTTON-->    \r\n");
      out.write("            <a href=\"#modal\" class=\"modal-open\">\r\n");
      out.write("                <input type=\"submit\" value=\"LOGIN\" class=\"button\" ></a>\r\n");
      out.write("\t    </th>\r\n");
      out.write("        <th width=\"33%\" scope=\"col\">&nbsp;\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("    <!--SIGN UP BUTTON-->\r\n");
      out.write("    <a href=\"#modal1\" class=\"modal-open1\">\r\n");
      out.write("        <input type=\"submit\" value=\"SIGNUP\" class=\"button\">\r\n");
      out.write("        </a>\r\n");
      out.write("        </th>\r\n");
      out.write("        \r\n");
      out.write("        <!--Skip Button-->\r\n");
      out.write("        <th width=\"33%\" scope=\"col\">&nbsp;\r\n");
      out.write("\t\t  <input type=\"submit\" value=\"SKIP\" class=\"button\"></th>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </tbody>\r\n");
      out.write("  </table>\r\n");
      out.write("  <p>&nbsp;</p>\r\n");
      out.write("  <p>&nbsp; </p>\r\n");
      out.write("\t<div style=\"black\">\r\n");
      out.write("\t  \r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\t\r\n");
      out.write("    <div class=\"modal\" id=\"modal\">\r\n");
      out.write("    <div class=\"modal__content\">\r\n");
      out.write("      <a href=\"#\" class=\"modal__close\">&times;</a>\r\n");
      out.write("      \r\n");
      out.write("      <p class=\"modal_content\">\r\n");
      out.write("<form action=\"UserLogin\" method=\"post\" >\r\n");
      out.write("        <div class=\"materialContainer\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <div class=\"box\"> \r\n");
      out.write(" <a href=\"#\" class=\"modal__close\">&times;</a>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"title\">LOGIN</div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"input\">\r\n");
      out.write("         <label for=\"name\">Username</label>\r\n");
      out.write("         <input type=\"text\" name=\"uname\" id=\"name\">\r\n");
      out.write("         <span class=\"spin\"></span>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"input\">\r\n");
      out.write("         <label for=\"pass\">Password</label>\r\n");
      out.write("         <input type=\"password\" name=\"upass\" id=\"pass\">\r\n");
      out.write("         <span class=\"spin\"></span>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div >\r\n");
      out.write("         <button class=\"button\">GO</button> \r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("      <a href=\"\" class=\"pass-forgot\">Forgot your password?</a>\r\n");
      out.write("\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("        \r\n");
      out.write("      </form>\r\n");
      out.write("    </div>\r\n");
      out.write(" </div>\r\n");
      out.write("    \r\n");
      out.write("   <!--hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh-->\r\n");
      out.write("    <div class=\"modal1\" id=\"modal1\">\r\n");
      out.write("    <div class=\"modal__content1\">\r\n");
      out.write("      <a href=\"#\" class=\"modal__close1\">&times;</a>\r\n");
      out.write("      \r\n");
      out.write("      <p class=\"modal_content\">\r\n");
      out.write("<form action=\"UserLogin\" method=\"post\" >\r\n");
      out.write("        <div class=\"materialContainer\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <div class=\"box\"> \r\n");
      out.write(" <a href=\"#\" class=\"modal__close\">&times;</a>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"input\">\r\n");
      out.write("         <label for=\"name\">User</label>\r\n");
      out.write("         <input type=\"text\" name=\"uname\" id=\"name\">\r\n");
      out.write("         <span class=\"spin\"></span>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"input\">\r\n");
      out.write("         <label for=\"name\">User</label>\r\n");
      out.write("         <input type=\"text\" name=\"uname\" id=\"name\">\r\n");
      out.write("         <span class=\"spin\"></span>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"input\">\r\n");
      out.write("         <label for=\"name\">User</label>\r\n");
      out.write("         <input type=\"text\" name=\"uname\" id=\"name\">\r\n");
      out.write("         <span class=\"spin\"></span>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"input\">\r\n");
      out.write("         <label for=\"name\">User</label>\r\n");
      out.write("         <input type=\"text\" name=\"uname\" id=\"name\">\r\n");
      out.write("         <span class=\"spin\"></span>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"input\">\r\n");
      out.write("         <label for=\"pass\">Password</label>\r\n");
      out.write("         <input type=\"password\" name=\"upass\" id=\"pass\">\r\n");
      out.write("         <span class=\"spin\"></span>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div >\r\n");
      out.write("         <button class=\"button\">GO</button> \r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("      <a href=\"\" class=\"pass-forgot\">Forgot your password?</a>\r\n");
      out.write("\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("        \r\n");
      out.write("      </form>\r\n");
      out.write("    </div>\r\n");
      out.write(" </div>\r\n");
      out.write("    \r\n");
      out.write("\t \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
