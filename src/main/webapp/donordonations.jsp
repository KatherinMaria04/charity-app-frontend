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
<body style="text-align:center">
<br>
<br>
<br>
<h2>DONOR DONATION</h2>

<script>
function addRequest(){
	//alert('entering');
    event.preventDefault();
    var UserName  = document.getElementById("UserName").value;
    var RequestType  = document.getElementById("RequestType").value;
    var DonatingAmount = document.getElementById("DonatingAmount").value;
    //alert('hello');
  
    var formData = "UserName=" + UserName + "&RequestType=" + RequestType + "&DonatingAmount="+ DonatingAmount;
    console.log(formData);
    //alert(formData);
    var url="http://localhost:8080/Charity_app/DonarFund?"+formData;
	console.log(url);
	//alert(url);
    var formData = {};
    $.get(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Invalid entry");
            } else {
                alert("thank you for your donation");
                //window.location.href = "header.jsp";
            }
            
    });
  }
    

</script>
<form onsubmit="addRequest()">

<label>Username:</label>
<input type="text" name="UserName" id="UserName" placeholder="Enter UserName"  required autofocus />
<br/>
<br>
<label>RequestType:</label>
<input type="text" name="RequestType" id="RequestType" placeholder="Enter RequestType"  required />
<br/>
<br>
<label>DonatingAmount:</label>
<input type="text" name="DonatingAmount" id="DonatingAmount" placeholder="Enter amount"  required />
<br/>
<br>

<input type="submit"
            value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">clear
        </button>
        <br />
</form>
<br>
<a href="css.jsp">logout</a>

</body>
</html>