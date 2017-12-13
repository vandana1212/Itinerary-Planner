<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<h2> Let us in on your trip <small> and lets plan it together</small></h2>
	
	<form>
			Choose your city<br>
			<div class="dropdown">
    		<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Choose your city
    		<span class="caret"></span></button>
    		<ul class="dropdown-menu">
     		 <li><a href="#">Delhi</a></li>
      		<li><a href="#">Mumbai</a></li>
      		<li><a href="#">Kolkata</a></li>
      		<li><a href="#">Chennai</a></li>
    </ul>
  </div>
  		Enter hotel of stay <br>
		<input type="text" class="form-control" id="Hotelname" placeholder="Enter name of Hotel" >
		Enter start date of your travel <br>
		<input type="travelstart" class="form-control" id="travelstart" placeholder="Enter start date of trip" name="travelstart">
		Enter expected finishing time of your travel <br>
		<input type="travelfinish" class="form-control" id="travelfinish" placeholder="Enter expected finish date of trip" name="travelfinish">
		<input type="submit" class="btn btn-success btn-lg" value="Submit & Plan !">
	</form>
	
</body>
</html>
