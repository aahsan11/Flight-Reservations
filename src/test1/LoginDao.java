package test1;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author pak1p
 */
public class LoginDao {
    
    String urls="jdbc:mysql://den1.mysql6.gear.host:3306/khamdu";
    String usernames="khamdu";
    String passwords="Sq1HK_2S_fn0";
    String sql="select * from newuser where Email=? and Password=?";
    String ra;
    static String id;
    public boolean check(String username, String password) throws SQLException, ClassNotFoundException{
       Class.forName("com.mysql.jdbc.Driver");
       
        Connection connection=DriverManager.getConnection(urls, usernames, passwords);
        PreparedStatement statement=connection.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);
        
        ResultSet rs=statement.executeQuery();
        if(rs.next()){
            
             ra=rs.getString("type");
             id=rs.getString("ID");
             
            return true;
            
        }
        return false;
        
    }
    
    
}
