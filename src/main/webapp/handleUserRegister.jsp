<html>
<head>
<title>Result Register Form</title>
</head>
<body>
<%
String val = request.getParameter("isSubmitted");
int isSubmitted = 0;
if (val != null) {
	isSubmitted = Integer.parseInt(val);
	if (isSubmitted == 1) {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		out.println("<p>Hi " + firstName + " " + lastName + "!, your submitted email is " + email + ".</p>");
	}
} else {
	out.println("Form is not allowed submitting!");
}
%>
<% if (isSubmitted == 0) { %>
<form action="handleUserRegister.jsp" method="post">
    <fieldset>
        <legend>User Information</legend>
        <label for="fistName">First Name</label>
        <input type="text" name="firstName" /> <br/>
        <label for="lastName">Last Name</label>
        <input type="text" name="lastName" /> <br/>
        <label for="email">Email</label>
        <input type="email" name="email" /> <br/>
        <input type="checkbox" name="isSubmitted" value="1"/> Is submitted?<br/>       
        <input type="submit" value="submit">
    </fieldset>
</form>
<% } %>
</body>
</html>