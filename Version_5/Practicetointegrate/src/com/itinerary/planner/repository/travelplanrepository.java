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
    
    public void save(String tourist, String city_name, String hotelname, String travelstart, String travelfinish) {
   	 try {
   		 PreparedStatement prepStatement = dbConnection.prepareStatement("insert into travelplan(tourist, city_name, hotelname, travelstart, travelfinish) values (?, ?, ?, ?, ?)");
   		 if (tourist==null)
   		 {
   			 tourist="";
   		 }
   		 prepStatement.setString(1, tourist);
   		 prepStatement.setString(2, city_name);
   		 prepStatement.setString(3, hotelname);
   		 prepStatement.setString(4, travelstart);
   		 prepStatement.setString(5, travelfinish);
   		 prepStatement.executeUpdate();
   	 } catch (SQLException e) {
   		 e.printStackTrace();
   	 }
    }
}
