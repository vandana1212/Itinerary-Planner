package com.itinerary.planner.repository;
import com.itinerary.planner.controller.touristcontrol;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.itinerary.planner.util.DbUtil;
import com.itinerary.planner.repository.*;
import com.itinerary.planner.model.*;
public class travelplanrepository {
	
	private Connection dbConnection;
	
	public travelplanrepository() {
		dbConnection = DbUtil.getConnection();
	}
	
	public void save(int log_id, int city_id, String hotelname, String travelstart, String travelfinish) {
		try {
			
			
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into travelplan(log_id, touristid, city_id, hotelname,travelstart,travelfinish) values (?, ?, ?, ?,?,?)");
			
			/*LU=request.getSession().getAttribute("loggedInUser");
			touristid=dbConnection.prepareStatement("select touristid from tourist where username="request.getSession().getAttribute("loggedInUser")");*/
			prepStatement.setInt(1, log_id);
			
			String touristid=request.getSession().getAttribute("loggedInUser");
			
			prepStatement.setString(2, touristid);
			prepStatement.setInt(3, city_id);
			prepStatement.setString(4, hotelname);
			prepStatement.setString(5, travelstart);
			prepStatement.setString(6, travelfinish);
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
