<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="com.itinerary.planner.util.DbUtil" %>
<%@ page import="java.sql.PreparedStatement" %>   
<%@ page import="java.sql.ResultSet" %>       
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
background-image:url("<%=request.getContextPath()%>/images/display2.png");
background-size:cover;
 font-family:Lato;
  padding-top : 50px;
  padding-left: 50px;
  padding-bottom:100px;
}
input[readonly=true]
{
    background: transparent;
    border: none;
    width:96%;
    padding:0 2%; 
}
input:focus{
  outline: none;
}
</style>
</head>
<body>

<div class="container">    
<br>
<form method="get" action="<%=request.getContextPath()%>/display">
  
  <h2><strong>Leisure Activities Selected</strong></h2>
  <c:if test="${fn:length(selected_listing[0]) gt 0}">
  <br>            
  <table class="table table-striped">
    <thead>
      <tr>
          
        <th>Description</th>
        <th>Expense (likely to incur)</th>
      </tr>
    </thead>
    <tbody>
        
      <c:forEach items="${selected_listing[0]}" var="listing">
           <tr>
               <td><input name="description" value="${listing.description}" readonly=true></td>                 
               <td><input name="expense" value="${listing.expense}" readonly=true></td>    
           </tr>
       </c:forEach>

    </tbody>
    </table>
    </c:if>
    <c:if test="${!(fn:length(selected_listing[0]) gt 0)}">
     <p>No leisure activities selected</p>
    </c:if>
    <h2><strong>Sightseeing Activities Selected</strong></h2>   
    <c:if test="${fn:length(selected_listing[1]) gt 0}">         
         
  <table class="table table-striped">
    <thead>
      <tr>
        
        <th>Description</th>
        <th>Expense (likely to incur)</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${selected_listing[1]}" var="sightseeing">
         <tr>
               <td><input name="sightseeing_description" value="${sightseeing.description}" readonly=true></td>                 
               <td><input name="sightseeing_expense" value="${sightseeing.expense}" readonly=true></td>    
         </tr>
     </c:forEach>
    </tbody>
  </table>
    </c:if>
  <c:if test="${!(fn:length(selected_listing[1]) gt 0)}">
     <p>No sightseeing activities selected</p>
    </c:if>
    <h2><strong>Food Selected</strong></h2>       
  <c:if test="${fn:length(selected_listing[2]) gt 0}">  
  <table class="table table-striped">
    <thead>
      <tr>
        
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${selected_listing[2]}" var="food">
          <tr>
               <td><input name="food_description" value="${food.description}" readonly=true></td>          
          </tr>
      </c:forEach>
    </tbody>
    </table>
    </c:if>
    <c:if test="${!(fn:length(selected_listing[2]) gt 0)}">
     <p>No food items selected</p>
    </c:if>
    <input type="submit" class="btn btn-success btn-lg pull-right" value="OK">
    </form>
 </div>
 </body>
</html>