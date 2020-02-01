import java.io.*;
import javax.servlet.*;
import java.util.*;
import javax.servlet.http.*;
import java.sql.*;
public class pro extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
				String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
      String DB_URL="jdbc:mysql://127.0.0.1:3306/TEMP";

      //  Database credentials
      String USER = "root";
      String PASS = "";

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();	
        String name = request.getParameter("name");
        String rollno = request.getParameter("rollno");
       String marks = request.getParameter("marks");
        try {
			
			
            // loading drivers for access
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\chinna\\bookinfo.accdb");
Statement st = con.createStatement();
int i=st.executeUpdate("insert into reg values ('" + name + "','" + rollno + "','" + marks + "')");
           out.print("Data Inserted");
}
   catch(Exception se) {
            se.printStackTrace();
 }
try{
            // loading drivers for mysql
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\chinna\\bookinfo.accdb");
 PreparedStatement ps=con.prepareStatement("select * from reg where rollno=?");  
ps.setString(2,rollno);  
ResultSet rs=ps.executeQuery();  
while(rs.next())  
{  
out.print("Name:"+rs.getString(1));
out.print("Rollno:"+rs.getString(2));
out.print("Marks:"+rs.getString(3));
 out.print("Data searched");                
}}  
  catch(Exception se) {
            se.printStackTrace();
 }}}
