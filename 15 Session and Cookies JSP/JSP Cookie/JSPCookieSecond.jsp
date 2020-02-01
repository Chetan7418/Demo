<html>
<body>
<% String n=request.getParameter("uname"); 
			out.print("Welcome "+n); 
			Cookie ck=new Cookie("name",n);
			response.addCookie(ck);
%>
	<form action="http://localhost:8085/JSPCookieThird.jsp">
		</br><input type="submit" value="next">
	</form>
</body>
</html>
