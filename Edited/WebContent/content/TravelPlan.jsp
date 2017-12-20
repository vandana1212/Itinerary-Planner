<!DOCTYPE html>
<html>
<head>
	<title>Itinerary-Planner Travel Plan</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <style>
  body
  {
  background-image:url("http://allpicts.in/download/7642/Airplane_Images_with_Beautiful_Picture_of_Flight_in_Sunset.jpg/");
  background-size:cover;
  background-repeat:no-repeat;
  font-family:Lato;
  padding-top : 50px;
  }
  </style>
</head>
<body>

<div class="container">
	<div class="row">
	<h1> Let us plan your trip together ... </h1>
	</div>
	<br>
	<form>
	<input type="hidden" name="pageName" value="TravelPlan">
			<div class="form-group row">
			<h4>Choose your city</h4>
			<div class="dropdown">
    		<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Choose your city
    		<span class="caret"></span></button>
    		<ul class="dropdown-menu">
     		 <li><a href="#">Delhi</a></li>
      		<li><a href="#">Mumbai</a></li>
      		<li><a href="#">Kolkata</a></li>
      		<li><a href="#">Chennai</a></li>
    		</ul>
  `			</div>
  			<div class="row">
  			<div class="col-xs-4">
  			<h4>Enter hotel of stay</h4> 
			<input type="text" class="form-control" id="hotelname" placeholder="Enter name of hotel and location" >
			</div>
			</div>
			
			<div class="row">
			<div class="col-xs-4">
			<h4>Enter start date of your travel </h4>
			<input type="text" class="form-control" id="travelstart" placeholder="Enter a start date of trip (in dd-mm-yyyy format)" name="travelstart">
			</div>
			</div>
			
			<div class="row">
			<div class="col-xs-4">
			<h4>Enter expected finishing date of your travel </h4>
			<input type="text" class="form-control" id="travelfinish" placeholder="Enter an expected finish date (in dd-mm-yyyy format)" name="travelfinish">
			</div>
			</div>
			
			<br><br>
			<input type="submit" class="btn btn-success btn-lg" value="Submit & Plan !">
	</form>
</div>
</body>
</html>
