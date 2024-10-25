package com.example.websx.dbUtils;

import com.example.websx.bean.Comment;
import com.example.websx.bean.Product;
import com.example.websx.bean.Use;
import com.example.websx.bean.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static com.example.websx.dbUtils.DbUtil.getCon;

public class Util {
    Connection conn = getCon("com.mysql.jdbc.Driver", "jdbc:mysql://localhost:3306/webxs", "root", "123456");

    //    导出所有订单buy的sql数据
    public Product[] DingDan() {
        int i = 0;
        Product[] dd = new Product[800];
        String sql = "select * from buy";
        ResultSet rs = null;

        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()) {
                dd[i] = new Product();
                dd[i].setUser(rs.getString("username"));
                dd[i].setName(rs.getString("product"));
                dd[i].setImg(rs.getString("img"));
                dd[i].setPrice(rs.getString("price"));
                dd[i].setNumber(rs.getString("number"));
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dd;
    }

    //    导出该用户的所有订单buy的sql数据
    public Product[] UDingDan(String name) {
        int i = 0;
        Product[] dd = new Product[800];
        String sql = "select * from buy where username='"+name+"'";
        ResultSet rs = null;

        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()) {
                dd[i] = new Product();
                dd[i].setUser(rs.getString("username"));
                dd[i].setName(rs.getString("product"));
                dd[i].setImg(rs.getString("img"));
                dd[i].setPrice(rs.getString("price"));
                dd[i].setNumber(rs.getString("number"));
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dd;
    }

    //    导出所有商品commodity的sql数据
    public Product[] ShangPing() {
        int i = 0;
        Product[] dd = new Product[800];
        String sql = "select * from commodity";
        ResultSet rs = null;

        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()) {
                dd[i] = new Product();
                dd[i].setName(rs.getString("product"));
                dd[i].setImg(rs.getString("img"));
                dd[i].setCategory(rs.getString("category"));
                dd[i].setPrice(rs.getString("price"));
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dd;
    }

    //    导出所有用户user的sql数据
    public Use[] YongHu() {
        int i = 0;
        Use[] dd = new Use[800];
        String sql = "select * from user";
        ResultSet rs = null;
        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()) {
                dd[i] = new Use();
                dd[i].setUsername(rs.getString("username"));
                dd[i].setPassword(rs.getString("password"));
                dd[i].setGender(rs.getString("gender"));
                dd[i].setMailbox(rs.getString("mailbox"));
                dd[i].setTel(rs.getString("tel"));
                dd[i].setAddress(rs.getString("address"));
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dd;
    }

    //    导出所有留言的sql数据
    public Comment[] LiuYan() {
        int i = 0;
        Comment[] dd = new Comment[800];
        String sql = "select * from comment";
        ResultSet rs = null;
        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()) {
                dd[i] = new Comment();
                dd[i].setUser(rs.getString("username"));
                dd[i].setCommentName(rs.getString("content"));
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dd;
    }

    //    导出单个user的sql数据
    public User information(String name){

        String sql = "select * from user where username="+name+";";
        ResultSet rs = null;
        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();

            User user= new User();
            while (rs.next()) {
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getString("gender"));
                user.setMailbox(rs.getString("mailbox"));
                user.setTel(rs.getString("tel"));
                user.setAddress(rs.getString("address"));
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    //    导出购物车shopCar的sql数据
    public Product[] shopCar(String name) {
        int i = 0;
        Product[] dd = new Product[800];
        String sql = "select * from shopcar where username=" + name + ";";
        ResultSet rs = null;

        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()) {
                dd[i] = new Product();
                dd[i].setName(rs.getString("product"));
                dd[i].setImg(rs.getString("img"));
                dd[i].setPrice(rs.getString("price"));
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dd;
    }

    //    清空购物车的所有数据
    public void shopClear(Product[] products) {
        for (int i = 0; i < products.length; i++) {
            String sql = "delete from shopcar where product = ? and username = ?;";
            try {
                PreparedStatement stat = conn.prepareStatement(sql);
                stat.setString(1, products[i].getName());
                stat.setString(2, new User().getUsername());
                stat.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //    查找订单是否存在
    public Product findDingDan(String product) {
        String sql = "select * from buy WHERE username = ? and product = ?;";//sql语言
        Product product1 = new Product();
        try {
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1, new User().getUsername());
            stat.setString(2, product);
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                product1.setName(rs.getString("product"));
                product1.setUser(rs.getString("username"));
                product1.setImg(rs.getString("img"));
                product1.setNumber(rs.getString("number"));
                product1.setPrice(rs.getString("price"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (product1.getName() == null) return null;
        else return product1;
    }

    //    查找购物车是否存在
    public Product findShop(String product) {
        String sql = "select * from shopcar WHERE username = ? and product = ?;";//sql语言
        Product product1 = new Product();
        try {
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1, new User().getUsername());
            stat.setString(2, product);
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                product1.setName(rs.getString("product"));
                product1.setUser(rs.getString("username"));
                product1.setImg(rs.getString("img"));
                product1.setNumber(rs.getString("number"));
                product1.setPrice(rs.getString("price"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (product1.getName() == null) return null;
        else return product1;
    }
}
