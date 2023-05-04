<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Registration</title>
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
 				<a href="/" style="text-decoration:none;">
 					<img src="../../images/logo.png"
		 			 alt="logo" style="width:60px;"/>
		 			<span class="company ml-3" style="font-size:20px;">ABC Cars</span>
 				</a>
 			</div>
 			<div>
	 			<p class="company text-center" style="font-size:25px">Registration</p>
	 		</div>
 			<div class="loginForm" style="height: auto;">
 				<form:form modelAttribute="user" action="">
 					<div class="form-group">
 						<label for="name">Username</label>
 						<form:input type="text" class="form-control" id="username"
 							   name="username" placeholder="@username" path="username" 
 							   required="required"/>
 					</div>
 					<div class="form-group">
 						<label for="email">Email</label>
 						<form:input type="email" class="form-control" id="email"
 							   name="email" placeholder="@example.com" path="email"
 							   required="required"/>
 					</div>
 					<div class="form-group">
 						<label for="password">Password</label>
 						<form:input type="password" path="password" class="form-control" id="password"
 							   name="password" placeholder="Password" required="required"/>
 					</div>
 					<div class="form-group">
 						<label for="confirm-password">Confirm Password</label>
 						<input type="password" class="form-control" id="confirm-password"
 							   name="confirm-password" placeholder="Confirm Password" 
 							   required/>
 					</div>
 					<a href="/" class="btn btn-outline-primary">Back</a>
 					<button class="btn btn-primary" type="submit">Sign Up</button>
 					<small class="text-slate-500 text-md text-center">Already have an account? 	<a href="/login" class="text-primary hover:underline">Signin</a></small>
 				</form:form>
 			</div>
		</div>
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	<script src="../../script/validation.js"></script>
</body>
</html>