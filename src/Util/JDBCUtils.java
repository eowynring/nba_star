package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtils {
	public static Connection getConnection() throws SQLException,ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nbastar";
		String username = "root";
		String password = "root";
		Connection connection = DriverManager.getConnection(url,username,password);
		return connection;
	}
	public static void release(Statement statement  ,Connection connection) {
		if(statement!=null){
			try {
				statement.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			statement=null;
		}
		if(connection!=null){
			try {
				connection.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			connection=null;
		}
	}
	public static void release(ResultSet resultSet,Statement statement,Connection connection) {
		if(resultSet!=null){
			try {
				resultSet.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			resultSet=null;
		}
		release(statement, connection);
	}
}
	

