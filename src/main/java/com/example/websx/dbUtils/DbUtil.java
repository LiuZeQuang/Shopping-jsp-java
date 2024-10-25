package com.example.websx.dbUtils;

import java.sql.*;

public class DbUtil {
    /**
     * 获得一个连接，连接数据库
     * @return connection类对象
     */
    public static Connection getCon(String dbDri,String dbUrl,String username,String pass){
        Connection connection=null;
        try {
            Class.forName(dbDri);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection= DriverManager.getConnection(dbUrl,username,pass);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }
}
