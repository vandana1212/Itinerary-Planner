package com.itinerary.planner.model;

public class travelplan {
	
	private String city_name;
	private	String hotelname;
	private	String travelstart;
	private	String travelfinish;
	
	public void set_hotel(String hotelname)
	{
		this.hotelname=hotelname;
	}
	public String set_hotel()
	{
		return hotelname;
	}
	public void set_travelstart(String travelstart)
	{
		this.travelstart=travelstart;
	}
	public String get_travelstart()
	{
		return travelstart;
	}
	public void set_travelfinish(String travelfinish)
	{
		this.travelfinish=travelfinish;
	}
	public String get_travelfinish()
	{
		return travelfinish;
	}
	public String getCity_name()
	{
		return city_name;
	}
	public void setCity_name(String city_name)
	{
		this.city_name=city_name;
	}
	
}
