<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Login</title>
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
 					<a href="/" style="text-decoration:none;">
						<img src="../../images/logo.png"
		 			 	alt="logo" style="width:60px;"/>
		 			 	<span class="company ml-3" style="font-size:20px;">ABC Cars</span>
 					</a>
	 			</div>
	 			<div>
		 			<p class="company text-center" style="font-size:25px">Login</p>
		 		</div>
		 	
	 			<div class="loginForm">
	 				<div class="container">
	 				<c:if test="${param.error != null}">
						<div class="alert alert-danger alert-dismissible fade show my-3 px-3" role="alert">
				  			Invalid Credentials!
						</div>
					</c:if>
	 				<form class="needs-validation form-text" modelAttribute="user"
	 					     action="/login" method="post">
	 					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	 					<div class="form-group">
	 						<label for="username">Username</label>
	 						<input type="text" class="form-control" id="username"
	 							   name="username" placeholder="@username"/>
	 					</div>
	 					<div class="form-group">
	 						<label for="password">Password</label>
	 						<input type="password" class="form-control" id="password"
	 							   name="password" placeholder="Password"/>
	 					</div>
	 					<a href="/" class="btn btn-outline-primary">Back</a>	
	 					<button class="btn btn-primary" type="submit">Sign in</button>
 						<small class="text-center">Don't have an account? <a href="/register" class="text-primary hover:underline">Sign up</a></small>
	 				</form>
	 				</div>
	 			</div>
 			</div>
		</div>
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
	<script src="../../script/abc-cars.js"></script>
</body>
</html>