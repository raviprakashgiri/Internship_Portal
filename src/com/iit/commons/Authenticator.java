package com.iit.commons;

import java.sql.ResultSet;

import com.iit.dbUtilities.DataService;

/*
 * Author     : Sravan Kumar
 */

public class Authenticator {
	
	public String authenticateUser(String username,String password )
	{
		
		//Checking in the Database
		String result = "loginFailure";
		//LoginBean loginUser = new LoginBean();
		String query = "Select user_name,password from user where user_name='"+username+"' and password='"+password+"'"; 
		System.out.println(query);
		try
		{
			ResultSet rs = DataService.getResultSet(query);
			
			
			//System.out.println("rowsrows  "+rows);
			if(rs.next())
			{
				if(rs.getString("password").equals(password)){
				result = "loginSuccess";
				System.out.println("Login Success, welcome to your account");
				
				System.out.println("result  "+result);
				}else{
					return null;
				}
			}
			else
			{
				
				System.out.println("Wrong Username or password Combination");
				return null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

}
