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
  background-image:url("<%=request.getContextPath()%>/images/moreplan.png");
  background-size:cover;
  background-repeat:no-repeat;
  font-family:Lato;
  padding-top : 50px;
  padding-left:50px;
  background-size:cover;
  background-repeat:no-repeat;
  }
  </style>
</head>
	

<body>

<div class="container">

<div class="row">
<h1> Let's organize your trip a little more ...</h1>
</div>
<br>
<form method="post" action="../moreplan">
<input type="hidden" name="pageName" value="MorePlan">
<div class="form-group row">
	<div class="row">
	<div class="col-xs-8">
	<h4>Preferred number of hours to be allocated for leisure</h4>
	<input type="text" class="form-control" id="leisure" name="leisure" placeholder="Enter number of hours for leisure activities">
	</div>
	</div>
	<br>
	<div class="row">
	<div class="col-xs-8">
	<h4>Preferred number of hours to be allocated for active travel</h4>
	<input type="text" class="form-control" id="sightseeing" name="sightseeing" placeholder="Enter number of hours for active sightseeing">
	</div>
	</div>
	<br><br>
	<input type="submit" class="btn btn-success btn-lg" value="Submit !">
	
	
</div>
</form>
</div>
</body>
</html>
