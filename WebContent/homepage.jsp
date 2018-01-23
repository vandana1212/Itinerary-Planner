<!DOCTYPE html>
<html lang="en">
<head>
  <title>Itinerary-Planner</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  		body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
    padding-bottom:100px;
		}
  		.navbar {
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity:0.9;
}

/* Add a gray color to all navbar links */
.navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
}

/* On hover, the links will turn white */
.navbar-nav li a:hover {
    color: #fff !important;
}

/* The active link */
.navbar-nav li.active a {
    color: #fff !important;
    background-color:#29292c !important;
}

/* Remove border color from the collapsible button */
.navbar-default .navbar-toggle {
    border-color: transparent;
}

  </style>
  
  
</head>
<body>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="http://satyamvacations.com/wp-content/uploads/2015/10/kashmir.jpg" alt="Kashmir">
      <div class="carousel-caption">
        <h3 font:400 15px/1.8 Lato, sans-serif>Kashmir</h3>
        <p>Heaven on Earth</p>
      </div> 
    </div>

    <div class="item">
      <img src="http://allpicts.in/download/11326/10_Best_Nature_Images_HD_in_India_2_Kerala_backwaters.jpg/" alt="Kerala">
      <div class="carousel-caption">
        <h3>Kerala</h3>
        <p>God's Own Country</p>
      </div> 
    </div>

    <div class="item">
      <img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Magnificient_Taj_Mahal%2C_Incredible_India%21.jpg" alt="Taj Mahal">
      <div class="carousel-caption">
        <h3>Taj Mahal</h3>
        <p>One of the 7 wonders of the world</p>
      </div> 
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<div class="container text-center">
	<h1> Itinerary - Planner</h1>
	<h3>Planning to visit India ?</h3>
	<h2>We will help you plan out the itinerary for your perfect getaway ! </h2>

</div>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="content/Login.jsp"><h5>Login</h5></a></li>
        <li><a href="content/CreateNewaccount.jsp"><h5>Sign Up</h5></a></li>
        <li><a href="content/Aboutus.jsp"><h5>About Us</h5></a></li>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>