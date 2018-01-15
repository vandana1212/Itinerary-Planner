package com.itinerary.planner.model;

public class travelplan {
	private int city_id;
	private static int log_id=0;
	private String city_name;
	private	String hotelname;
	private	String travelstart;
	private	String travelfinish;
	
	
	public int get_log_id()
	{
		log_id++;
		return log_id;
	}
	
	public void set_city_id(String city_name)
	{
		if (city_name.equals("Delhi"))
		{
			this.city_id=1;
		}
		else if (city_name.equals("Mumbai"))
		{
			this.city_id=2;
		}
		else if (city_name.equals("Kolkata"))
		{
			this.city_id=3;
		}
		else 
		{
			this.city_id=4;
		}
	}
	public int get_city_id()
	{
		return city_id;
	}
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
}
