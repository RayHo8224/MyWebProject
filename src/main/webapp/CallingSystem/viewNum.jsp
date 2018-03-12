<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>各區即時狀況</title>
</head>
<script type="text/javascript">
var IntervalID=setInterval(function(){location.reload();},5000);
</script>
<body>
<h3>台北場號碼 :<%=application.getAttribute("num1")==null?0:application.getAttribute("num1")%></h3>
<br>
<h3>台中場號碼 :<%=application.getAttribute("num2")==null?0:application.getAttribute("num2")%></h3>
<br>
<h3>高雄場號碼 :<%=application.getAttribute("num3")==null?0:application.getAttribute("num3")%></h3>
<br>
<br>
<br>
<br>
<hr>

</body>
</html>