<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.itinerary.planner.repository.moreplanrepository" %>
<%@ page import="com.itinerary.planner.model.listing" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Itinerary Planner </title>
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body
{
padding-top:80px;
padding-left:30px;
background-image:url("http://www.fonstola.ru/large/201202/75289.jpg");
background-size:cover;
background-repeat:no-repeat;
  font: 400 15px/1.8 Lato, sans-serif;
}

</style>
</head>
<body>
<input type="hidden" name="pageName" value="PreviousTravel">		
<div class="bg"></div>
<div class="container">
  <h2><strong>Your Previous Travels</strong></h2>
  <br>            
  <table class="table">
    <thead>
      <tr>
        <th>City name</th>
        <th>Hotel name</th>
        <th>Travel Start</th>
        <th>Travel finish</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${log}" var="log">
                    <tr>
                    	<td>${log.cityname}</td>
                    	<td>${log.hotelname}</td>
                    	<td>${log.travelstart }</td>
                    	<td>${log.travelfinish }</td>
                    </tr>
                </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>