package com.itinerary.planner.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
import com.itinerary.planner.model.tourist;
import com.itinerary.planner.util.DbUtil;

public class touristrepository {
	
	private Connection dbConnection;
	
	public touristrepository() {
		dbConnection = DbUtil.getConnection();
	}
	

	
	public void save(String username, String fname, String lname, String email, String country_of_origin, String password) {
		try {
			tourist T=new tourist();
			String touristid=T.get_touristid();
			
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into tourist(username, fname, lname, email, country_of_origin, password,touristid) values (?, ?, ?, ?, ?, ?, ?)");
			prepStatement.setString(1, username);
			prepStatement.setString(2, fname);
			prepStatement.setString(3, lname);
			prepStatement.setString(4, email);
			prepStatement.setString(5, country_of_origin);
			prepStatement.setString(6, password);
			prepStatement.setString(7, touristid);
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean findByUserName(String username) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("select count(*) from tourist where username = ?");
			prepStatement.setString(1, username);	
						
			ResultSet result = prepStatement.executeQuery();
			if (result != null) {	
				while (result.next()) {
					if (result.getInt(1) == 1) {
						return true;
					}				
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean findByLogin(String username, String password) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("select password from tourist where username = ?");
			prepStatement.setString(1, username);			
			
			ResultSet result = prepStatement.executeQuery();
			if (result != null) {
				while (result.next()) {
					if (result.getString(1).equals(password)) {
						return true;
					}
				}				
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}