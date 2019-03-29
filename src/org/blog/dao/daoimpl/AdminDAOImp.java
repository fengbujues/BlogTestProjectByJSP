package org.blog.dao.daoimpl;

import org.blog.dao.AdminDAO;
import org.blog.entity.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAOImp extends BaseDAOImp implements AdminDAO {
    @Override
    public Admin login(String username, String password) {
        Connection con = getCon();
        String sql = "select * from admin where username = ? and password = ?";
        PreparedStatement getpstm = getpstm(sql);
        ResultSet rs=null;
        Admin admin=null;
        try {
            getpstm.setString(1,username);
            getpstm.setString(2,password);
            rs = getpstm.executeQuery();
            if(rs.next()){
                admin=new Admin();
                admin.setUsername(rs.getString("username"));
                admin.setNickname(rs.getString("nickname"));
                admin.setImg(rs.getString("img"));
                admin.setId(rs.getLong("id"));
                admin.setEmail(rs.getString("email"));
                admin.setPhone(rs.getString("phone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }

    @Override
    public Admin QueryAdminByName(String name) {
        Connection con = getCon();
        String sql = "select * from admin where username = ?";
        PreparedStatement getpstm = getpstm(sql);
        ResultSet rs = null;
        Admin admin = null;
        try {
            getpstm.setString(1,name);
            rs = getpstm.executeQuery();
            if(rs.next()){
                admin = new Admin();
                admin.setUsername(rs.getString("username"));
                admin.setNickname(rs.getString("nickname"));
                admin.setImg(rs.getString("img"));
                admin.setId(rs.getLong("id"));
                admin.setEmail(rs.getString("email"));
                admin.setPhone(rs.getString("phone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }

    @Override
    public boolean AddAdmin(Admin admin) {
        Connection con = getCon();
        String sql = "insert into admin values (null,?,?,?,?,?,\"../imgs/4.jpeg\")";
        PreparedStatement getpstm = getpstm(sql);
        try {
            getpstm.setString(1,admin.getUsername());
            getpstm.setString(2,admin.getPassword());
            getpstm.setString(3,admin.getNickname());
            getpstm.setString(4,admin.getPhone());
            getpstm.setString(5,admin.getEmail());
            int i = getpstm.executeUpdate();
            if(i > 0){
               return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
