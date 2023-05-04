<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Car List</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<%@include file="../bootstrapStyle.jsp" %>
	
	<link rel="stylesheet" href="../../style/abc-carsStyle.css" type="text/css"/>
	
</head>

<body>

	<div class="container-flex mx-2">
		
		<!-- Header -->
		<%@include file="../searchHeader.jsp" %>
		
		<!-- Body Content -->
		<div class="about text-white m-0" style="height:200px">
			Car List
		</div>
		
		<div class="row" style="min-height:250px">
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
							<a href="/user/carDetails/${car.getCarId()}" class="btn btn-outline-success mt-2">View Car</a>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	
		
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
</body>

</html>