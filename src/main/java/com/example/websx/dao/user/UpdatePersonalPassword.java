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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "UpdatePersonalPassword", value = "/UpdatePersonalPassword")
public class UpdatePersonalPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        new User().setPassword(password);
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection conn = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        String sql = "UPDATE User SET password='" + password + "' WHERE username ='" + username + "';";
        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            stat.executeUpdate();
        } catch (
                SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect("personal.jsp");
    }
}
