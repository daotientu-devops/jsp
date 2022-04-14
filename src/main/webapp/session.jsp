<%@ page import="java.io.*,java.util.*"%>
<%
Date creationTime = new Date(session.getCreationTime());
Date lastaccessTime = new Date(session.getLastAccessedTime());
String title = "My website";
Integer visit = 0;
String visitCount = "visit";
String userID = "XYZ";
String userIDCount = "userID";
if (session.isNew())
{
	title = "My website";
	session.setAttribute(userIDCount, userID);
	session.setAttribute(visitCount, visit);
}
visit = (Integer)session.getAttribute(visitCount);
visit = visit + 1;
userID = (String)session.getAttribute(userIDCount);
session.setAttribute(visitCount, visit);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session tracking</title>
</head>
<body>
<table width = "75%" border = "2" align = "left">
        <tr>
            <th>SessionInfo</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Session ID</td>
            <td><% out.println(session.getId()); %></td>
        </tr>
        <tr>
            <td>Session Creation Time</td>
            <td><% out.println(creationTime); %></td>
        </tr>
        <tr>
            <td>Last Access Time</td>
            <td><% out.println(lastaccessTime); %></td>
        </tr>
        <tr>
            <td>User ID</td>
            <td><% out.println(userID); %></td>
        </tr>
        <tr>
            <td>No of visits</td>
            <td><% out.println(visit); %></td>
        </tr>
</table>
</body>
</html>