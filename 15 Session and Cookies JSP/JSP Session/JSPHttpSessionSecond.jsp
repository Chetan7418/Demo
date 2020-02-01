<html>
<body>
<%   String name=request.getParameter("uname");  
out.print("Welcome "+ name );  
session.setAttribute("user",name);  
%>
<form action="http://localhost:8085/JSPHttpSessionThird.jsp">
</br><input type="submit" value="next">
</form>
</body>
</html>
