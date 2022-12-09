<%--
  Created by IntelliJ IDEA.
  User: 26807
  Date: 2022/11/19
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/login.css">

    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg bg-primary navbar-dark p-3">
        <div class="container">
            <div class="navbar-brand text-light">
                <strong>
                    <span>MEITISHANGCHENG Staffing System</span>
                </strong>
            </div>
        </div>
    </nav>
</div>
<div class="container">
    <div class="row">
        <div class="offset-md-3 col-md-6">
            <div class="p-3"></div>
            <form class="form-horizontal" action="login_login.action" method="post">
                <span class="heading">用户登录</span>

                <div class="form-group">
                    <input type="text" class="form-control" id="username" placeholder="用户名" name="username">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="password" placeholder="密码" name="password">
                    <i class="fa fa-lock"></i>
                </div>
                <div class="form-group">
                    <h3 class="p-1">${msg}</h3>
                    <div class="p-2"></div>
                    <input value="登录" type="submit" class=" btn bg-primary"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
