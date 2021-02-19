package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import database.DbConn;

public final class BookDoc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Slot Booked</title>\n");
      out.write("    </head>\n");
      out.write("   <body>\n");
      out.write("        ");
String username=(String)session.getAttribute("userr");
        String doc=(String)session.getAttribute("bookdoc");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");
    }
           
            
            String booking=request.getParameter("Book");
            
            System.out.println(booking);
            
            Statement st=DbConn.getStatement();
          String q= "UPDATE slot SET "+booking+" = '"+username+"'  where doctor='"+doc+"' ";
    int t=0;
   
        try {
            
             t= st.executeUpdate(q);
            
            } 
        catch (Exception ex) {
            System.out.print(ex);
        }
           
        
      out.write('\n');
         if(t==1){
    

      out.write("\n");
      out.write("        <h2>THANK YOU User<br>\n");
      out.write("            ");
  }
                else   {
            
      out.write("\n");
      out.write("                      <h2> Sorry Your Slot cant Booked</h2>\n");
      out.write("            ");

                        }
            
      out.write("\n");
      out.write("            <form action=\"UserHomePage.jsp\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"HOME PAGE\"></form>\n");
      out.write("        </h2>\n");
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
