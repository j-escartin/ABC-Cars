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
		
		<div class="container pt-3">
			<!-- Body Content -->
			<div class="row" style="min-height:450px;">
				<div class="col-sm-4">
					<div class="card pt-3" style="width: 100%; border-radius: 10px">
						<div class="card-body">
							<h4 class="card-title text-center"
								style="font-family: 'Gentium Book Basic', serif;">Filters
							</h4>
							<form action="/user/filterSearch">
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
		 						<button type="submit" class="btn btn-primary mt-3">Search with Filter</button>
		 						</form>
							</div>
						</div>
					</div>

				
				<div class="col-sm-8">
					<c:if test="${cars.isEmpty()}">
						<div class="text-center" style="font-family: 'Gentium Book Basic', serif;
							                            font-size:30px; font-weight:bold;">No Car Found!</div>
					</c:if>
					<c:forEach var="cars" items="${cars}">
					<div class="row mb-4" style="border: 1px solid lightgray;">
						<div class="col-sm-4 p-0">
							<img src="https://manofmany.com/wp-content/uploads/2021/06/20-most-beautiful-cars-in-the-world-according-to-science-.jpeg"
								 width="100%" height="100%" alt="car"/>
						</div>
						<div class="col-sm-8 p-4" style="font-family: 'Gentium Book Basic', serif;
							                             font-size:18px;">
							<div > <span class="font-weight-bold text-primary">Model: </span>
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
							<a href="/user/carDetails/${cars.getCarId()}" class="btn btn-outline-success mt-2">View Car</a>
						</div>	
					</div>
					</c:forEach>
				</div>
				</div>

		</div>
		
		
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
</body>

</html>