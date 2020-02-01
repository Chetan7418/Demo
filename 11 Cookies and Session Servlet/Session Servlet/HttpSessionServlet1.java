import java.io.*; 
import javax.servlet.*; 
import javax.servlet.http.*; 
 public class HttpSessionServlet1 extends HttpServlet { 
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{ 
		try{ 
				response.setContentType("text/html"); 
				PrintWriter out = response.getWriter(); 
				String n=request.getParameter("unm"); 
				out.print("Welcome "+n); 
				HttpSession session=request.getSession();
				session.setAttribute("uname",n);
				out.print("<br/><a href='HttpSessionServlet2'>visit</a>");
				out.close(); 
			}catch(Exception e){System.out.println(e);} 
	} 
}
