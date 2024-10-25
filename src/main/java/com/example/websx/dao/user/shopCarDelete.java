package com.example.websx.dao.user;

import com.example.websx.bean.User;
import com.example.websx.dbUtils.DbUtil;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

import static com.example.websx.dbUtils.DbUtil.getCon;

@WebServlet(name = "shopCarDelete", value = "/shopCarDelete")
public class shopCarDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String product = req.getParameter("product");
        String sql = "delete from shopcar where product = ? and username = ?;";
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection conn = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        try {
            PreparedStatement stat = conn.prepareStatement(sql);
            stat.setString(1, product);
            stat.setString(2, new User().getUsername());
            stat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect("shopcar.jsp");
    }
}
