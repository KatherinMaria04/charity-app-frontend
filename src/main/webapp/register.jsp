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

<h2> REGISTRATION</h2>
<body style="text-align:center">

<form onsubmit="register()" >
<label>Email-ID:</label>
<input type="email" name="username" id="username" placeholder="Enter your Email-ID"  required autofocus />
<br/>
<br>
<label>Phone Number</label>
<input type="tel" name="phonenumber" id="phonenumber" placeholder="Enter phone number"required  />
<br/>
<br>

<label for="psw">Password:</label>
  <input type="password" id="password" name="psw" 
   placeholder="Enter Password"
  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
  title="Must contain at least one number and one uppercase and lowercase letter,
   and at least 8 or more characters" required/>
 <br /> <br/>
<br>
<input type="submit"
            value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">clear
        </button>
        <br />

<br/>
Existing User ? <a href="?pageName=login.jsp">Login</a> <br/>
<a href="?pageName=css.jsp">Home</a>
</form>
<div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>

<script>
function register()
{
	//alert('hi')
 event.preventDefault();

 var username = document.getElementById("username").value;
 var phonenumber=document.getElementById("phonenumber").value;
 var password=document.getElementById("password").value;
 //alert("entering");
 var formData = "username=" + username + "&phonenumber="+ phonenumber +"&password="+password; 
 console.log(formData);
 //alert(formData);

 var url="http://localhost:8080/charity_app_mavenweb/RegisterServlet?"+formData;
 console.log(url);
 
 //alert(url);
 var formData = {};
 $.get(url, function(response){
         console.log(response);
         var msg = JSON.parse(response);
         if (msg.errorMessage!=null) {
             alert("Invalid Username/Password");
         } else {
             alert("register successfully");
             window.location.href ="?pageName=login.jsp";
         }
         
 });
}

</script>
</body>
</html>
