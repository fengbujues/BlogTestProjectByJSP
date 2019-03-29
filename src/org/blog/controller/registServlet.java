package org.blog.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/regist/*")
public class registServlet extends BaseServlet {
    public void test(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("执行registservlet的test方法");
    }

    public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("执行registservlet的regist方法");
    }
}
