<%@page import="cource.CourseInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String appPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>编辑课程信息</title>
		<link rel="stylesheet" type="text/css" href="<%=appPath %>/css/tableLayout.css">
	</head>
	<body>
		<%
			CourseInfo course = (CourseInfo) request.getAttribute("courseInfo");
			System.out.println(course.getCourseID());
		%>
		<form method="post" action="<%=appPath %>/modify.jsp">
			<table>
				<tr>
					<th class="description">课程信息修改<em class="redNotice">*</em>&nbsp;为必填项</th>
				</tr>
				<tr>
					<th>名称</th>
					<td><input id="courseName" type="text" name="courseName" value="<%=course.getCourseName() %>" required></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;20位字符</td>
				</tr>
				<tr>
					<th>性质</th>
					<td>
						<select name="courseKind">
							<option value="1" <%if (course.getCourseKindNumber() == 1 ) out.print("selected"); %>>公共基础必修课</option>
							<option value="2" <%if (course.getCourseKindNumber() == 2) out.print("selected"); %>>公共选修课</option>
							<option value="3" <%if (course.getCourseKindNumber() == 3 ) out.print("selected"); %>>学科基础课</option>
							<option value="4" <%if (course.getCourseKindNumber() == 4 ) out.print("selected"); %>>专业必修课</option>
							<option value="5" <%if (course.getCourseKindNumber() == 5 ) out.print("selected"); %>>专业选修课</option>
							<option value="6" <%if (course.getCourseKindNumber() == 6 ) out.print("selected"); %>>集中性实践教学环节</option>
						</select>
					</td>
					<td class="description"><em class="redNotice">*</em>&nbsp;</td>
				</tr>
				<tr>
					<th>学分</th>
					<td><input type="number" min="0.5" max="10" step="0.5" name="courseCredit" value="<%=course.getCourseCredit() %>" required></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;数值</td>
				</tr>
				<tr>
					<th>开设年级</th>
					<td><input type="number" name="courseGrade" min="2000" max="2050" required value="<%=course.getCourseGrade() %>"></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;4位数年份</td>
				</tr>
				<tr>
					<th>开设专业</th>
					<td>
						<input type="radio" name="courseProfession" value="1" <%if (course.getCourseMajorNumber() == 1 ) out.print("checked"); %>>软件工程
						<input type="radio" name="courseProfession" value="2" <%if (course.getCourseMajorNumber() == 2 ) out.print("checked"); %>>空间信息
					</td>
					<td class="description"><em class="redNotice">*</em>&nbsp;</td>
				</tr>
				<tr>
					<th>备注</th>
					<td><textarea name="note" maxlength="200" placeholder="要写点什么？"><%=course.getNote()==null?"":course.getNote() %></textarea></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;200个字符以内</td>
				</tr>
			</table>
			<input type="hidden" name="courseID" value="<%=course.getCourseID() %>">
			<p id="Submit">
				<input type="reset" value="重置输入框">
				<input type="submit" name="Submit" value="提交" onclick="return datacheck();">
			</p>
		</form>
		<script type="text/javascript" src="<%=appPath %>/js/datacheck.js"></script>
	</body>
</html>