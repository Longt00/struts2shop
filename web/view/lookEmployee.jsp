<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList,PO.Employeeinfo" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Select</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.1/dist/bootstrap-table.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.21.1/dist/bootstrap-table.min.js"></script>

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
        <a href="./Employee.jsp" class="text-light align-justify">返回</a>
        <div class="offset-md-1"></div>
    </nav>
</div>

<ul class="nav nav-tabs p-2 nav-fill " size="24px">
    <li class="nav-item ">
        <a class="nav-link disabled" aria-current="page" href="#">
            查看员工信息
        </a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="../view/addEmployee.jsp">添加员工信息</s:a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="../view/findEmployee.jsp">修改员工信息</s:a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link"
             href="../view/deleteEmployee.jsp">删除员工信息</s:a>
    </li>
</ul>

<div class="container">
    <table class="text-center table table-bordered " id="tb">
        <thead>
        <tr>
            <th class="border-dark" >记录条数</th>
            <th class="border-dark" >员工工号</th>
            <th class="border-dark" >姓名</th>
            <th class="border-dark" >性别</th>
            <th class="border-dark" >年龄</th>
            <th class="border-dark" >所在部门</th>
        </tr>
        </thead>
        <%
            ArrayList list = (ArrayList) session.getAttribute("allInfo");
            if (list.isEmpty()) {
        %>
        <tr>
            <td align="center">
                <span>暂无员工信息!</span>
            </td>
        </tr>
        <%
        } else {
            for (int i = 0; i < list.size(); i++) {
                Employeeinfo info = (Employeeinfo) list.get(i);
        %>
        <tr>
            <td class="border-dark" align="center"><%=i + 1%>
            </td>
            <td class="border-dark" ><%=info.getId()%>
            </td>
            <td class="border-dark" ><%=info.getName()%>
            </td>
            <td class="border-dark" ><%=info.getSex()%>
            </td>
            <td class="border-dark" ><%=info.getAge()%>
            </td>
            <td class="border-dark" ><%=info.getDepartment()%>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</div>

</body>

<script  type="text/javascript">
    $('#tb').bootstrapTable({
        pagination: true,   //是否显示分页条
        pageSize:10,   //一页显示的行数
        paginationLoop: false,   //是否开启分页条无限循环，最后一页时点击下一页是否转到第一页
        pageList: [10, 20],  //选择每页显示多少行，数据过少时可能会没有效果
        search: true,
        searchOnEnterKey: false,
        searchAlign:"right"
    });
</script>
</html>
