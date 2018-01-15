package com.itinerary.planner.repository;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.itinerary.planner.model.*;
import com.itinerary.planner.util.DbUtil;

public class logrepository {	
	private Connection dbConnection;
	
	public logrepository() {
		dbConnection = DbUtil.getConnection();
	}

	public ArrayList<log> display(String tourist) {
		ArrayList<log>arr=new ArrayList<>();
		try {
			/*String l="L";
			String s="S";*/
			
			PreparedStatement prepStatement = dbConnection.prepareStatement("select city_name,hotelname,travelstart,travelfinish from travelplan where tourist=?");	
			prepStatement.setString(1,tourist );
			ResultSet result = prepStatement.executeQuery();
			if (result != null) {
				while (result.next()) {
					log Log=new log();
					Log.setCityName(result.getString("city_name"));
					Log.setHotelName(result.getString("hotelname"));
					Log.setTravelStart(result.getString("travelstart"));
					Log.setTravelFinish(result.getString("travelfinish"));
					arr.add(Log);
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
		return arr;
}
}
