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
		
		<div class="container">
			<!-- Body Content -->
			<div class="row  pt-3" style="min-height:450px;">
				<div class="col-sm-4  text-center">
					<div class="card pt-3" style="width: 100%; border-radius: 10px">
						<div class="">
							<img alt="profile" src="../../images/profile.png" width="100px"/>
						</div>
						<div class="card-body">
							<h4 class="card-title"
								style="font-family: 'Gentium Book Basic', serif;"> ${user.getUsername()}
							</h4>
							<a class="btn btn-outline-primary" href="/user/profile">View Profile</a>
						</div>
					</div>
				</div>
				
				<div class="col-sm-8">
					<p class="text-center company text-primary" style="font-size:26px">Your Car List</p>
					<c:forEach items="${cars}" var="cars">
						<div class="row mb-4" style="border: 1px solid lightgray;">
							<div class="col-sm-4 p-0">
								<img src="https://manofmany.com/wp-content/uploads/2021/06/20-most-beautiful-cars-in-the-world-according-to-science-.jpeg"
									 width="100%" alt=""/>
							</div>
							<div class="col-sm-8 p-2" style="font-family: 'Gentium Book Basic', serif;
								                             font-size:18px;">
								<div > <span class="font-weight-bold text-primary">Model: </span>
									   <span>${cars.model}</span>
								</div>
								<div > <span class="font-weight-bold text-primary">Brand: </span>
									   <span>${cars.brand}</span>
								</div>
								<div > <span class="font-weight-bold text-primary">Year Make: </span>
									   <span>${cars.make}</span>
								</div>
								<div > <span class="font-weight-bold text-primary">Price: </span>
									   <span>${cars.price}</span>
								</div>
								<a href="/user/updateCar?carId=${cars.carId}" class="btn btn-outline-success">Update</a>
								<a href="/user/deleteCar/${cars.carId}" class="btn btn-danger">Delete</a>
							</div>	
						</div>
					</c:forEach>
					<a href="/user/postCar" class="btn btn-primary">Post Car</a>
				</div>
				
			</div>
		</div>
		
		
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
</body>

</html>