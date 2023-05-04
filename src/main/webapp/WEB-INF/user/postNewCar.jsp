<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Post New Car</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<%@include file="../bootstrapStyle.jsp" %>
	
	<link rel="stylesheet" href="../../style/abc-carsStyle.css" type="text/css"/>
	
</head>

<body class="">
	
	
	<div class="container-flex mx-2">
		
		<!-- Header -->
		<%@include file="../searchHeader.jsp" %>
		
		<!-- Body Content -->
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
			 			<p class="company text-center" style="font-size:25px">Post Your Car</p>
			 		</div>
		 			<div class="loginForm" style="height: auto;">
		 				<form:form modelAttribute="car" method="post" class="container form-text">
		 					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		 					<div class="form-group">
							    <label for="description">Description</label>
							    <form:textarea class="form-control" id="description" 
							    	name="description" path="description" rows="3" required="required"></form:textarea>
							</div>
			 				<div class="form-group">
		 						<label for="model">Car Model</label>
		 						<form:input type="text" path="model" class="form-control" id="model"
		 							   name="model" placeholder="@model" required="required"/>
		 					</div>
		 					<div class="form-group">
		 						<label for="brand">Brand</label>
		 						<form:input type="text" class="form-control" id="brand"
		 							   name="brand" placeholder="@brand" path="brand" required="required"/>
		 					</div>
		 					<div class="form-group">
		 						<label for="make">Year Make</label>
		 						<form:input type="text" class="form-control" id="make"
		 							   name="make" path="make"  required="required"/>
		 					</div>
		 					<div class="form-group">
		 						<label for="price">Price</label>
		 						<form:input type="text" class="form-control" id="price"
		 							   name="price" path="price" placeholder="@price" required="required"/>
		 					</div>
		 
		 					<a href="/user/dashboard" class="btn btn-outline-primary">Cancel</a>
		 					<form:button class="btn btn-primary" type="submit">Post</form:button>
		 				</form:form>
		 			</div>
				</div>
			</div>
		</div>
	
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
	<script src="../../script/abc-cars.js"></script>
</body>
</html>