<%--
  Created by IntelliJ IDEA.
  User: 刘洋
  Date: 2019/3/18
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>个人博客</title>
    <link rel="stylesheet" href="layui/css/layui.css">
  </head>
  <script type="text/javascript">
      var code;
      var i=1;
      function reloadCode(){
          var time = new Date();
          // 给URL传递参数可以清空浏览器的缓存，让浏览器认为这是一个新的请求
          document.getElementById('safecode').src = '/imageServlet?d=' + time;
          //前端获取不到后端改变的session值 就是不能即时获取
          <%--i++--%>
          <%--code = "<%=session.getAttribute("piccode")%>";--%>
          <%--alert(code+"----"+i)--%>
      }
  </script>
  <body>

  <ul class="layui-nav layui-bg-green" lay-filter="">
    <li class="layui-nav-item"><a href="">首页</a></li>
    <li class="layui-nav-item"><a href="">文章</a></li>
    <li class="layui-nav-item"><a href="">博客</a></li>
    <li class="layui-nav-item"><a href="">相册</a></li>

  </ul>
  <ul class="layui-nav layui-bg-green layui-layout-right" lay-filter="">
    <li class="layui-nav-item"><a id="login">登陆</a></li>
    <li class="layui-nav-item"><a id="register">注册</a></li>
    <li class="layui-nav-item">
      <a href=""><img src="imgs/1.jpg" class="layui-nav-img"></a>
      <%--<dl class="layui-nav-child">--%>
        <%--<dd><a href="javascript:;">修改信息</a></dd>--%>
        <%--<dd><a href="javascript:;">安全管理</a></dd>--%>
        <%--<dd><a href="javascript:;">退了</a></dd>--%>
      <%--</dl>--%>
    </li>
  </ul>

  <h1>静态资源访问有问题，homepage.jsp 一放到views文件夹中就访问不到jpg</h1>

  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>表单集合演示</legend>
  </fieldset>

  <%--登陆框--%>
  <form class="layui-form" id="demo1" style="display: none" action="/adminServlet?ss=orsg">
    <div class="layui-form-item" style="margin-top: 20px">
      <label class="layui-form-label">用户名:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="text" name="username" lay-verify="required" autocomplete="off" placeholder="请输入用户名" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">密码:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="password" name="password" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">验证码:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="text" name="testcode" lay-verify="test" placeholder="请输入验证码" autocomplete="off" class="layui-input"><br>
        <img src="/imageServlet" id="safecode">&nbsp;&nbsp;&nbsp;<a href="javascript:reloadCode();">看不清楚</a>
      </div>
    </div>
    <div class="layui-form-item">
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit="" lay-filter="demo1" id="sub">登陆</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      </div>
    </div>
  </form>


  <%--注册框--%>
  <form class="layui-form" id="demo2" style="display: none" action="/registerServlet?mothed=register">
    <div class="layui-form-item" style="margin-top: 20px">
      <label class="layui-form-label">用户名:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="text" name="username" lay-verify="required|username" autocomplete="off" id="rname" placeholder="请输入用户名" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">密码:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="password" name="password" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">确认密码:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="password" name="newpassword" lay-verify="required" placeholder="确认密码" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">昵称:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="text" name="nickname" lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">电话号码:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="text" name="phone" lay-verify="required|phone" placeholder="请输入电话号码" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">邮箱:</label>
      <div class="layui-input-block" style="width: 200px">
        <input type="text" name="email" lay-verify="required|email" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">注册</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      </div>
    </div>
  </form>

  <form class="layui-form" action="">
    <div class="layui-form-item">
      <label class="layui-form-label">单行输入框</label>
      <div class="layui-input-block">
        <input type="text" name="title" lay-verify="test1" autocomplete="off" placeholder="请输入标题" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      </div>
    </div>
  </form>


  <button class="layui-btn layui-btn-warm" id="test">登陆</button>


  <script src="layui/layui.js"></script>
  <script src="layui/js/jquery-3.3.1.js"></script>
  <script>
    layui.use(['element','layer','form','jquery'],function () {
        var element = layui.element;
        var layer = layui.layer,form = layui.form,$ = layui.jquery;
        
        $("#test").click(function () {
            layer.open({
                type:1,
                skin: 'layui-layer-rim', //加上边框
                area: ['420px', '240px'], //宽高
                content: $("#demo1")
            })
        })
        $("#login").click(function () {
            layer.open({
                type:1,
                skin: 'layui-layer-rim', //加上边框
                area: '360px', //宽高
                content: $("#demo1")
            })
        })
        $("#register").click(function () {
            layer.open({
                type:1,
                title:'<h3>注册</h3>',
                skin: 'layui-layer-rim', //加上边框
                area: '360px', //宽
                content: $("#demo2")
            })
        })

        form.verify({
            test:function (value) {
                // 这里要加引号
                <%--code = "<%=session.getAttribute("piccode")%>";--%>
                <%--code = code.toUpperCase();--%>
                value = value.toUpperCase()
                var meg=0;
                //这里改为同步刷新，不然异步的话，最后才会执行ajax
                $.ajaxSettings.async = false;
                $.post(
                    "/TestPiccodeServlet",
                    {"value":value},
                    function (result) {
                      if(result == "true"){
                          meg = 1;
                      }
                    }
                )
                if(meg == 0){
                    reloadCode();
                    return "验证码错误!"
                }
            }
        })
        form.on('submit(demo1)', function(data){
            // var username = data.field["usernmae"]
            // alert(username)
            // layer.alert(JSON.stringify(data.field), {
            //     title: '最终的提交信息'
            // })
            var meg = 0;
            $.ajaxSettings.async = false;
            $.post(
                "/adminServlet?mothed=login",
                data.field,
                function (result) {
                    if(result == "false"){
                        // alert("账户或密码错误！")
                       meg = 0;
                    }else{
                        meg = 1;
                    }
                }
            )
          if(meg == 1){
                return true;
          }else {
                layer.msg("账号或密码错误!");
                //清空表单的同时刷新验证码
                $("#demo1").find('input[type=text],input[type=password]').each(function() {
                    $(this).val('');
                });
                reloadCode();
                return false;
          }
        });

        //注册时验证用户名是否存在
        //不能用children()因为这个只能取到子元素
        $("#demo2").find("[name='username']:input").blur(function () {
            // layer.msg($(this).val())
            var meg = 0;
            //这种用外部的变量来判断最好用同步的方式
            $.ajaxSettings.async = false;
            $.post(
              "/registerServlet?mothed=test",
                {"username":$(this).val()},
                function (result) {
                  // alert(result)
                    if(result == "true"){
                        meg = 1;
                    }
                }
            )
            if(meg == 1){
                $(this).val('')
                layer.msg("该用户名已存在!")
            }
            // alert($(this).val())
            // alert("sfe")
        })

    })
  </script>
  </body>

</html>
