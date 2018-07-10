<%@ page import="com.myth.pojo.Course" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 神话
  Date: 2018.07.10
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>课程列表</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/student.css">
</head>
<body>
<table>
    <caption>课程信息列表</caption>
    <tr id="tableHead">
        <th>名称</th>
        <th>性质</th>
        <th>学分</th>
        <th>开设年级</th>
        <th colspan="2">专业</th>
    </tr>
    <%
        List<Course> courses = (List<Course>) request.getAttribute("courseList");
        for (Course course : courses) {
    %>
    <tr>
        <td><%=course.getVcCourseName()%></td>
        <td><%=course.getnType()%></td>
        <td><%=course.getfCredit()%></td>
        <td><%=course.getnGrade()%></td>
        <td><%=course.getnMajor()%></td>
        <td>
            <a target="_self" href="">编辑</a>
            <a target="_self" href="">删除</a>
        </td>
    </tr>
    <%
        }
    %>
    <tr>
        <td class="bottomTd" colspan="4"><a href="">添加</a></td>
        <td class="bottomTd" colspan="4"><a href="javascript:location.reload()">刷新数据列表</a></td>
    </tr>
</table>
</body>
</html>
