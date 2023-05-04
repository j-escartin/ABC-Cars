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
				<table class="table table-striped">
				<thead class="text-center">
					<tr>
						<th>Model</th>
						<th>Brand</th>
						<th>Make</th>
						<th>Price</th>
						<th>Description</th>
						<th>Action</th>
					</tr>
				</thead>
				<c:forEach items="${cars}" var="cars">
					<tr class="text-center">
						<td>${cars.getModel()}</td>
						<td>${cars.getBrand()}</td>
						<td>${cars.getMake()}</td>
						<td>${cars.getPrice()}<td>
						<td>${cars.getDescription()}</td>
						<td>
							<a href="/admin/updateCar?carId=${cars.getCarId()}" class="mr-2 btn btn-outline-primary">Edit</a>
							<a href="/admin/deleteCar/${cars.getCarId()}" class="mr-2 btn btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>
				<c:if test="${cars.isEmpty()}">
					<tr>
                        <td colspan="4" class="text-center">No stores</td>
                    </tr>
				</c:if>	
				</tbody>
				</table>
				<a href="/admin/addCar" class="btn btn-primary">Add Car</a>
			</div>
		</div>
		
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
</body>

</html>