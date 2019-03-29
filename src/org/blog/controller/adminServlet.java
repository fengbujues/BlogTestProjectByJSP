package org.blog.controller;

import org.blog.dao.daoimpl.AdminDAOImp;
import org.blog.entity.Admin;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


@WebServlet("/adminServlet")
public class adminServlet extends javax.servlet.http.HttpServlet {
    private AdminDAOImp daoImp=null;

    @Override
    public void init() throws ServletException {
        daoImp = new AdminDAOImp();
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String mothed = request.getParameter("mothed");
        StringBuffer url = request.getRequestURL();
        System.out.println("访问地址:"+url);
        String queryString = request.getQueryString();
        System.out.println("附加参数:"+queryString);
        login(request,response);
        System.out.println("登陆:"+mothed);
//       switch (mothed){
//           case "login":login(request,response);break;
//       }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
    protected void login(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        Admin admin = daoImp.login(username, password);
        PrintWriter writer = response.getWriter();
        if (admin!=null){
            writer.print("true");
            HttpSession session = request.getSession();
            session.setAttribute("admin",admin);
            response.sendRedirect("views/homepage.jsp");
        }else{
            writer.print("false");
        }
        writer.flush();
        writer.close();
//        daoImp.closeAll();
    }
}
