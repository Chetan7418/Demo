<%@ page import ="java.sql.*" %>
<%	
String first = request.getParameter("fname");
String last = request.getParameter("lname");
String depart = request.getParameter("dept");
String classnm = request.getParameter("cls");
String mark = request.getParameter("marks");

Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Suraj\\studentinfo.accdb");
Statement st = con.createStatement();
int i=st.executeUpdate("insert into suraj values ('" + first + "','" + last + "','" + depart + "','" + classnm + "','" + mark + "')");
if (i > 0) {
out.print("Insert Successfull!"+"<a href='show.jsp'>Show data</a>");
} else {
response.sendRedirect("addbook.jsp");
}
%>
