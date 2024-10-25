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
@WebServlet(name = "Detail", value = "/Detail")
public class Detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String product = req.getParameter("product");
        String img = req.getParameter("img");
        String price = req.getParameter("price");
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection connection = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        Product product1 = new Util().findShop(product);
        if (product1 == null){
            String sql = "INSERT INTO shopcar (username, product, img, price) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = null;
            try {
                ps = connection.prepareStatement(sql);
                ps.setString(1, new User().getUsername());
                ps.setString(2, product);
                ps.setString(3, img);
                ps.setString(4, price);
                ps.executeUpdate();
            }catch (SQLException throwables){
                throwables.printStackTrace();
            }
        }
        resp.sendRedirect("detail.jsp");
    }
}
