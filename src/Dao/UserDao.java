package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Util.JDBCUtils;
import Been.Commbeen;
import Been.Userbeen;

public class UserDao {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	public boolean insert(Userbeen userbeen){
		try {
			connection = JDBCUtils.getConnection();
			statement = connection.createStatement();
			String sql = "INSERT INTO user(username,password,nickname,email,telephone)"+
			"VALUES('"+userbeen.getUsername()+"',"+userbeen.getPassword()+",'"+userbeen.getNickname()+"','"+userbeen.getEmail()+"',"+userbeen.getTelephone()+")";
			int num = statement.executeUpdate(sql);
			if(num>0){
				return true;
			}
			return false;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			JDBCUtils.release(statement, connection);
		}
		return false;
	}
	public List<Userbeen>getListAll(){
		List<Userbeen> list=new ArrayList<Userbeen>();
		try{
			connection=JDBCUtils.getConnection();
			statement=(Statement) connection.createStatement();
			String sql="select * from superstar";
			resultSet=(ResultSet) statement.executeQuery(sql);
			while(resultSet.next()){
				Userbeen user=new Userbeen();
				user.setUsername(resultSet.getString("username"));
				user.setPassword(resultSet.getInt("password"));
				user.setTelephone(resultSet.getInt("telephone"));
				
			    list.add(user);
			    }
			return list;
			}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtils.release(statement,connection);
		}return null;
	}
	
	public boolean userenter(String nickname,int password){
		boolean result=false;
		try{
			connection=JDBCUtils.getConnection();
			statement=(Statement)connection.createStatement();
			String sql="select * from user where nickname='"+nickname+"'and password="+password+"";
			resultSet=statement.executeQuery(sql);
			while(resultSet.next()){
				result=true;
			}
			return result;
		}catch(Exception e){
			e.printStackTrace();
		}finally {
	    	 JDBCUtils.release(resultSet, statement, connection);
	    	 
	     }
	     return result;
	}
	public boolean commentinsert(Commbeen commbeen){
		try {
			connection = JDBCUtils.getConnection();
			statement = connection.createStatement();
			String sql = "INSERT INTO usercomment(id,comment)"+"VALUES("+commbeen.getId()+",'"+commbeen.getComment()+"')";
			int num = statement.executeUpdate(sql);
			if(num>0){
				return true;
			}
			return false;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			JDBCUtils.release(statement, connection);
		}
		return false;
	}
	
	
}
