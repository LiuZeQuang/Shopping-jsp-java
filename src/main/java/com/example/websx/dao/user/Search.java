package com.example.websx.dao.user;

import com.example.websx.bean.Produc;
import com.example.websx.bean.Product;
import com.example.websx.dbUtils.DbUtil;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static com.example.websx.dbUtils.DbUtil.getCon;
@WebServlet(name = "Search", value = "/Search")
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection conn = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        String product = req.getParameter("product");
        String sql = "select * from commodity WHERE product = ?;";//sql语言
        try {
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1, product);
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                new Produc().setName(rs.getString("product"));
                new Produc().setImg(rs.getString("img"));
                new Produc().setPrice(rs.getString("price"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (new Produc().getPrice() == null)
            resp.sendRedirect("index.jsp");
        else
            resp.sendRedirect("detai.jsp");
    }
}
