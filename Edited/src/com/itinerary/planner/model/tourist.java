package com.itinerary.planner.model;

public class tourist {
	private static int touristnumber=0;
	private String username;
	private String fname;
	private String lname;
	private String email;
	private String country_of_origin;
	private String password;
	
	public static String get_touristid()
	{
		touristnumber++;
		return Integer.toString(touristnumber);
	}
	
	public void set_username(String username)
	{
		this.username=username;
	}
	public void set_fname(String fname)
	{
		this.fname=fname;
	}
	public void set_lname(String lname)
	{
		this.lname=lname;
	}
	public void set_email(String email)
	{
		this.email=email;
	}
	public void set_COO(String country_of_origin)
	{
		this.country_of_origin=country_of_origin;
	}
	public void set_password(String password)
	{
		this.password=password;
	}
	
	public String get_username()
	{
		return username;
	}
	public String get_fname()
	{
		return fname;
	}
	public String get_lname()
	{
		return lname;
	}
	public String get_email()
	{
		return email;
	}
	public String get_COO()
	{
		return country_of_origin;
	}
	public String get_password()
	{
		return password;
	}
	
}