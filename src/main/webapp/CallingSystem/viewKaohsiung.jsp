<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>叫號平台</title>
</head>
<body>
	<script type="text/javascript">
		var IntervalID = setInterval(function() {
			location.reload();
		}, 10000);
	</script>
	
		<div style="text-align: center; font-family: Microsoft JhengHei;">
			<h1 style="color: red; font-size: 100px">
				場次三號碼 :<%=application.getAttribute("num3")==null?0:application.getAttribute("num3")%></h1>
		</div>

		<br>
		<hr>


</body>
</html>