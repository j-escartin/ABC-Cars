<%@include file="../jspTag.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>ABC Cars: Contact Us</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<%@include file="../bootstrapStyle.jsp" %>
	
	<link rel="stylesheet" href="../../style/abc-carsStyle.css" type="text/css"/>
	
</head>

<body>

	<div class="container-flex mx-2">
		
		<!-- Header -->
		<%@include file="../header.jsp" %>
		
		<!-- Body Content -->
		<div class="about text-white m-0">
			CONTACT US
		</div>
		
		<div class="row contacts">
			<div class="col-sm-4 text-center m-0">
				<div>
					<a href="#">
						<img src="../../images/mail.png"
				    		 alt="mail" style="width:50px"/>
			   		</a>
				</div>
				
		   		<p class="m-0">
		   			info@abccars.com.sg
		   		</p>
			</div>
			<div class="col-sm-4 text-center">
				<div>
					<a href="#">
						<img src="../../images/location.png"
				    		 alt="mail" style="width:50px"/>
			   		</a>
				</div>
				
		   		<p class="m-0">
		   			10 Anson Road, #26-04 International Plaza, Singapore 079903
		   		</p>
			</div>
			<div class="col-sm-4 text-center">
				<div>
					<a href="#">
						<img src="../../images/phone.png"
				    		 alt="mail" style="width:50px"/>
			   		</a>
				</div>
				
		   		<p class="m-0">
		   			 +65 8888 8888
		   		</p>
			</div>
		</div>
		
		<div class="mt-4" style="height: 250px;">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.829033297996!2d103.8437149143746!3d1.2759427990693695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da1913440ef3cf%3A0x32035d6688459f5f!2s10%20Anson%20Rd%2C%20%2326%2004%20International%20Plaza%2C%20Singapore%20079903!5e0!3m2!1sen!2sph!4v1676166730244!5m2!1sen!2sph" 
					width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" 
					referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>
		
		<!-- Footer -->
		<%@include file="../footer.jsp" %>
		
	</div>
	
	<%@include file="../bootstrapScript.jsp" %>
	
</body>

</html>