<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <link rel="stylesheet" href="indexStyles.css">
   <style>
  .jumbotron {
    background-color: #5F9EA0;
    color: #fff;
  }
  </style>
<title>Welcome | Polling</title>
</head>
<body>
<div class="jumbotron text-center">
<h1>National Polling Companion</h1>
</div>

<% 
String msg = "*required";
String res = "";
res = (String)request.getAttribute("msg");
if(res == null)
	res = "Register now!";
%>

<div id="page-body">
<form action="AddUserServlet" method="POST">
<div class="form-group" id="frmSignup">
<h2 style="text-align:center;"><b>New? Register Now..</b></h2>
Full Name : <input type="Text" name="name" class="form-control" placeholder="eg:John Smith"/><%=msg %><br><br>
NIC No : <input type="text" name="nic" class="form-control" placeholder="eg:982033567v"/><%=msg %><br><br>
Email : <input type="text" name="email" class="form-control" placeholder="eg:john@sample.com" /><%=msg %><br><br>
Password : <input type="password" name="password" class="form-control" placeholder="New password.." /><%=msg %><br><br>
Phone Number : <input type="text" name="phone" class="form-control" placeholder="eg:071-1234578"/><br><br>
Gender :<input type="radio" name="gender" value="Female"> Female 
<input type="radio" name="gender" value="Male"> Male<br><br>
<input type="submit" name="submit" value="Register" class="btn btn-primary">
<p>*<%=res %></p>
</div>
</form>

<%
String resu = "";
resu = (String)request.getAttribute("log");
if(resu == null)
	resu = "Login now!";
%>

<div id="page-divider" class="vl"></div>
<form action="LogInUserServlet" method="POST">
<div class="form-group" id="frmLogin">
<h2 style="text-align:center;"><b>Login..</b></h2>
Email : <input type="text" name="email" class="form-control" placeholder="eg:john@sample.com" /><br><br>
Password : <input type="password" name="password" class="form-control" placeholder="Password.." /><br><br>
<input type="submit" name="submit" value="Login" class="btn btn-primary"><p><%=resu %></p>
</div>
</form>
</div>

</body>
</html>