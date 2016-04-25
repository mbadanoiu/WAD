/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/

package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Savanutul
 */
public class dbConnection {
    private static Connection connection;
    public static Connection getConnection() {
        if (connection == null) {
            try {
                String url = "jdbc:mysql://localhost/wap";
                String user = "a";
                String password = "a";
                String driver="com.mysql.jdbc.Driver"; //must be changed if now a mysql pool
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
                connection.setAutoCommit(false);
            }  catch (ClassNotFoundException e) {
                System.err.println("Could not load db driver");
                e.printStackTrace();
            } catch (SQLException e) {
                System.err.println("Could not open db connction");
                e.printStackTrace();
            }
        }
        return connection;
    }
}
