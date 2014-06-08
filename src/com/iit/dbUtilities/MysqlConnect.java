/*
 * * Author: Priyanka & Ravi
 */

package com.iit.dbUtilities;

import com.iit.globals.ReadPropertyFile;
import com.mysql.jdbc.Connection;
import java.sql.*;
/**
 * @desc A singleton database access class for MySQL
 * @author Sravan Kumar
 */
public final class MysqlConnect {
    public Connection conn;
    private Statement statement;
    public static MysqlConnect db;
    static ReadPropertyFile MP = new ReadPropertyFile();
    private MysqlConnect() {
        String url= MP.getCaption("url");
        String dbName = MP.getCaption("databasename");
        String driver = MP.getCaption("databaseDriver");
        String userName = MP.getCaption("username");
        String password = MP.getCaption("password");
        try {
            Class.forName(driver).newInstance();
            this.conn = (Connection)DriverManager.getConnection(url+dbName,userName,password);
        }
        catch (Exception sqle) {
            sqle.printStackTrace();
        }
    }
    /**
     *
     * @return MysqlConnect Database connection object
     * * Author: Sravan Kumar
     */
    public static synchronized MysqlConnect getDbCon() {
        if ( db == null ) {
            db = new MysqlConnect();
        }
        return db;
 
    }
    
 
}