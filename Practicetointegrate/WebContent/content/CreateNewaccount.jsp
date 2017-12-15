<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sign up</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<h2> Let us in on your trip <small> and lets plan it together !</small></h2>
  <img src="https://i.pinimg.com/736x/18/22/ef/1822ef5afa9aca17beb423ca686a91da--travel-agency-logo-travel-logo.jpg" height="50" width="50">
  <form method="post" action="../createaccount">
               <input type="hidden" name="pageName" value="CreateNewaccount">
  		Username <br>
  		<input type="text" class="form-control" id="uname" placeholder="Choose a username" name="username">
  		First name <br>
  		<input type="text" class="form-control" id="fname" placeholder="Enter first name" name="fname">
  		Last name <br>
  		<input type="text" class="form-control" id="sname" placeholder="Enter last name" name="lname">
  		Email <br>
  		<input type="email" class="form-control" id="email" placeholder ="Enter email" name="email">
  		Country of Origin <br>
  		<input type="text" class="form-control" id="countryoforigin" placeholder="Enter country of origin" name="country_of_origin">
  		Password <br>
  		<input type="password" class="form-control" id="pw" placeholder ="Enter password" name="password">
  		<input type="submit" class="btn btn-success btn-lg" value="Submit">    
  </form>
  </div>
</body>
</html>
