package com.example.websx.dao.user;

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
import java.sql.SQLException;

@WebServlet(name = "LeaveWord", value = "/LeaveWord")
public class LeaveWord extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String user = req.getParameter("user");
        String text = req.getParameter("text");
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection connection = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        String sql = "INSERT comment (username,content) VALUE(?,?);";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1,user);
            ps.setString(2,text);
            ps.executeUpdate();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        resp.sendRedirect("leaveword.jsp");
    }
}
