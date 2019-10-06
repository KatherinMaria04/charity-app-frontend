<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN LOGIN</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>
 
</head>
<body style="text-align:center">
<br>
<br>
<br>
<br>
<h3> ADMIN LOGIN</h3>
<br>
<script>

function login(){
	//alert("entering")
    event.preventDefault();
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    
    var formData = "username=" + username + "&password=" + password ;
    console.log(formData);
    var url="http://localhost:8080/charity_app_mavenweb/AdminLoginServlet?"+formData;
    console.log(url);
    //alert(url);
    var formData = {};
   // alert(formData);
    $.get(url, function(response){
            console.log(response);
            console.log(response.errorMessage);
            var msg=JSON.parse(response);
            //alert(msg);
            
            if (msg.errorMessage!=null) {
                alert("Invalid Username/Password");
            } else {
                alert("logged in successfully");
                window.location.href ="?pageName=adminaccess.jsp";
            }
            
    });
       
    
}
</script>


 <form onsubmit= "login()">

<label>Email-ID:</label>
<input type="email" name="username" id="username" placeholder="Enter your email-id"  required autofocus />
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
</form>
<br/>
<a href="?pagename=css.jsp">Home</a>
<br>
<br>

</body>
</html>

