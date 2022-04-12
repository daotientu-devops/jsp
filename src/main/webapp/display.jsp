<html>
<head>
	<title>Read cookies</title>
</head>
<body>
	<h1>Reading cookies that we set</h1>
	<%
	// Init cookie
	Cookie[] my_cookies = null;
	// Get an array of cookies associated with the this domain
	my_cookies = request.getCookies();
	if (my_cookies != null) {
		out.println("<h2>Found cookies name and value</h2>");
		for (int i = 0; i < my_cookies.length; i++) {
			out.println("Name: " + my_cookies[i].getName() + ", ");
			out.println("Value: " + my_cookies[i].getValue() + "<br/>");
		}
	} else {
		out.println("<h2>No cookies founds</h2>");
	}
	%>
</body>
</html>