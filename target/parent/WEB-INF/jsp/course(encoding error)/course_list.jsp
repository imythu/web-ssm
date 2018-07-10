<%@ page import="com.myth.pojo.Course" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>课程列表</title>
		<link rel="stylesheet" type="text/css" href="/css/student.css">
	</head>
	<body>
		<table>
			<caption>课程信息列表</caption>
			<tr id="tableHead">
				<th>名称</th>
				<th>性质</th>
				<th>学分</th>
				<th>开设年级</th>
				<th colspan="2">开设专业</th>
			</tr>
			<%
				ArrayList<Course> courseList = (ArrayList<Course>) request.getAttribute("courseList");
				for (Course course : courseList) {
			%>
			<tr>
				<td><%=course.getVcCourseName() %></td>
				<td><%=course.getnType() %></td>
				<td><%=course.getfCredit() %></td>
				<td><%=course.getnGrade() %></td>
				<td><%=course.getnMajor() %></td>
				<td>
					<a target="_self" href="/modify.jsp?courseID=<%=course.getnCourseId() %>">编辑</a>
					<a target="_self" href="/delete.jsp?courseID=<%=course.getnCourseId() %>">删除</a>
				</td>
			</tr>
			<%} %>
			<tr>
				<td class="bottomTd" colspan="4"><a href="/course/course_add.jsp">添加</a></td>
				<td class="bottomTd" colspan="4"><a href="javascript:location.reload();">刷新数据列表</a></td>
			</tr>
		</table>
	</body>
</html>