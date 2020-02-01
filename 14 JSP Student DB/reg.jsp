<%@ page import="java.sql.*" %>
<html>
<head>
<title>Registration</title>
</head>
<body bgcolor="pink">
<form method="post" action="registration.jsp">
<table>
<tr>
<td>First Name</td><td><input type="text" name="fname" id="id" size="35" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lname" size="35" /></td>
</tr>
<tr>
<td>Department</td>
<td><input type="text" name="dept" size="35" /></td>
</tr>
<tr>
<td>Class</td>
<td><input type="text" name="cls" size="35" /></td>
</tr>
<tr>
<td>Marks</td>
<td><input type="number" name="marks" size="35" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="insert" value="Save"></td>
</tr>
</table>
</form>
</body>
</html>
