<!DOCTYPE html>
<html lang="en">
<head>
  <title>Itinerary-Planner Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <style>
  body{
  background-image: url("https://wallpaperscraft.com/image/guy_mountains_travel_27349_1920x1200.jpg");
  background-repeat:no-repeat;
  font-family:Lato;
  padding-top : 50px;
  
  }
  div1
  {
  font-family:Monotype Corsiva;
  
  font-size:h1;
  }
  div2
  {
  font-weight:bold;
  }
  </style>
</head>
<body>

<div class="container">
	<div class="row">
  <h1 ><div2> Login </div2> </h1>
  </div>
  <form method="post" action="../createaccount">
  <input type="hidden" name="pageName" value="Login">
  	<div class="form-group row">
  		<h3>Username</h3>
  		<div class="row">
  		<div class="col-xs-4">
  		<input type="text" size="80" class="form-control" id="username" placeholder ="Enter username" name="username">
  		</div>
  	</div>
  	<br>
  	
  	<h3>Password</h3> 
  	<div class="row">
  	<div class="col-xs-4">
  	<input type="password" class="form-control" id="pw" placeholder ="Enter password (minimum 4 characters)" name="password">
  	</div>
  	</div>
  	<br>
  	<br>
  	<input type="submit" class="btn btn-primary btn-lg" value="Submit">    
  	</div>
  </form>
 </div>
</body>
</html>
