/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.attendance.dbc;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author vikrant
 */
public class DBConnection {
    
    public static Connection createConnection()
    {
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/db_walfi"; //for SQL and oracle or any other db server this url differs
        String username = "root"; //username of database user
        String password = ""; //password

        try
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");// differs from DB server to server
            }
            catch (ClassNotFoundException e)
            {
                e.printStackTrace();
            }

            con = DriverManager.getConnection(url, username, password);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return con;
    }
}
