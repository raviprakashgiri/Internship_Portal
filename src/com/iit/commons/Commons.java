/*Author Priyanka & Ravi
*/
package com.iit.commons;

import java.sql.Date;


public class Commons {
	
	public static Date stringToSqlDate(String date){
	 	 Date sql = java.sql.Date.valueOf(date);
     return sql;
	}
}
