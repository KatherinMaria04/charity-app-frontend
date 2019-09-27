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
<br>
<h2> Add Donations</h2>
<br>
<script>
function addRequest(){
    event.preventDefault();
    var requestType  = document.getElementById("requestType").value;
    var amountrequested  = document.getElementById("amountRequested").value;
    var  targetamount = document.getElementById("targetAmount").value;
    var formData = "requestType=" + requestType + "&amountRequested=" + amountrequested + "&targetAmount="+ targetamount;
    console.log(formData);
    var url="http://localhost:8080/charity_app_mavenweb/AddDonationRequestController?"+formData;
    	console.log(url);
    var formData = {};
    $.get(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Invalid entry");
            } else {
                alert("Request added successfully");
                window.location.href = "?pageName=listdonations.jsp";
            }
            
    });
  }
    

</script>
<form onsubmit="addRequest()">

<label>RequestType:</label>
<input type="text" name="request Type" id="requestType" placeholder="Enter requestType"  required autofocus />
<br/>
<br>
<label>AmountRequested:</label>
<input type="text" name="amount Requested" id="amountRequested" placeholder="Enter amount"  required />
<br/>
<br>
 <label>TragetAmount:</label>
<input type="text" name="target Amount" id="targetAmount" placeholder="Enter amount"  required />
<br/>
<br>
<button type="submit">Submit</button>
</form>
</form>
<br/>
<a href="?pagename=index.jsp">Home</a>


</body>
</html>