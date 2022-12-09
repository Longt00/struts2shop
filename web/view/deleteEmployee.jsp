<%@page import="PO.Teachinfo" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body class="bg-light">
<%response.setCharacterEncoding("UTF-8");%>
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
<ul class="nav nav-tabs p-2 nav-fill " size="24px">
    <li class="nav-item ">
        <s:a class="nav-link" href="lookEmployeeAction">查看员工信息</s:a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="../view/addEmployee.jsp">添加员工信息</s:a>

    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="../view/findEmployee.jsp">修改员工信息</s:a>
    </li>
    <li class="nav-item">
        <a class="nav-link disabled" aria-current="page" href="#">
            删除员工信息
        </a>
    </li>
</ul>
<br/><br/><br/>
<h2 class="text-center">删除员工信息</h2>
<s:form action="deleteEmployeeAction" method="post">
    <table class="table table-bordered col-lg-4 col-md-4 offset-md-4 offset-lg-4" >
        <thead>
        <tr>
            <th class="border-dark">
                请输入要删除员工的编号：
            </th>
        </tr>
        </thead>
        <tr>
            <td>
                <input type="text" name="id">
            </td>
            <td>
                <s:submit class="btn btn-primary border-dark offset-md-5" value="确定"/>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>
