<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>叫號後台管理介面</title>


</head>

<script type="text/javascript">
// var IntervalID=setInterval(function(){location.reload();},5000);
</script>
<body>
<%!

private static String id1="0001";
private static String id2="0002";
private static String id3="0003";
private static String pw1="0001";
private static String pw2="0002";
private static String pw3="0003";
private static String adminId="admin";
private static String adminPw="1234";
%>
<%
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);
request.setCharacterEncoding("UTF-8");

boolean isLogin=false;
String empId=request.getParameter("empId");
String pwd=request.getParameter("pwd");

if(id1.equals(empId)){
	if(pw1.equals(pwd)){
		session.setAttribute("isLogin", "OK");
		session.setAttribute("local", "台北場");
		session.setAttribute("num", "num1");
	}
}else if(id2.equals(empId)){
	if(pw2.equals(pwd)){
		session.setAttribute("isLogin", "OK");
		session.setAttribute("local", "台中場");
		session.setAttribute("num", "num2");
	}
}else if(id3.equals(empId)){
	if(pw3.equals(pwd)){
		session.setAttribute("isLogin","OK");
		session.setAttribute("local", "高雄場");
		session.setAttribute("num", "num3");
	}
}else if(adminId.equals(empId)){
	if(adminPw.equals(pwd)){
		session.setAttribute("isLogin","OK");
		session.setAttribute("isAdmin","OK");
	}
}
%>

<%if("OK".equals(session.getAttribute("isLogin"))){ %>
	<%if("OK".equals(session.getAttribute("isAdmin"))){	%>
		<h5>登入成功</h5>
		<% String num=(String)session.getAttribute("num"); %>
		<h3>台北場號碼 :<%=application.getAttribute("num1")==null?0:application.getAttribute("num1")%></h3>
		<br>
		<h3>台中場號碼 :<%=application.getAttribute("num2")==null?0:application.getAttribute("num2")%></h3>
		<br>
		<h3>高雄場號碼 :<%=application.getAttribute("num3")==null?0:application.getAttribute("num3")%></h3>
		<form action="ctrlNum.jsp" method="POST">
		<input type="radio" name="local" value="台北場">台北場
		<input type="radio" name="local" value="台中場">台中場
		<input type="radio" name="local" value="高雄場">高雄場
		<br>
		<input type="submit" name="action" value="上一號">
		<input type="submit" name="action" value="下一號">
	</form>
	<hr>
	<form action="ctrlNum.jsp" method="POST">
		<input type="radio" name="local" value="台北場">台北場
		<input type="radio" name="local" value="台中場">台中場
		<input type="radio" name="local" value="高雄場">高雄場
		<br>
		自訂號碼:<input type="text" name="number">
		<input type="submit" value="修改">
	</form>
	<hr>
	<a href="logOut.jsp">登出</a>
		
	<%}else{ %>

	<h5>登入成功</h5>
	<% String num=(String)session.getAttribute("num"); %>
	<h2>${local}目前號碼:<%= application.getAttribute(num)==null?0:application.getAttribute(num) %></h2>	
	<form action="ctrlNum.jsp" method="POST">
		<input type="hidden" name="local" value="${local}">
		<input class="form" type="submit" name="action" value="上一號">
		<input class="form" type="submit" name="action" value="下一號">
	<div class="clear"></div>
	</form>
	<hr>
	<form action="ctrlNum.jsp" method="POST"  class="form2">
		<input type="hidden" name="local" value="${local}" >
		自訂號碼:<input type="text" name="number" value="輸入自訂號碼" onfocus="cleartext(this)" onblur="resettext(this)" class="t1">
		<input type="submit" value="修改" class="t2">
	</form>
	<hr>
	<a href="logOut.jsp" class="logout">登出</a>
	<%}%>
<%}else{%>
	<h2>登入失敗</h2>
	<h3>帳號或密碼錯誤</h3>
	<a href="login.jsp">重新登入</a>
<%}%>
<br>
<br>
<hr>
</body>
<script type="text/javascript">
function resettext(id){
           if(id.value == "")
           {
                   id.value = id.defaultValue;
           id.className ="t1";   
           }
                     }
function cleartext (id){ 
          id.value ="";
      d.className ="";   
          }
</script>
</html>
