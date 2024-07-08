
<%@include file="api.jsp" %>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- CSS FILES -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-icons.css" rel="stylesheet">
<link href="css/templatemo-kind-heart-charity.css" rel="stylesheet">
<title>HomePage</title>
<!-- CSS FILES -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-icons.css" rel="stylesheet">
<link href="css/templatemo-kind-heart-charity.css" rel="stylesheet">

<style>
</style>
</head>
<body id="section_1">
	<nav class="navbar navbar-expand-lg bg-light shadow-lg">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">
			<img src="images/logo.jpg" class="logo img-fluid" alt="WFM"> 
			<span>Wasted Food Management 
			<small>Non-profit Organization</small>
			</span>
			</a>
			<button class="navbar-toggler" type="button"
			 data-bs-toggle="collapse" data-bs-target="#navbarNav"
			 aria-controls="navbarNav" aria-expanded="false"
			 aria-label="Toggle navigation">
			 <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link click-scroll" href="">Home</a></li>
					<li class="nav-item"><a class="nav-link click-scroll" href="">Statistics</a></li>
					<li class="nav-item"><a class="nav-link click-scroll" href="upload.jsp">Upload</a></li>
					<li class="nav-item"><a class="nav-link click-scroll" href="request.jsp">Request</a></li>
					<li class="nav-item dropdown"><a
						     class="nav-link click-scroll dropdown-toggle" href="#section_5"
						     id="navbarLightDropdownMenuLink" role="button"
						     data-bs-toggle="dropdown" aria-expanded="false">News</a>
						   <ul class="dropdown-menu dropdown-menu-light"
						     aria-labelledby="navbarLightDropdownMenuLink">
					         <li><a class="dropdown-item" href="#">News Listing</a></li> 
					         <li><a class="dropdown-item" href="#">News Detail</a></li>
	     		          </ul> 
	     		   </li>
		 	   <li class="nav-item"><a class="nav-link click-scroll" href="">Logout</a></li>
		   </ul>
	   </div>
   </div>
</nav>
 <form action="userhomepage" method="post">
		<input type="search" name="imageid" placeholder="search"
			style="margin-bottom: 2%; margin-top: 0%; width: 50%; border-color: green; border-radius: 10px; padding: 10px; margin-left: 25%;">
			<button>search</button>
	
     </form>
 


	<%
	   
	
	    	String imgFileNmae=(String)request.getAttribute("img");
		    String imgid=(String)request.getAttribute("id");
	
		
	%>

    <div align="center">
       <table border="Spx" style="width:400px;">
       <tr>
      <th>image id</th>
         <th>image </th> 
           
           
       </tr>
       <%
       if(imgFileNmae!="" && imgid!=""){
       
       %>
        <tr>
           <td><%=imgid %></td>
           <td>
         <button type="button" onclick="show()" id="btnID"><img  id="image" style="height:50px;width:50px;" src="uploadimg/<%=imgFileNmae%>"></button>  </td> 
       </tr>
       </table>
    </div>
 
<% }%>
<script>
		function show() {

			/* Access image by id and change
			the display property to block*/
			document.getElementById('image')
					.style.display = "block";

			document.getElementById('btnID')
					.style.display = "none";
		}
	</script>
	
</body>
</html>



	