<!DOCTYPE html>
<html lang="en">
<head>
  <title>Itinerary-Planner Signup</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <style>
  body{
  background-image:url("../images/createnewaccount.jpg");
  background-repeat:no-repeat;
  font-family:Lato;
  padding-top : 50px;
  padding-left: 50px;
  background-size: cover;
  
  }
  div1
  {
  font-weight:bold;
  }
  </style>
</head>

<body>

<div class="container">
	<div class="row">
	<h1><div1> Sign Up</div1></h1>
	</div>
  	<br>
  <form method="post" action="../createaccount">
        <input type="hidden" name="pageName" value="CreateNewaccount">
  		<div class="form-group row">
  			<h4>Username</h4> 
  			<div class="row">
  			<div class="col-xs-4">
  			<input type="text" class="form-control" id="uname" placeholder="Choose a username" name="username">
  			</div>
  			</div>
  			<h4>First name</h4>
  			<div class="row">
  			<div class="col-xs-4">
  			<input type="text" class="form-control" id="fname" placeholder="Enter first name" name="fname">
  			</div>
  			</div>
  			
  			<h4>Last name</h4> 
  			<div class="row">
  			<div class="col-xs-4">
  			<input type="text" class="form-control" id="sname" placeholder="Enter last name" name="lname">
  			</div>
  			</div>
  			
  			<h4>Email</h4> 
  			<div class="row">
  			<div class="col-xs-4">
  			<input type="email" class="form-control" id="email" placeholder ="Enter email" name="email">
  			</div>
  			</div>
  			
  			<h4>Country of Origin</h4> 
  			<div class="row">
  			<div class="col-xs-4">
  			<input type="text" class="form-control" id="countryoforigin" placeholder="Enter country of origin" name="country_of_origin">
  			</div>
  			</div>
  			
  			<h4>Password</h4> 
  			<div class="row">
  			<div class="col-xs-4">
  			<input type="password" class="form-control" id="pw" placeholder ="Enter password" name="password">
  			</div>
  			</div>
  			<br><br>
  			<input type="submit" class="btn btn-success btn-lg" value="Submit">
  		</div>    
  </form>
  </div>
</body>
</html>
