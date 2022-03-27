<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC ""-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<style>
label{margin-right:20px}
input{margin-top:5px}
</style>
</head>
<body>
<h1>Register Form</h1>
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
</body>
</html>