package com.itinerary.planner.repository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.itinerary.planner.util.DbUtil;

public class travelplanrepository {
	
	private Connection dbConnection;
	
	public travelplanrepository() {
		dbConnection = DbUtil.getConnection();
	}
	
	public void save(int log_id, Object username, String city_name, String hotelname, String travelstart, String travelfinish) {
		try {
			com.itinerary.planner.model.travelplan.set_city_id("city_name");
			int CID=com.itinerary.planner.model.travelplan.get_city_id();
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into travelplan(log_id, touristid, CID, hotelname,travelstart,travelfinish) values (?, ?, ?, ?,?,?)");
			
			/*LU=request.getSession().getAttribute("loggedInUser");
			touristid=dbConnection.prepareStatement("select touristid from tourist where username="request.getSession().getAttribute("loggedInUser")");*/
			city_id=com.itinerary.planner.model.travelplan.get_city_id();
			prepStatement.setInt(1, log_id);
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
