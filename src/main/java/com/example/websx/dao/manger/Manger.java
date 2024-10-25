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

@WebServlet(name = "Manger", value = "/Manger")
public class Manger extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String mangername = req.getParameter("mangername");
        String password = req.getParameter("password");
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection connection = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        String sql = "select * from manger where mangername=?";
        PreparedStatement pst = null;
        try {
            pst = connection.prepareStatement(sql);
            pst.setString(1,mangername);
            ResultSet rs = pst.executeQuery();
            if (!rs.next()){
                resp.sendRedirect("manger.jsp");
            } else {
                //登录成功，进入主页面
                if (rs.getString("mangername").equals(mangername) && rs.getString("password").equals(password) ){
                    resp.sendRedirect("management.jsp");
                }else {
                    //登录失败，返回登录页面重新登录
                    resp.sendRedirect("manger.jsp");
                }
            }

        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }
}
