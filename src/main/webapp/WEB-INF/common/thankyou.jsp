<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Thankyou</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<%@include file="../bootstrapStyle.jsp" %>
	
	<link rel="stylesheet" href="../../style/abc-carsStyle.css" type="text/css"/>
	
</head>

<body class="login-body bg-light" style="min-height:750px">

	<div class="container row bg-white p-0">
		<div class="col-sm-7 m-0 p-0">
			<img src="https://cdn-thumbor.immofinanz.com/2dvOi98avNOizTKCHpJrFaCvUFs=/0x0:1440x810/1920x1080/filters:quality(90)/https%3A//cdn.immofinanz.com/uploads/production/5e21a7dddee6e56db91bce1c/vivo_website_cover_1920x1080px-2-1.png"
				 class="img-fluid m-0"/>
		</div>
			
 		<div class="col-sm-5 m-0 p-0">
 			<div class="p-2">
 				<img src="../../images/logo.png"
		 			 alt="logo" style="width:60px;"/>
		 		<span class="company ml-3" style="font-size:20px;">ABC Cars</span>
 			</div>
 			<div>
	 			<p class="company text-center" style="font-size:25px">Thank You!</p>
	 		</div>
 			<div class="loginForm" style="height: 60% ">
 				<div class="text-center">
 					<p class="company" style="font-weight:normal">Welcome to ABC Car Sales Portal!</p>
 					<a href="login" class="btn btn-primary">Go to Login</a>
 				</div>
 			</div>
		</div>
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	<script src="../../script/abc-cars.js"></script>
</body>
</html>