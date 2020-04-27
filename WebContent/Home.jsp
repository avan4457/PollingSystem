<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "polling.Models.User" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="HomeStyle.css" >
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home | Polling</title>
</head>
<body>
<%
User user = new User();
user = (User)request.getAttribute("user");

String res = "";
res = (String)request.getAttribute("msg");
if(res == null)
	res = "Modify or remove your profile";
%>
<div id="page-body">
<form action="EditDetailsServlet" method="POST">

<div class="form-group" id="frm-left">
<h1>Login Details</h1><br><br>
Name: <input type="text" name="name" value=<%=user.getName() %> class="form-control" /> <br>
NIC: <%=user.getNic() %><br><br>
Gender: <%=user.getGender() %><br><br>
Email: <input type="text" name="email" value=<%=user.getEmail() %> readonly="readonly" class="form-control" /><br><br>
<h4>Change Password >></h4>
Current Password: <input type="password" name="crtPwd" class="form-control" />*Required<br>
New Password: <input type="password" name="newPwd" class="form-control" /><br>
Phone Number: <input type="text" name="phone" value=<%=user.getPhoneNumber() %> class="form-control" /><br><br>
<input type="submit" name="submit" value="Save" class="btn btn-primary" style="float:center;margin-left:5px;" />
<input type="submit" name="submit" value="Delete" class="btn btn-primary" style="float:left;background-color:red;" />
<p><%=res %></p>
</div>
</form>

<form action="DirectUserServlet" method="POST">
<div id="UserType">
<h2>Select Who You Are :</h2><br><h3>
<input type="submit" name="choose" value="VOTER" /><br><br>
or
<br><br><input type="submit" name="choose" value="CANDIDATE" />
</h3>
</div>
</form>

<div id="images">
<img alt="" src="" id="img1">
</div>

</div>
</body>
</html>