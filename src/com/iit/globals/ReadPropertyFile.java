/*
 * * Author: Sravan Kumar
 */

package com.iit.globals;

import java.io.IOException;


import java.io.InputStream;
import java.util.Properties;


public class ReadPropertyFile {
	/**
	 * Method to get the values from property file by passing the property value..
	 * @param PropValue
	 * @return String.
	 * * Author: Sravan Kumar
	 */
	public String getCaption(String PropValue){
		try{
			InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("com/iit/globals/Globals.properties");  	  
    		Properties properties = new Properties();

    		properties.load(inputStream);
    		PropValue = properties.getProperty(PropValue);
    		
		}catch(IOException e){
			System.out.println("Error on getting Properties Value :: "+e);
		}
		return PropValue;
	}

}
