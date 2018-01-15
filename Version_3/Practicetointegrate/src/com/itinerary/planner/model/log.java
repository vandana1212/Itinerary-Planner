package com.itinerary.planner.model;

public class log {
	private String cityname;
	private String hotelname;
	private String travelstart;
	private String travelfinish;
	public void setCityName(String city_name)
	{
		this.cityname=city_name;
	}
	public String getCityName()
	{
		return cityname;
	}
	public void setHotelName(String hotelname)
	{
		this.hotelname=hotelname;
	}
	public String getHotelName()
	{
		return hotelname;
	}
	public void setTravelStart(String travelstart)
	{
		this.travelstart=travelstart;
	}
	public String getTravelStart()
	{
		return travelstart;
	}
	public void setTravelFinish(String travelfinish)
	{
		this.travelfinish=travelfinish;
	}
	public String getTravelFinish()
	{
		return travelfinish;
	}
}
