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
<script>

function listDonation(){
    
var url="http://localhost:8080/charity_app_mavenweb/ListAdminDetails";
$.getJSON(url,function(response){
    var list = response;



     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.requesttype + "</td>";
    content += "<td>" + ld.amountrequested + "</td>";
    content += "<td>" + ld.targetamount + "</td>";
    content += "</tr>";
}
console.log(content);

document.getElementById("tbody").innerHTML =  content;

});
}

</script>
</head>
<body>
<br>
<br>
<br>

<h3> DONATIONS LIST</h3>



<form onsubmit = "listDonation()"> </form> 
<div class="container-fluid">
   <div class="row">
       <div class="col">
           
           <table border="1" class="table table-condensed" id="tbl">
               <thead>
                   <tr>
                       <th>RequestType</th>
                       <th>AmountRequested</th>
                       <th>TargetAmount</th>
                   </tr>
               </thead>
               <tbody id="tbody">
               </tbody>
           </table>
       </div>
   </div>
</div>
<script>
listDonation();
</script>
<a href="?pageName=home.jsp">Back</a>
<br>
<br>
<br>
<a href="?pageName=index.jsp">logout</a>

</body>
</html>