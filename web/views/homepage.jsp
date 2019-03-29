<%@ page import="org.blog.entity.Admin" %><%--
  Created by IntelliJ IDEA.
  User: 刘洋
  Date: 2019/3/20
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%--<%@taglib prefix="c" uri="" %>--%>

<html>
<head>
    <title>个人博客</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
</head>
<body>
<%
    Admin admin = (Admin)session.getAttribute("admin");
%>

<ul class="layui-nav layui-bg-green" lay-filter="">
    <li class="layui-nav-item"><a href="">首页</a></li>
    <li class="layui-nav-item"><a href="">文章</a></li>
    <li class="layui-nav-item"><a href="">博客</a></li>
    <li class="layui-nav-item"><a href="">相册</a></li>

</ul>
<ul class="layui-nav layui-bg-green layui-layout-right" lay-filter="">
    <li class="layui-nav-item"><a>欢迎您</a></li>
    <li class="layui-nav-item">
        <a><img src="<%=admin.getImg()%>" class="layui-nav-img"><%=admin.getNickname()%></a>
        <dl class="layui-nav-child">
        <dd><a href="javascript:;">修改信息</a></dd>
        <dd><a href="javascript:;">安全管理</a></dd>
        <dd><a id="exit">退了</a></dd>
        </dl>
    </li>
</ul>

<h2>登陆成功!</h2>


<script src="../layui/layui.js"></script>
<script src="../layui/js/jquery-3.3.1.js"></script>
<script>
    layui.use(['element','layer','form','jquery'],function () {
        var element = layui.element;
        var layer = layui.layer,form = layui.form,$ = layui.jquery;

        $("#exit").click(function () {
            // alert("退出")
            <%
                session.removeAttribute("admin");
            %>
            location.href = "../index.jsp"
        })

        // $("#test").click(function () {
        //     layer.open({
        //         type:1,
        //         skin: 'layui-layer-rim', //加上边框
        //         area: ['420px', '240px'], //宽高
        //         content: $("#demo1")
        //     })
        // })
        // $("#login").click(function () {
        //     layer.open({
        //         type:1,
        //         skin: 'layui-layer-rim', //加上边框
        //         area: ['360px', '240px'], //宽高
        //         content: $("#demo1")
        //     })
        // })
        // form.on('submit(demo1)', function(data){
        //     layer.alert(JSON.stringify(data.field), {
        //         title: '最终的提交信息'
        //     })
        //     return false;
        // });
    })
</script>
</body>

</html>

