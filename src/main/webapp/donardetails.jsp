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
    
var url="http://localhost:8080/charity_app_mavenweb/DonarDetailsServet";
$.getJSON(url,function(response){
    var list = response;



     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.customername + "</td>";
    //content += "<td>" + ld.password + "</td>";
    content += "<td>" + ld.phoneno  + "</td>";
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
<h3> DONOR DETAILS</h3>
<br>

<form onsubmit = "listDonation()"> </form> 
<br>
<div class="container-fluid">
   <div class="row">
       <div class="col">
           
           <table border="1" class="table table-condensed" id="tbl">
               <thead>
                   <tr>
                       <th>Username </th>
                      <!--  <th>Password</th>-->
                       <th>Phone Number</th>
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
<a href="?pageName=adminaccess.jsp">Back</a>
<br>


<br>
<br>
<a href="index.jsp">logout</a>

</head>
<body>

</body>
</html>