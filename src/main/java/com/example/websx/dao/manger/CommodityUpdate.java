package com.example.websx.dao.manger;

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

@WebServlet(name = "CommodityUpdate", value = "/CommodityUpdate")
public class CommodityUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String name = req.getParameter("name");
        String img = req.getParameter("img");
        String category = req.getParameter("category");
        String price = req.getParameter("price");
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection conn = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        String sql = "UPDATE commodity SET product='" + name + "',category='" + category +"',price='" + price +
                "'where img='"+ img+"' ;";
        PreparedStatement stat = null;
        try {
            stat = conn.prepareStatement(sql);
            stat.executeUpdate();
        } catch (
                SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect("management.jsp");
    }
}
