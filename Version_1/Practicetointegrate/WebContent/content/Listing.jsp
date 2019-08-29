<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.itinerary.planner.repository.moreplanrepository" %>
<%@ page import="com.itinerary.planner.model.listing" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Itinerary Planner </title>
</head>
<body>
<table>
    <tr>
        <th colspan="3" style="background-color:#7c2f97;">Leisure Activities</th>
    </tr>
    <tr style="background-color:#f0a64e;">
        <th class="border"><table>
    <tr>
        <th colspan="5" style="background-color:#7c2f97;">Teachers records</th>
    </tr>
    <tr style="background-color:#f0a64e;">
        <th class="border">Description</th>
        <th class="border">Expense</th>
    </tr>
    <%for(int i=0; i < final_list.size(); i++)
    {
        listing Listing = new listing();
        Listing = (listing) final_list.get(i);
        %>	
        <tr>
            <td><%= Listing.get_description() %></td>
            <td><%= Listing.get_expense() %></td>
        </tr>
        <%}%>
</table>
</body>
</html>