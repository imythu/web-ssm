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
		<title>增加课程信息</title>
		<link rel="stylesheet" type="text/css" href="<%=appPath %>/css/tableLayout.css">
	</head>
	<body>
		<form method="post" action="<%=appPath %>/addcourse.jsp">
			<table>
				<tr>
					<th class="description">课程信息录入，<em class="redNotice">*</em>&nbsp;为必填项</th>
				</tr>
				<tr>
					<th>名称</th>
					<td><input type="text" name="courseName" value="" maxlength="20" required></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;20位字符</td>
				</tr>
				<tr>
					<th>性质</th>
					<td>
						<select name="courseKind">
							<option value="1" selected>公共基础必修课
							<option value="2">公共选修课
							<option value="3">学科基础课
							<option value="4">专业必修课
							<option value="5">专业选修课
							<option value="6">集中性实践教学环节
						</select>
					</td>
					<td class="description"><em class="redNotice">*</em>&nbsp;</td>
				</tr>
				<tr>
					<th>学分</th>
					<td><input type="number" min="0.5" max="10" step="0.5" name="courseCredit" value="" required></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;数值</td>
				</tr>
				<tr>
					<th>开设年级</th>
					<td><input type="number" name="courseGrade" min="2000" max="2050" required></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;4位数年份</td>
				</tr>
				<tr>
					<th>开设专业</th>
					<td>
						<input type="radio" name="courseProfession" value="1" checked>软件工程
						<input type="radio" name="courseProfession" value="2">空间信息
					</td>
					<td class="description"><em class="redNotice">*</em>&nbsp;</td>
				</tr>
				<tr>
					<th>备注</th>
					<td><textarea name="note" maxlength="200" placeholder="要写点什么？"></textarea></td>
					<td class="description"><em class="redNotice">*</em>&nbsp;200个字符以内</td>
				</tr>
			</table>
			<p id="Submit">
				<input type="reset" value="清空输入">
				<input type="submit" name="Submit" value="提交" onclick="datacheck(); return false;">
			</p>
		</form>
		<script type="text/javascript" src="<%=appPath %>/js/datacheck.js"></script>
	</body>
</html>