package Dao;


import entity.User;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserImpl implements UserDao {
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    @Override
    public User login(User user) {
        User us = new User();
        con = DBConnection.getDBConnection();
        String sql = "select * from user where username=? and password = ?";
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            rs = pstmt.executeQuery();
            //将从数据库中查找数据，若没找到us则为null
            while (rs.next()) {
                us.setUsername(rs.getString("username"));
                us.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return us;
    }

}

