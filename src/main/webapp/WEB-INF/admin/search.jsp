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
					<form action="/admin/search">
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
			<div class="row col-sm-10">
				<c:if test="${cars.isEmpty()}">
					<div>No Car Found!</div>
				</c:if>
				<c:forEach var="car" items="${cars}">
				<div class="col-sm-3 my-3">
					<div class="card" width="100%">
						<div class="">
							<img class="card-img-top" src="https://manofmany.com/wp-content/uploads/2021/06/20-most-beautiful-cars-in-the-world-according-to-science-.jpeg"/>
						</div>
						
						<div class="card-body">
							<div style="font-family: 'Gentium Book Basic', serif;
								 font-size:18px;">
								<div > <span class="font-weight-bold text-primary">Model: </span>
									   <span>${car.getModel()}</span>
								</div>
								<div > <span class="font-weight-bold text-primary">Brand: </span>
									   <span>${car.getBrand()}</span>
								</div>
								<div > <span class="font-weight-bold text-primary">Year Make: </span>
									   <span>${car.getMake()}</span>
								</div>
								<div > <span class="font-weight-bold text-primary">Price: </span>
									   <span>${car.getPrice()}</span>
								</div>
								<hr>
								<a href="/admin/carDetails/${car.getCarId()}" class="btn btn-outline-success mt-2">View Car</a>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
</body>

</html>