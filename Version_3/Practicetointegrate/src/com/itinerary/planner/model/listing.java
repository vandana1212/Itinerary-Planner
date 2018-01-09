package com.itinerary.planner.model;
import java.sql.*;
import java.sql.ResultSet;

public class listing {
	private String description;
	private String expense;
	public listing()
	{
		this.description="";
		this.expense="";
	}
	public void set_description(String description)
	{
		this.description=description;
	}
	public void set_expense(String expense)
	{
		this.expense=expense;
	}
	public String getDescription()
	{
		return description;
	}
	public String getExpense()
	{
		return expense;
	}
}
