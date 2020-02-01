// Loading required libraries
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
 
public class DatabaseAccess extends HttpServlet{
   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
   
      // JDBC driver name and database URL
      String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
      String DB_URL="jdbc:mysql://127.0.0.1:3306/TEMP";

      //  Database credentials
      String USER = "root";
      String PASS = "";

      // Set response content type
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      String title = "Database Example";
      
      String docType =
         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
      
      out.println(docType +
         "<html>\n" +
         "<head><title>" + title + "</title></head>\n" +
         "<body bgcolor = \"#f0f0f0\">\n" +
         "<h1 align = \"center\">" + title + "</h1>\n");
      try {
        
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection conn=DriverManager.getConnection("jdbc:ucanaccess://C://Suraj//empdb.accdb");
		 

		 
         // Execute SQL query
         Statement stmt = conn.createStatement();
         String sql;
         sql = "SELECT * FROM emp";
         ResultSet rs = stmt.executeQuery(sql);

         // Extract data from result set
         while(rs.next()){
			 
            //Retrieve by column name
            int id  = rs.getInt("ID");
            
            String name = rs.getString("Name");
			String last = rs.getString("Last");
			int age = rs.getInt("Age");
   
			
			out.print("<table border=3>");
out.print("<th>Id</th><th>First Name</th><th>Last Name</th><th>Age</th>");

//Retrieve by column name
out.print("<tr>");
//Display values
out.print("<td>" + id+"</td>");
out.print("<td>" + name+"</td>");
out.print("<td>" + last+"</td>");
out.print("<td>" + age+"</td>");
out.print("</tr>");
out.print("</table>");
		
         }
         out.println("</body></html>");

         // Clean-up environment
         rs.close();
         stmt.close();
         conn.close();
      } catch(SQLException se) {
		  out.println("<h1 align = \"center\">" + se + "</h1>");
         //Handle errors for JDBC
         //se.printStackTrace();
      } catch(Exception e) {
		  out.println("<h1 align = \"center\">" + e + "</h1>");
         //Handle errors for Class.forName
         //e.printStackTrace();
      } 
   }
  
    public void destroy()
  {
      // do nothing.
  }
} 