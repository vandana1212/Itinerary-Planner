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
 font-family:Lato;
  padding-top : 50px;
  padding-left: 50px;
}
</style>
</head>
<body>
<<input type="hidden" name="pageName" value="PreviousTravel">		
<div class="container">
  <h2><strong>Your Previous Travels</strong></h2>            
  <table class="table table-striped">
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