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

@WebServlet(name = "SignInServlet", value = "/SignInServlet")
public class SignInServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String pass = req.getParameter("pass");
            ServletContext context = this.getServletContext();
            String dbUrl = context.getInitParameter("dbUrl");
            String dbUsername = context.getInitParameter("dbUsername");
            String dbPassword = context.getInitParameter("dbPassword");
            String jdbcDriver = context.getInitParameter("jdbcDriver");
            Connection connection = DbUtil.getCon(jdbcDriver, dbUrl, dbUsername, dbPassword);
            String sql = "INSERT User (username,password,mailbox,address) " +
                    "VALUE(" + username + "," + password + ",'请输入邮箱','请输入地址');";
            PreparedStatement pst = null;
            try {
                pst = connection.prepareStatement(sql);
                pst.executeUpdate();
            }catch (SQLException throwables){
                throwables.printStackTrace();
            }
            resp.sendRedirect("Login.jsp");
    }
}
