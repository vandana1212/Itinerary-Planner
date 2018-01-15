<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="com.itinerary.planner.util.DbUtil" %>
<%@ page import="java.sql.PreparedStatement" %>   
<%@ page import="java.sql.ResultSet" %>       

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

<%try
{
		 final Connection dbConnection=DbUtil.getConnection();
	 	String[] arr;
	 	arr = request.getParameterValues("selected");
	   if (arr != null) 
	   {
	      for (int i = 0; i < arr.length; i++) 
	      {
	         out.println ("<b>"+arr[i]+"<b>");
	      }
	   }
	
	
}catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>