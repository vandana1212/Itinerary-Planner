<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.itinerary.planner.repository.moreplanrepository" %>
<%@ page import="com.itinerary.planner.model.listing" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
input[readonly=true]
{
    background: transparent;
    border: none;
}
input:focus{
  outline: none;
}
</style>
</head>
<body>
<div class="container">
<h1><strong>Recommendations !</strong></h1><br>
<h4>Keeping your distance and the allocated hours in consideration, we would recommend the following activities and food items to you. Please select the ones that interest you.</h4>		
<br>
  <form method="post" action="<%=request.getContextPath()%>/display">
  <h2><strong>Leisure Activities Recommended</strong></h2>
  <c:if test="${fn:length(listing[0]) gt 0}">
  <table class="table table-striped">
    <thead>
      <tr>
      	<th></th>
        <th>Description</th>
        <th>Expense (likely to incur)</th>
      </tr>
    </thead>
    <tbody>
    	
      <c:forEach items="${listing[0]}" var="listing" varStatus="status">
                    <tr>
                    	 <td><input type="checkbox" id ="check${status.index}" name="selected" value="<c:out value="${status.index}"/>"></td>
               			 <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><input name="description${status.index}" value="${listing.description}" readonly=true></td>                 
                         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><input name="expense${status.index}" value="${listing.expense}" readonly=true></td>        
       
                    </tr>
                </c:forEach>

    </tbody>
    </table>
    </c:if>
    <c:if test="${!(fn:length(listing[0]) gt 0)}">
     <p>No recommended leisure activities</p>
    </c:if>
    <c:if test="${fn:length(listing[1]) gt 0}">         
    
      <h2><strong>Sightseeing Activities Recommended</strong></h2>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th></th>
        <th>Description</th>
        <th>Expense (likely to incur)</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${listing[1]}" var="sightseeing" varStatus="status">
         <tr>
             <td><input type="checkbox" id ="check_sightseeing${status.index}" name="selected_sightseeing" value="<c:out value="${status.index}"/>"></td>
               <td><input name="sightseeing_description${status.index}" value="${sightseeing.description}" readonly=true></td>                 
               <td><input name="sightseeing_expense${status.index}" value="${sightseeing.expense}" readonly=true></td>    
         </tr>
     </c:forEach>
    </tbody>
  </table>
  
    </c:if>
  <c:if test="${!(fn:length(listing[1]) gt 0)}">
     <p>No recommended sightseeing activities</p>
    </c:if>
   <c:if test="${fn:length(listing[2]) gt 0}">      
  <h2><strong>Food Recommended</strong></h2>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th></th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${listing[2]}" var="food" varStatus="status">
          <tr>
            <td><input type="checkbox" id ="check_food${status.index}" name="selected_food" value="<c:out value="${status.index}"/>"></td>
               <td><input name="food_description${status.index}" value="${food.description}" readonly=true></td>          
          </tr>
      </c:forEach>
    </tbody>
    </table>
    </c:if>
    <c:if test="${!(fn:length(listing[2]) gt 0)}">
     <p>No recommended food items</p>
    </c:if>
    <input type="submit" class="btn btn-success btn-lg pull-right" value="Submit !">
    </form>
 </div>
</body>
</html>