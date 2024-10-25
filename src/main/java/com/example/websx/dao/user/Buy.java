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

@WebServlet(name = "Buy", value = "/Buy")
public class Buy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String product = req.getParameter("product");
        String img = req.getParameter("img");
        String price = req.getParameter("price");
        String num = req.getParameter("num");
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection connection = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);

        Product product1 = new Util().findDingDan(product);
        if (product1 != null){
            String number = product1.getNumber();
            String number1 = Integer.parseInt(number) + Integer.parseInt(num) + "";
            String sql = "UPDATE buy SET number = ? WHERE username = ? and product = ?;";
            try {
                PreparedStatement stat = connection.prepareStatement(sql);
                stat.setString(1, number1);
                stat.setString(2, new User().getUsername());
                stat.setString(3, product);
                stat.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else {
            String sql = "INSERT INTO buy (username, product, img, price, number) VALUES (?, ?, ?, ?, ?)";
            try {
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setString(1, new User().getUsername());
                ps.setString(2, product);
                ps.setString(3, img);
                ps.setString(4, price);
                ps.setString(5, num);
                ps.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        resp.sendRedirect("detail.jsp");
    }
}
