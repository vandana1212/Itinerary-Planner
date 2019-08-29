package com.itinerary.planner.repository;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.itinerary.planner.model.listing;
import com.itinerary.planner.util.DbUtil;
import com.itinerary.planner.model.listing;
public class moreplanrepository {	
	private Connection dbConnection;
	
	public moreplanrepository() {
		dbConnection = DbUtil.getConnection();
	}

	public ArrayList< ArrayList<listing> > recommender(String leisure, String sightseeing, String distance,String cityname) {
		ArrayList< ArrayList<listing> >finalans=new ArrayList< ArrayList<listing> >();
		ArrayList<listing> final_list=new ArrayList<listing>();
		ArrayList<listing> final_list1=new ArrayList<listing>();
		ArrayList<listing> final_list2=new ArrayList<listing>();
		try {
			/*String l="L";
			String s="S";*/
			
			PreparedStatement prepStatement = dbConnection.prepareStatement("select description,expense from activity where hours<=? and cityname=? and ls=?");
			prepStatement.setInt(1, Integer.valueOf(leisure));	
			prepStatement.setString(2,cityname);
			prepStatement.setString(3, "L");
			ResultSet result = prepStatement.executeQuery();
			if (result != null) {
				while (result.next()) {
					listing Listing=new listing();
					Listing.set_description(result.getString("description"));
					Listing.set_expense(result.getString("expense"));
					System.out.println(result.getString("description"));
					System.out.println(result.getString("expense"));
					final_list.add(Listing);
					/*dataList.add(result.getString("description"));
					dataList.add(result.getString("expense"));*/
				}
				finalans.add(final_list);
			}
			
			PreparedStatement prepStatement1 = dbConnection.prepareStatement("select description,expense from activity where hours<=? and cityname=? and ls=?");
			prepStatement1.setInt(1, Integer.valueOf(sightseeing));	
			prepStatement1.setString(2, cityname);
			prepStatement1.setString(3, "S");
			ResultSet result1 = prepStatement1.executeQuery();
			if (result1 != null) {
				while (result1.next()) {
					listing Listing=new listing();
					Listing.set_description(result1.getString("description"));
					Listing.set_expense(result1.getString("expense"));
					System.out.println(result1.getString("description"));
					System.out.println(result1.getString("expense"));
					final_list1.add(Listing);
					/*dataList.add(result.getString("description"));
					dataList.add(result.getString("expense"));*/
				}
				finalans.add(final_list1);
			}
			
			PreparedStatement prepStatement2 = dbConnection.prepareStatement("select description from food where cityname=?");
			prepStatement2.setString(1, cityname);
			ResultSet result2 = prepStatement2.executeQuery();
			if (result2 != null) {
				while (result2.next()) {
					listing Listing=new listing();
					Listing.set_description(result.getString("description"));
					Listing.set_expense("");
					System.out.println(result.getString("description"));
					final_list2.add(Listing);
					/*dataList.add(result.getString("description"));
					dataList.add(result.getString("expense"));*/
				}
				finalans.add(final_list2);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*request.setAttribute("data",dataList);
		RequestDispatcher dispatcher=request.getRequestDispatcher(page);
		if (dispatcher!=null)
		{
			dispatcher.forward(request,response);
		}*/
		return finalans;
}
}
