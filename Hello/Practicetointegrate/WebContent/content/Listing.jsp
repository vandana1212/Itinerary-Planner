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
		
<div class="container">
  <h2><strong>Leisure Activities Recommended</strong></h2>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Description</th>
        <th>Expense (likely to incur)</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${listing.get(0)}" var="listing">
                    <tr>
                    	<td>${listing.description}</td>
                    	<td>${listing.expense}</td>
                    </tr>
                </c:forEach>
    </tbody>
  </table>
  <h2><strong>Sightseeing Activities Recommended</strong></h2>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Description</th>
        <th>Expense (likely to incur)</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${listing.get(1)}" var="sightseeing">
                    <tr>
                    	<td>${sightseeing.description}</td>
                    	<td>${sightseeing.expense}</td>
                    </tr>
                </c:forEach>
    </tbody>
  </table>
  <h2><strong>Activities Recommended</strong></h2>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${listing.get(2)}" var="food">
                    <tr>
                    	<td>${food.description}</td>
                    </tr>
                </c:forEach>
    </tbody>
  </table>
  
</div>
</body>
</html>