<%--
  Created by IntelliJ IDEA.
  User: 26807
  Date: 2022/12/9
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title>Person</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="../css/calendar.css" rel="stylesheet" type="text/css">
    <link href="../css/employee.css" rel="stylesheet" type="text/css">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <%--    jQuery --%>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <%--    bootstrap布局 --%>
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
        <a href="./login.jsp" class="text-light align-justify">返回</a>
        <div class="offset-md-1"></div>
    </nav>
    
</div>

<main>
    <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark text-center" style="width: 280px;">
        <span class="fs-4">请选择需要的功能</span>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item" style="width:240px">
                <s:a class="nav-link text-light btn-primary" href="lookEmployeeAction" style="width:240px">查看员工信息</s:a>
            </li>
            <br>
            <li style="width:240px">
                <s:a class="nav-link text-light btn-primary" href="../view/findEmployee.jsp"
                     style="width:240px">修改员工信息</s:a>
            </li>
            <br>
            <li style="width:240px">
                <s:a class="nav-link text-light btn-primary" href="../view/deleteEmployee.jsp"
                     style="width:240px">删除员工信息</s:a>
            </li>
            <br>
            <li style="width:240px">
                <s:a class="nav-link text-light btn-primary" href="../view/addEmployee.jsp"
                     style="width:240px">添加员工信息</s:a>
            </li>
        </ul>
        <hr>
    </div>
    <div class="b-example-divider"></div>
    <div class="container">
        <div id="main">
            <div class="container">
                <div class="container-fluid ">
                    <div class="row">
                        <%--                    <div class="col-md-6"></div>--%>
                        <div class="offset-md-4 col-md-8" id="my-calendar"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="col-md-6">
            <div class="container">
                <div class="container-fluid ">
                    <div class="row">

                        <div class=" col-md-6"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</main>


<script src="../script/calendar.js"></script>
<%--<script src="../script/sidebar.js"></script>--%>
</body>
<script>
    $(document).ready(function () {
        $('#my-calendar').calendar({
            cell_border: false,    //显示单元格边框
            styleClass: 'year',
            show_days: true,     //显示星期几这一栏
            show_today: true,    //显示今天的日期这一栏
            today: true,      //对今天的日期特别标注
        });
    })
</script>
</html>
