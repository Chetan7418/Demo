<%@ page import ="java.sql.*" %>
<%
String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
      String DB_URL="jdbc:mysql://127.0.0.1:3306/TEMP";

      //  Database credentials
      String USER = "root";
      String PASS = "";
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Suraj\\studentinfo.accdb");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from suraj");
out.print("<table border=2>");
out.print("<th>First Name</th><th>Last Name</th><th>Department</th><th>Class</th><th>Marks</th>");
while(rs.next()){
//Retrieve by column name
out.print("<tr>");
//Display values
out.print("<td>" + rs.getString(1)+"</td>");
out.print("<td>" + rs.getString(2)+"</td>");
out.print("<td>" + rs.getString(3)+"</td>");
out.print("<td>" + rs.getString(4)+"</td>");
out.print("<td>" + rs.getString(5)+"</td>");
out.print("</tr>");
}
out.print("</table>");
rs.close();
%>
