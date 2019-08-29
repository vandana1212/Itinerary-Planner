package com.itinerary.planner.model;

public class listing {
	private String description;
	private String expense;
	public void set_description(String description)
	{
		this.description=description;
	}
	public void set_expense(String expense)
	{
		this.expense=expense;
	}
	public String get_description()
	{
		return description;
	}
	public String get_expense()
	{
		return expense;
	}
}
