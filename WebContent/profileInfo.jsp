<!DOCTYPE html>
<%@page import="com.intellyzen.test.GlobalCons"%>
<%@page import="com.intellyzen.test.GooglePojo"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
</head>

<body>
<%GooglePojo gp = (GooglePojo)request.getAttribute(GlobalCons.AUTH); %>
	<h1>User Profile Information</h1>
	<h2>
	<input type="hidden" value="<%=gp.getName()%>" id="userName">
		First Name :<span id="firstName"></span>
	</h2>
	<h2>
		Last Name : <span id="lastName"></span>
	</h2>
	<h2>
		Email Address : <%=gp.getEmail()%>
	</h2>

</body>
<!-- <script type="text/javascript">
	var url = window.location.href;

	var parameters = url.substring(59);
	var params = parameters.split('&');
	var name = params[0];
	var nameSplit = name.split('%20');
	var firstname = nameSplit[0];
	var lastname = nameSplit[1];
	var email = params[1];
	var emailAddress = email.substring(6);

	console.log(firstname);
	console.log(lastname);
	console.log(emailAddress);

	document.getElementById("firstName").innerHTML = firstname;
	document.getElementById("lastName").innerHTML = lastname;
	document.getElementById("email").innerHTML = emailAddress;
</script> -->
<script type="text/javascript">
var name=document.getElementById('userName').value;
var nameSplit = name.split(' ');
var firstname = nameSplit[0];
var lastname = nameSplit[1];
document.getElementById("firstName").innerHTML = firstname;
document.getElementById("lastName").innerHTML = lastname;
</script>
</html>