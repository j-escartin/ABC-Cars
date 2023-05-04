<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Car Detials</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<%@include file="../bootstrapStyle.jsp" %>
	
	<link rel="stylesheet" href="../../style/abc-carsStyle.css" type="text/css"/>
	
</head>

<body class="">
	
	
	<div class="container-flex mx-2">
		
		<!-- Header -->
		<%@include file="../searchHeader.jsp" %>
		
		<!-- Body Content -->
		<div class="container mt-3" style="min-height:420px;">
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
			 			<p class="company text-center" style="font-size:25px">Car Details</p>
			 		</div>
		 			<div class="p-3" >
		 				<div ><span class="font-weight-bold text-primary">Description: </span>
							   <span class="story-text">
							   		${cars.getDescription()}
							   </span>
						</div>
	 					<div ><span class="font-weight-bold text-primary">Model: </span>
							   <span>${cars.getModel()}</span>
						</div>
						<div > <span class="font-weight-bold text-primary">Brand: </span>
							   <span>${cars.getBrand()}</span>
						</div>
						<div > <span class="font-weight-bold text-primary">Year Make: </span>
							   <span>${cars.getMake()}</span>
						</div>
						<div > <span class="font-weight-bold text-primary">Price: </span>
							   <span>${cars.getPrice()}</span>
						</div>
						<div class="mt-2">
							<a href="/user/carList" class="btn btn-outline-primary">Back</a>
		 					<button class="btn btn-primary" type="submit">Bid</button>
						</div>
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