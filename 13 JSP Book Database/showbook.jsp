<%@ page import ="java.sql.*" %>
<%	
String bnm = request.getParameter("bname");
String bauth = request.getParameter("bauthor");
String pn = request.getParameter("publi");

Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\chinna\\bookdb.accdb");
Statement st = con.createStatement();
int i=st.executeUpdate("insert into book values ('" + bnm + "','" + bauth + "','" + pn + "')");
if (i > 0) {
out.print("Insert Successfull!"+"<a href='showdata.jsp'>Show data</a>");
} else {
response.sendRedirect("addbook.jsp");
}
%>
