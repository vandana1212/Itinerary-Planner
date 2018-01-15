<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Success</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  body
  {
  padding-top:75px;
  font: 400 15px/1.8 Lato, sans-serif;
  }
  </style>
  
</head>
<body>
<input type="hidden" name="pageName" value="success">
<div class="container text center">
<h1> Successfully logged in !</h1>
<br><br>
<a href="content/TravelPlan.jsp" class="btn btn-success btn-lg" role="button">Create new plan</a>
<br><br>
<div class="container">
<a href="<%=request.getContextPath()%>/travellog" class="btn btn-primary btn-lg" role="button">View Previous Travels!</a>
</div>
<br><br>
<a href="homepage.jsp" class="btn btn-warning btn-lg" role="button">Back to homepage</a>
</div>
</body>
</html>