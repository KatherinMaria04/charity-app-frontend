<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>

</head>

<body style="text-align:center">
<br>	`
<br>
<br>
<br>
<h2> USER LOGIN</h2>
<br>
<script>

function login(){
    event.preventDefault();
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    
    var formData = "username=" + username + "&password=" + password ;
    console.log(formData);
    var url="http://localhost:8080/charity_app_mavenweb/LoginServlet?"+formData;
    console.log(url);
    var formData = {};
    $.get(url, function(response){
            console.log(response);
            console.log(response.errorMessage);
            var msg=JSON.parse(response);
            
            
            if (msg.errorMessage!=null) {
                alert("Invalid Username/Password");
            } else {
                alert("login successful");
                window.location.href = "?pageName=home.jsp";
            }
            
    });
       
    
}
</script>


<form onsubmit= "login()">
<label>Username:</label>
<input type="text" name="username" id="username" placeholder="Enter username"  required autofocus />
<br/>
<br>
<label>Password:</label>
<input type="password" name="password" id="password" placeholder="Enter Password"  required />
<br/>
<br>
<input type="submit"
            value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">clear
        </button>
        <br />
</form>
<br/>

<br>
<br>
<br>
<a href="?pageName=index.jsp">Home</a>


</body>
</html>