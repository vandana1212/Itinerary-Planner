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

	public boolean listing(String leisure, String sightseeing, String distance) {
		List dataList= new ArrayList();
		 
		try {
			/*String l="L";
			String s="S";*/
			ArrayList <listing> final_list=new ArrayList<listing>();
			PreparedStatement prepStatement = dbConnection.prepareStatement("select description,expense from activity where ? <= hours");
			prepStatement.setInt(1, Integer.valueOf(leisure));			
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
		return false;
}
}
