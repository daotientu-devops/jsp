<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Hello JSP</h2>
Sorry following exception occured:<%= exception %><br/>
<form action="process.jsp">
No1: <input type="number" name="n1"/>><br/>
No2: <input type="number" name="n2"/>><br/>
<input type="submit" value="divide"/>
</form><br/>
<jsp:forward page="printdate.jsp">
	<jsp:param name="name" value="javatpoint.com"/>
</jsp:forward>
<%@ page import="java.util.Date" %>
Today is: <%= new Date() %><br/>
<% this.log("message 2"); %>
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
<%
session.setAttribute("user", name);
pageContext.setAttribute("user", name, PageContext.SESSION_SCOPE);
%><br/>
<a href="second.jsp">Second jsp page</a>
</body>
</html>