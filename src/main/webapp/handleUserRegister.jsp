<%
// Creating cookies for username, age and gender
Cookie username = new Cookie("username", request.getParameter("username"));
Cookie age = new Cookie("age", request.getParameter("age"));
Cookie gender = new Cookie("gender", request.getParameter("gender"));
// Setting expiry date
username.setMaxAge(60*60*24);
age.setMaxAge(60*60*24);
gender.setMaxAge(60*60*24);
// Add both the cookies in the response header
response.addCookie(username);
response.addCookie(age);
response.addCookie(gender);
%>
<html>
<head>
	<title>Set cookies</title>
</head>
<body>
	<h2>-- Here we are setting cookies --</h2>
	<ul>
		<li>
			<p>
				<b>Username: </b>
				<%= request.getParameter("username")  %>
			</p>	
		</li>
		<li>
			<p>
				<b>Age: </b>
				<%= request.getParameter("age")  %>
			</p>	
		</li>
		<li>
			<p>
				<b>Gender: </b>
				<%= request.getParameter("gender")  %>
			</p>	
		</li>
	</ul>
	<p><a href="display.jsp">Next page will read the cookies</a></p>
</body>
</html>