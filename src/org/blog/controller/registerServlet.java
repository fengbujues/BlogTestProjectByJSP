package org.blog.controller;

import org.blog.dao.daoimpl.AdminDAOImp;
import org.blog.entity.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    private AdminDAOImp daoImp = null;

    @Override
    public void init() throws ServletException {
        daoImp = new AdminDAOImp();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mothed = request.getParameter("mothed");
        System.out.println("mothed = " + mothed);
        String username = request.getParameter("username");
        PrintWriter writer = response.getWriter();
        if("test".equals(mothed)){
            Admin admin = daoImp.QueryAdminByName(username);
            if(admin!=null){
                writer.print("true");
            }else{
                writer.print("false");
            }
            writer.flush();
            writer.close();
        }else{
//            if("register".equals(mothed))
            String usernmae = request.getParameter("username");
            String password = request.getParameter("password");
            String nickname = request.getParameter("nickname");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            Admin admin = new Admin(username,password,nickname,phone,email);
            boolean flag = daoImp.AddAdmin(admin);
            if(flag){
                System.out.println("注册成功");
                response.sendRedirect("index.jsp");
            }else {
                System.out.println("注册失败");
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
