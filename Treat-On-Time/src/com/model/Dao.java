package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.controller.DoctorBean;
import com.controller.HospitalBean;
import com.controller.UserBean;
import com.controller.UserProfileBean;

public class Dao {
	
	
	// To genrate array
	public String[] makeArray(String temp) {
		String a[] = temp.split(",");
		return a;
	}

	// To genrate String
	public String makeString(String[] temp) {
		String[] A = temp;
		
		String B = "";
		int l = A.length;
		
		for(int i = 0 ; i < l ; i++) {
			
			if(i == (l-1)) {
				B += A[i];
			}else {
				B += A[i] + ",";
			}
		}
		
		return B;
	}
	
	
	//Hospital 
	
	public int Hospital_insert(HospitalBean hb) {
		
		int row = 0;
		Connection conn = DBconnection.getDataBaseConnection();
		String str = "INSERT INTO hospital(name,street,area,city,state,country, bio, contact, email, facilites) VALUES (?,?,?,?,?,?,?,?,?,?)";
		
		try {
		
			PreparedStatement ps = conn.prepareStatement(str);
			
			ps.setString(1,hb.getName());
			ps.setString(2,hb.getStreet());
			ps.setString(3,hb.getArea());
			ps.setString(4,hb.getCity());
			ps.setString(5,hb.getState());
			ps.setString(6,hb.getCountry());
			ps.setString(7,hb.getBio());
			ps.setLong(8,hb.getContact());
			ps.setString(9,hb.getEmail());
			ps.setString(10,hb.getFacilities());
			
		
			row = ps.executeUpdate();
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return row;
	}
	
	public ResultSet hospital_select() {
		ResultSet resultSet = null;
	
		try {
		
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM hospital";
			PreparedStatement ps = conn.prepareStatement(str);
			resultSet = ps.executeQuery();
	
		} catch (Exception e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSet;
	}

	public ResultSet hospital_selectById(int Uid) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM hospital WHERE id = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setInt(1,Uid);
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	public ResultSet hospital_by_name(String name) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM hospital WHERE name = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setString(1,name);;
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
		
	
	public int Hospital_update(HospitalBean ub) {
		int count = 0;
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String query = "UPDATE hospital SET name=?,street=?,area=?,city=?,state=?,country=?,bio=?,contact=?,email=?, facilites=? WHERE id =?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ub.getName());
			ps.setString(2, ub.getStreet());
			ps.setString(3, ub.getArea());
			ps.setString(4, ub.getCity());
			ps.setString(5, ub.getState());
			ps.setString(6,ub.getCountry());
			ps.setString(7,ub.getBio());
			ps.setLong(8, ub.getContact());
			ps.setString(9, ub.getEmail());
			ps.setString(10, ub.getFacilities());
			ps.setInt(11, ub.getH_id());
			count = ps.executeUpdate(); 
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public int hospital_delete(int userID) {
		int count = 0;
		try {
			Connection conn = DBconnection.getDataBaseConnection();
			String query = "DELETE FROM hospital WHERE id =?";
			PreparedStatement ps  = conn.prepareStatement(query);
			ps.setInt(1,userID);
			count = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}


	//Doctor
	public ResultSet doctor_profile() {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM doctor";
			PreparedStatement ps = conn.prepareStatement(str);
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	public int Doctor_insert(DoctorBean db) {
		
		int row = 0;
		Connection conn = DBconnection.getDataBaseConnection();
		String str = "INSERT INTO doctor(name,edu,days,time_slot,h_name,contact, email, password, c_password, password_reset, specification) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
		
			PreparedStatement ps = conn.prepareStatement(str);
			
			ps.setString(1,db.getName());
			ps.setString(2,db.getEdu());
			ps.setString(3,db.getDays());
			ps.setString(4,db.getTime_slot());
			ps.setString(5,db.getH_name());
			ps.setLong(6,db.getContact());
			ps.setString(7,db.getEmail());
			ps.setString(8,db.getPassword());
			ps.setString(9,db.getC_password());
			ps.setString(10,db.getPassword_reset());
			ps.setString(11,db.getSpecification());
			
		
			row = ps.executeUpdate();
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return row;
	}

	public ResultSet doctor_by_hospital_name(String name) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM doctor WHERE h_name = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setString(1,name);;
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	public ResultSet doctor_by_email(String email) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM doctor WHERE email = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setString(1,email);;
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	public int Doctor_password_update(DoctorBean ub) {
		int count = 0;
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String query = "UPDATE doctor SET password=?, c_password=? WHERE email=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ub.getPassword());
			ps.setString(2, ub.getC_password());
			ps.setString(3, ub.getEmail());
			count = ps.executeUpdate(); 
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public int Doctor_update(DoctorBean ub) {
		int count = 0;
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String query = "UPDATE doctor SET  h_name=?, contact=?, days=?, time_slot=?  WHERE email =?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1,ub.getH_name());
			ps.setLong(2,ub.getContact());
			ps.setString(3,ub.getDays());
			ps.setString(4,ub.getTime_slot());
			ps.setString(5,ub.getEmail());
			
			count = ps.executeUpdate(); 
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	
	
	//User auth
	public int user_insert(UserBean hb) {
		
		int row = 0;
		Connection conn = DBconnection.getDataBaseConnection();
		String str = "INSERT INTO auth_user(username,email,password,c_password,password_reset) VALUES (?,?,?,?,?)";
		
		try {
		
			PreparedStatement ps = conn.prepareStatement(str);
			
			ps.setString(1,hb.getUsername());
			ps.setString(2,hb.getEmail());
			ps.setString(3,hb.getPassword());
			ps.setString(4,hb.getC_password());
			ps.setString(5,hb.getPassword_reset());
		
			row = ps.executeUpdate();
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return row;
	}
	
	public ResultSet user_by_email(String email) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM auth_user WHERE email = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setString(1,email);;
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	public int User_password_update(UserBean ub) {
		int count = 0;
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String query = "UPDATE auth_user SET password=?, c_password=? WHERE email=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ub.getPassword());
			ps.setString(2, ub.getC_password());
			ps.setString(3, ub.getEmail());
			count = ps.executeUpdate(); 
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	//user profile
	public int user_profile_insert(UserProfileBean hb) {
		
		int row = 0;
		Connection conn = DBconnection.getDataBaseConnection();
		String str = "INSERT INTO user(name, date_of_birth, bio, blood_group, email, contact, street, area, city, state, country) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
		
			PreparedStatement ps = conn.prepareStatement(str);
			
			ps.setString(1,hb.getName());
			ps.setDate(2,hb.getDOB());
			ps.setString(3,hb.getBio());
			ps.setString(4,hb.getBlood_group());
			ps.setString(5,hb.getEmail());
			ps.setLong(6,hb.getContact());
			ps.setString(7,hb.getStreet());
			ps.setString(8,hb.getArea());
			ps.setString(9,hb.getCity());
			ps.setString(10,hb.getState());
			ps.setString(11,hb.getCountry());
		
			row = ps.executeUpdate();
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return row;
	}
	

	public int user_profile_update(UserProfileBean hb) {
		
		int row = 0;
		Connection conn = DBconnection.getDataBaseConnection();
		String str = "UPDATE user SET name=?, date_of_birth=?, bio=?, blood_group=?, contact=?, street=?, area=?, city=?, state=?, country=? WHERE email = ?";
		
		try {
		
			PreparedStatement ps = conn.prepareStatement(str);
			
			ps.setString(1,hb.getName());
			ps.setDate(2,hb.getDOB());
			ps.setString(3,hb.getBio());
			ps.setString(4,hb.getBlood_group());
			ps.setLong(5,hb.getContact());
			ps.setString(6,hb.getStreet());
			ps.setString(7,hb.getArea());
			ps.setString(8,hb.getCity());
			ps.setString(9,hb.getState());
			ps.setString(10,hb.getCountry());
			ps.setString(11,hb.getEmail());
			
		
			row = ps.executeUpdate();
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return row;
	}
	
	public ResultSet user_profile_by_email(String email) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM user WHERE email = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setString(1,email);;
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	public ResultSet user_profile() {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM user";
			PreparedStatement ps = conn.prepareStatement(str);
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	//booking
	public int book(String d_name, String d_email, String p_name, String p_email, String day, String time) {
		
		int row = 0;
		Connection conn = DBconnection.getDataBaseConnection();
		String str = "INSERT INTO booking(d_email, p_email, d_name, p_name, day, time) VALUES (?,?,?,?,?,?)";
		
		try {
		
			PreparedStatement ps = conn.prepareStatement(str);
			
			ps.setString(1,d_email);
			ps.setString(2,p_email);
			ps.setString(3,d_name);
			ps.setString(4,p_name);
			ps.setString(5,day);
			ps.setString(6,time);
			
			row = ps.executeUpdate();
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return row;
	}
	
	public ResultSet booking_user_profile_by_email(String email) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM booking WHERE p_email = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setString(1,email);;
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}

	public int booking_delete(int userID) {
		int count = 0;
		try {
			Connection conn = DBconnection.getDataBaseConnection();
			String query = "DELETE FROM booking WHERE id =?";
			PreparedStatement ps  = conn.prepareStatement(query);
			ps.setInt(1,userID);
			count = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public ResultSet all_booking() {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM booking";
			PreparedStatement ps = conn.prepareStatement(str);
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	
	public ResultSet all_booking_by_d_email(String d_email) {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM booking WHERE d_email = ?";
			PreparedStatement ps = conn.prepareStatement(str);
			ps.setString(1,d_email);
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}
	
	
	//Feedback
	public int feedback_insert(String email, String content) {
		
		int row = 0;
		Connection conn = DBconnection.getDataBaseConnection();
		String str = "INSERT INTO feedback(p_email, content) VALUES (?,?)";
		
		try {
		
			PreparedStatement ps = conn.prepareStatement(str);
			
			ps.setString(1,email);
			ps.setString(2,content);
			row = ps.executeUpdate();
			
			DBconnection.CloseConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return row;
	}
	
	public ResultSet all_feedback() {
		
		ResultSet resultSet = null;
		
		try {
			
			Connection conn = DBconnection.getDataBaseConnection();
			String str = "SELECT * FROM feedback";
			PreparedStatement ps = conn.prepareStatement(str);
			resultSet = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultSet;
	}

}	
