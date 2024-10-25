package com.example.websx.dao.user;

import com.example.websx.bean.Product;
import com.example.websx.bean.User;
import com.example.websx.dbUtils.DbUtil;
import com.example.websx.dbUtils.Util;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "BuyAll", value = "/BuyAll")
public class BuyAll extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection connection = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        String jieshuang = req.getParameter("jieshuang");
        String[] str = jieshuang.split(",");
        for (int i = 0; i < str.length; i++) {
            Product product = new Util().findDingDan(str[i]);
            if (product != null){
                String number = product.getNumber();
                String number1 = Integer.parseInt(number) + Integer.parseInt(str[i+2]) + "";
                String sql = "UPDATE buy SET number = ? WHERE username = ? and product = ?;";
                try {
                    PreparedStatement stat = connection.prepareStatement(sql);
                    stat.setString(1, number1);
                    stat.setString(2, new User().getUsername());
                    stat.setString(3, str[i]);
                    stat.executeUpdate();
                    i += 3;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }else {
                String sql = "INSERT INTO buy (username, product, img, number, price) VALUES (?, ?, ?, ?, ?)";
                try {
                    PreparedStatement ps = connection.prepareStatement(sql);
                    ps.setString(1, new User().getUsername());
                    ps.setString(2, str[i++]);
                    ps.setString(3, str[i++]);
                    ps.setString(4, str[i++]);
                    ps.setString(5, str[i]);
                    ps.executeUpdate();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
        resp.sendRedirect("shopcar.jsp");
    }
}
