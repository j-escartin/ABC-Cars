<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Logout</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<%@include file="../bootstrapStyle.jsp" %>
	
	<link rel="stylesheet" href="../../style/abc-carsStyle.css" type="text/css"/>
	
</head>

<body class="login-body bg-light" style="height:100vh; margin: 0px;">

	<div class="container row bg-white p-0">
		<div class="col-sm-7 m-0 p-0">
			<img src="https://cdn-thumbor.immofinanz.com/2dvOi98avNOizTKCHpJrFaCvUFs=/0x0:1440x810/1920x1080/filters:quality(90)/https%3A//cdn.immofinanz.com/uploads/production/5e21a7dddee6e56db91bce1c/vivo_website_cover_1920x1080px-2-1.png"
				 class="img-fluid m-0"/>
		</div>
			
 		<div class="col-sm-5 m-0 p-0">
 			<div>
 				<div class="p-2">
	 				<img src="../../images/logo.png"
			 			 alt="logo" style="width:60px;"/>
			 		<span class="company ml-3" style="font-size:20px;">ABC Cars</span>
	 			</div>
	 			<div>
		 			<p class="company text-center" style="font-size:27px">Logout</p>
		 		</div>
	 			<div class="loginForm">
	 				<div class="text-center">
	 					<p style="font-family: 'Gentium Book Basic', serif;
	 						      font-weight:bold;
	 						      font-size:24px;">Thanks for coming!</p>
	 					<p style="font-family: 'Gentium Book Basic', serif;
	 						      font-size:18px;">Are you sure you want to logout?<p>
	 					<a href="/user/dashboard" class="btn btn-outline-primary" 
	 							   style="font-family: 'Gentium Book Basic', serif;">Cancel</a>
	 					<a href="/logout" class="btn btn-primary"
	 							   style="font-family: 'Gentium Book Basic', serif;">Logout</a>
	 				</div>
	 				
	 			</div>
 			</div>
		</div>
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
	<script src="../../script/abc-cars.js"></script>
</body>
</html>