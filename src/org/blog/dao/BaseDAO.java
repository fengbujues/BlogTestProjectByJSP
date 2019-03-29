package org.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public interface BaseDAO {
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/test";
    String user = "root";
    String psw = "123456";
    public Connection getCon();
    public PreparedStatement getpstm(String sql);
    public void closeAll();
}
