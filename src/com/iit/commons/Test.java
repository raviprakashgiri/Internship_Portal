/*
 * Author     : Sravan Kumar
 */

package com.iit.commons;

import java.sql.Date;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Commons cm = new Commons();
		Date d = cm.stringToSqlDate("2014-04-24");
		System.out.println(d);
		
		String val = "/home/hduser/ruralivrs/ProjectFiles/apache-tomcat-6.0.37/webapps/Downloads/internship/interns";
		val = val.substring(65);
		val = "http://qassist.cse.iitb.ac.in/"+val;
		System.out.println(val);

	}

}
