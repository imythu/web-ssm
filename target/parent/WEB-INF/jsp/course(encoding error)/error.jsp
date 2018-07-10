<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Error</title>
		<style>
			body {
				margin-top:6%;
				backgroun-color: gray;
				color: red;
			}
		</style>
	</head>
	<body>
		<p align="center"><%= (String) request.getAttribute("info") %></p>
	</body>
</html>