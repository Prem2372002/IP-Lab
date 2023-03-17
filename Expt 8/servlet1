import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class WelcomeServlet extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user=request.getParameter("t1");
        Cookie c[]=request.getCookies();
        boolean flag=false;
      for (Cookie c1 : c) {
          if (c1.getValue().equals(user)) {
              flag=true;
              break;
          }
      }
        String s="";
        if(flag)
        {
            s="YOU ALREADY LOGIN";
        }
        else
        {
            Cookie ck=new Cookie(user,user);
            response.addCookie(ck);
            s="WELCOME "+user;
        }
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet usercookie</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> " + s + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
