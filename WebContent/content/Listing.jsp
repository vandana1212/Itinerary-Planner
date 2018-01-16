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
background-image:url("http://cdn.pcwallart.com/images/light-green-backgrounds-wallpaper-4.jpg");
background-repeat:no-repeat;
background-size:cover;
 font-family:Lato;
  padding-top : 50px;
  padding-left: 30px;
}
</style>
</head>
<body>
<div class="container">
<h1><strong>Recommendations !</strong></h1><br>
<h4>Keeping your distance and the allocated hours in consideration, we would recommend the following activities and food items to you. Please select the ones that interest you.</h4>		
<br>
  <h2><strong>Leisure Activities Recommended</strong></h2>
  <br>            
  <form method="post" action="<%=request.getContextPath()%>/display">
  <table class="table table-striped">
    <thead>
      <tr>
      	<th></th>
        <th>Description</th>
        <th>Expense (likely to incur)</th>
      </tr>
    </thead>
    <tbody>
    	
      <c:forEach items="${listing[0]}" var="listing">
                    <tr>
                    	<td><input type="checkbox" name="selected" value="${listing}"></td>
                    	<td><input type="text" name="description" value="${listing.description}"></td>                 
                    	<td><input type="text" name="expense" value="${listing.expense}"></td>    
       
                    </tr>
                </c:forEach>

    </tbody>
    </table>
    <input type="submit" class="btn btn-success btn-lg" value="Submit !">
    </form>
 </div>
</body>
</html>