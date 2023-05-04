<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@include file="../bootstrapStyle.jsp" %>
	
	<link rel="stylesheet" href="../../style/abc-carsStyle.css" type="text/css"/>
	
</head>

<body>

	<div class="container-flex mx-2">
		
		<%@include file="../searchHeader.jsp" %>
		
		<div class="row container-fluid mt-2" style="">
			<div class="col-sm-2 p-2" style="height:100%; border: 1px solid lightgray">
				<p class="company text-center">James Vincent Escartin</p>
				<div class="text-center mb-2"><a href="/admin/userList" class="btn btn-outline-primary" style="width:100%;">Users</a> </div>
				<div class="text-center mb-2"><a href="/admin/carList" class="btn btn-outline-primary" style="width:100%;">Cars</a></div>
				<div>
					<form action="/admin/search"">
							<p class="company m-0 text-center">Filters</p>
			 				<div class="form-group">
		 						<label for="model">Car Model</label>
		 						<input type="text" class="form-control" id="model"
		 							   name="model" placeholder="@model"/>
		 					</div>
		 					<div class="form-group">
		 						<label for="brand">Brand</label>
		 						<input type="text" class="form-control" id="brand"
		 							   name="brand" placeholder="@brand"/>
		 					</div>
		 					<div class="form-group">
		 						<label for="make">Year Make</label>
		 						<input type="text" class="form-control" id="make"
		 							   name="make"/>
		 					</div>
		 						<label for="price" class="form-label">Price</label> <br>
								<small>$1000</small><input type="range" class="form-range mx-1" min="1000" max="100000" id="price" name="price">
								<small>$100000</small>
								<button type="submit" class="btn btn-outline-primary mt-3" style="width:100%;">Search with Filter</button>
	 				</form>
				</div>
			</div>
			<div class="col-sm-10">
				<div class="container mt-3">
			<div class="container row bg-white p-0" style="">
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
			 			<p class="company text-center" style="font-size:25px">Profile Details</p>
			 		</div>
		 			<div class="loginForm" style="min-height: 300px;">
		 				<div class="container">
		 					<form:form modelAttribute="user">
		 						<form:input type="hidden" value="${user.getUser_id()}" path="user_id"/>
		 						<form:input type="hidden" value="${user.getPassword()}" path="password"/>
		 						<div class="form-group">
			 						<label for="username">Username</label>
			 						<form:input name="username" class="form-control" id="username"
			 						 value="${user.getUsername()}" path="username"/>
		 						</div>
		 						<div class="form-group">
			 						<label for="email">Email</label>
			 						<form:input name="email" class="form-control" id="email" value="${user.getEmail()}"
			 						  path="email"/>
		 						</div>
		 						<a href="/admin/dashboard" class="btn btn-outline-primary">Back</a>
		 						<button class="btn btn-primary">Update Profile</button>
		 					</form:form>
		 				</div>	
		 			</div>
				</div>
			</div>
		</div>
	
			</div>
		</div>
		
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
</body>

</html>