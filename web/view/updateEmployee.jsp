<%@page import="PO.Employeeinfo" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Change</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body class="bg-light">
<%response.setCharacterEncoding("UTF-8");%>
<nav class="navbar navbar-expand-lg bg-primary navbar-dark p-3 navbar-fixed-top">
    <div class="container">
        <div class="navbar-brand text-light">
            <strong>
                <span>MEITISHANGCHENG Staffing System</span>
            </strong>
        </div>
    </div>
</nav>
<ul class="nav nav-tabs p-2 nav-fill " size="24px">
    <li class="nav-item ">
        <s:a class="nav-link" href="lookEmployeeAction">查看员工信息</s:a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="addEmployeePageAction">添加员工信息</s:a>

    </li>
    <li class="nav-item">
        <a class="nav-link disabled" aria-current="page" href="#">
            修改员工信息
        </a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="deleteEmployeePageAction">删除员工信息</s:a>
    </li>
</ul>
<br/><br/><br/>
<h2 class="text-center">修改员工信息</h2>

<s:form action="updateEmployeeAction" method="post">
    <table align="center" width="30%" border="5">
        <%
            ArrayList list = (ArrayList) session.getAttribute("oneInfo");
            Employeeinfo info = (Employeeinfo) list.get(0);
        %>
        <tr>
            <td>
                员工工号
            </td>
            <td>
                <input name="id" value="<%=info.getId()%>" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td>
                姓名
            </td>
            <td>
                <input name="name" value="<%=info.getName()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                性别
            </td>
            <td>
                <input name="sex" value="<%=info.getSex()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                年龄
            </td>
            <td>
                <input name="age" value="<%=info.getAge()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                所在部门
            </td>
            <td>
                <input name="department" value="<%=info.getDepartment()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                薪酬
            </td>
            <td>
                <input name="salary" value="<%=info.getSalary()%>"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="text-center offset-md-3">
                <button type="submit" class="btn btn-primary" >提交</button>
                <a class="btn" href="findEmployeePageAction.action">返回</a>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>
