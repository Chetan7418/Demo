<html>
<body>
<%   
Cookie ck[]=request.getCookies(); 
			out.print("Hello "+ck[0].getValue());
%>
</body>
</html>
