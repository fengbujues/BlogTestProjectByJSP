package org.blog.dao.daoimpl;

import org.blog.dao.BaseDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BaseDAOImp implements BaseDAO {
    private Connection con=null;
    @Override
    public Connection getCon() {
        if(con==null){
            try {
                Class.forName(driver);
                con = DriverManager.getConnection(url, user, psw);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return con;
    }

    @Override
    public PreparedStatement getpstm(String sql) {
        if(con==null){
            con = getCon();
        }
        PreparedStatement pstm=null;
        try {
            pstm = con.prepareStatement(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pstm;
    }

    @Override
    public void closeAll() {
        if(con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
