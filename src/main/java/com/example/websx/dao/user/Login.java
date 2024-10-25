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
import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String name = req.getParameter("username");
        String pass = req.getParameter("password");
        ServletContext context = this.getServletContext();
        String dbUrl = context.getInitParameter("dbUrl");
        String dbUsername = context.getInitParameter("dbUsername");
        String dbPassword = context.getInitParameter("dbPassword");
        String jdbcDriver = context.getInitParameter("jdbcDriver");
        Connection connection = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
        String sql = "select * from user where username=?";
        PreparedStatement pst = null;
        try {
            pst = connection.prepareStatement(sql);
            pst.setString(1,name);
            ResultSet rs = pst.executeQuery();
            if (!rs.next()){
                resp.sendRedirect("Login.jsp");
            }else {
                //登录成功，进入主页面
                if (rs.getString("username").equals(name) && rs.getString("password").equals(pass) ){
                    new User().setUsername(rs.getString("username"));
                    new User().setPassword(rs.getString("password"));
                    new User().setGender(rs.getString("gender"));
                    new User().setMailbox(rs.getString("mailbox"));
                    new User().setTel(rs.getString("tel"));
                    new User().setAddress(rs.getString("address"));
                    resp.sendRedirect("index.jsp");
                }else {
                    //登录失败，返回登录页面重新登录
                    resp.sendRedirect("Login.jsp");
                }
            }

        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }
}
