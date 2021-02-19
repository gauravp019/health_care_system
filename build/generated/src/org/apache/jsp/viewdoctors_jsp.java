package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import database.DbConn;
import java.sql.Statement;

public final class viewdoctors_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>VIEW DOCTOR</title>\n");
      out.write("    </head>\n");
      out.write("      ");
String username=(String)session.getAttribute("username");
     
    if (username==null) 
    {
    response.sendRedirect("Welcome.jsp");   
    }
    session.setAttribute("userr",username);

      out.write("\n");
      out.write("  <body><h1>Hello User ");
      out.print(username);
      out.write("!</h1>\n");
      out.write("       <div> \n");
      out.write("           <form action=\"UserHomePage.jsp\" method=\"post\">\n");
      out.write("       <input type=\"submit\" value=\"HOME\">\n");
      out.write("       </form>\n");
      out.write("        </div>\n");
      out.write("      ");


try{
        Statement st=DbConn.getStatement();

        String q="Select * from doct ";
      ResultSet rs,ra;
         rs= st.executeQuery(q);
        
        
      while(rs.next())
        {
        
      out.write("\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        <b>Dr.");
      out.print(rs.getString(1));
      out.write("</b>\n");
      out.write("            ");
 session.setAttribute("bookdoc",rs.getString(1));
      out.write("\n");
      out.write("        <b>Contact</b>:");
      out.print(rs.getString(4));
      out.write("<br>\n");
      out.write("        <b>Email</b>:");
      out.print(rs.getString(3));
      out.write("<br>\n");
      out.write("        <b>Work Experience</b>:");
      out.print(rs.getInt(8));
      out.write("<br>\n");
      out.write("        <b> Specialist</b>:");
      out.print(rs.getString(9));
      out.write("<br>\n");
      out.write("       <br/>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("          ");

                String a="Select booked from booked where user='"+username+"' ";

                 ra= st.executeQuery(a);
                  
          String check="No";
          
          
if(ra.getString(1).equals(check))
{

      out.write(" \n");
      out.write("<form action=\"BookSlot.jsp\">\n");
      out.write("    \n");
      out.write("    <input type=\"submit\" value=\"Book Slot\" >\n");
      out.write("      \n");
      out.write("</form>\n");
      out.write("      <br>\n");

        }
        
      out.write("\n");
      out.write("    \n");
      out.write("      \n");
      out.write("     \n");
      out.write("    \n");
      out.write("       ");

           }
        
       
            } 
catch (Exception ex)
            { System.out.print(ex);}
   
    
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
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
