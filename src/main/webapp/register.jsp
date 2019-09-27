<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>
</head>
<br>
<br>
<br>
<br>
<h2> REGISTRATION</h2>
<body style="text-align:center">
<form onsubmit="register()" >
<label>Username:</label>
<input type="text" name="username" id="username" placeholder="Enter username" required autofocus />
<br/>
<br>
<label>Phone Number</label>
<input type="tel" name="phonenumber" id="phonenumber" placeholder="Enter phone number"required  />
<br/>
<br>
<label>Password:</label>
<input type="password" name="password" id="password" placeholder="Enter Password" required />
<br/>
<br>
<input type="submit"
            value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">clear
        </button>
        <br />

<br/>
Existing User ? <a href="login.jsp">Login</a> <br/>
<a href="index.jsp">Home</a>
</form>
<script>
function register()
{
 event.preventDefault();
 var username = document.getElementById("username").value;
 var phonenumber=document.getElementById("phonenumber").value;
 var password=document.getElementById("password").value;
 var formData = "username=" + username + "&phonenumber="+ phonenumber +"&password="+password; 
 console.log(formData);
 var url="http://localhost:8080/charity_app_mavenweb/RegisterServlet?"+formData;
 console.log(url);
 var formData = {};
 $.get(url, function(response){
         console.log(response);
         var msg = JSON.parse(response);
         if (msg.errorMessage!=null) {
             alert("Invalid Username/Password");
         } else {
             alert("register successfully");
             window.location.href = "?pageName=login.jsp";
         }
         
 });
}
</script>
</body>
</html>
