<%@ page import="java.sql.*" %>
<html>
<head>
<title>Add Book</title>
</head>
<body bgcolor="blue">
<form method="post" action="showbook.jsp">
<table>
<tr>
<td>Book Name</td><td><input type="text" name="bname" id="id" size="35" /></td>
</tr>
<tr>
<td>Author</td>
<td><input type=text name="bauthor" size="35" /></td>
</tr>
<tr>
<td>Book Publication</td>
<td><input type="text" name="publi" size="35" /></td>
</tr>
<td></td>
<td><input type="submit" name="insert" value="Save"></td>
</tr>
</table>
</form>
</body>
</html>
