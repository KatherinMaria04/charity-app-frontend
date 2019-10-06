<html>
<body>
<h2>Revature Charity </h2>

<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Fixed navbar -->
 <title>REVATURE CHARITY TRUST</title>
 

<script src="js/bootstrap.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<body style="text-align:center">
<br>
<br>
<br>
<p><h2>HI!!!! WELCOME TO CHARITY APPLICATION</h2></p>
<div class="view" id="view">
        <%
            String pageName = request.getParameter("pageName");

            if (pageName == null || "".equals(pageName)) {
                pageName = "css.jsp";
            }
           //  out.println(pageName);
        %>

        <jsp:include page="<%=pageName%>"></jsp:include>
    </div>
	
	
	</body>
	
</html>
