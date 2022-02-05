<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Hello JSP</h2>
Current Time: <%= java.util.Calendar.getInstance().getTime() %><br/>
<%! int data = 50; %>
<%= "Value of the variable is: " + data %><br/>
<%!
int cube(int n) {
	return n*n*n;
}
%>
<%= "Cube of 3 is: " + cube(3) %><br/>
<% out.print("Welcome to jsp"); %><br/>
<%= "Welcome to jsp" %><br/>
<% out.print(2*5); %><br/>
<form action="index.jsp">
<input type="text" name="uname"/>
<input type="submit" value="go"/>
</form><br/>
<%
String name = request.getParameter("uname");
out.print("Welcome " + name);
%><br/>
<%= "Welcome " + request.getParameter("uname") %>
</body>
</html>