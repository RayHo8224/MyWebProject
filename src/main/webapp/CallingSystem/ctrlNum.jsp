<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.lang.*"%>
<%!private int num1 = 0;
	private int num2 = 0;
	private int num3 = 0;%>
<%
if(session.getAttribute("isLogin")==null||!"OK".equals(session.getAttribute("isLogin"))){ 
	response.sendRedirect("login.jsp");
}else{

	request.setCharacterEncoding("UTF-8");

	//設定頁面不緩存
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);

	String local = request.getParameter("local");
	String action = request.getParameter("action");
	String number = request.getParameter("number");
	
	boolean hasErrMsg = false;
	int intNum = 0;
if(number!=null&&!"".equals(number)){
	try {
		
		intNum = Integer.parseInt(number);
		if(intNum<0)
			hasErrMsg = true;
	} catch (Exception e) {
		hasErrMsg = true;
	}
}

	if (!hasErrMsg) {

		if ("台北場".equals(local)) {
			if (number != null && !"".equals(number)) {
				application.setAttribute("num1", number);
				num1 = intNum;
			} else if ("下一號".equals(action)) {
				application.setAttribute("num1", ++num1);
			} else if ("上一號".equals(action)) {
				if(num1-1<0){
					num1=0;
				}else{
				num1=num1-1;
				}
				application.setAttribute("num1", num1);
			}
		} else if ("台中場".equals(local)) {
			if (number != null && !"".equals(number)) {
				application.setAttribute("num2", number);
				num2 = intNum;
			} else if ("下一號".equals(action)) {
				application.setAttribute("num2", ++num2);
			} else if ("上一號".equals(action)) {
				if(num2-1<0){
					num2=0;
				}else{
					num2=num2-1;
				}
				application.setAttribute("num2", num2);
			}
		} else if ("高雄場".equals(local)) {
			if (number != null && !"".equals(number)) {
				application.setAttribute("num3", number);
				num3 = intNum;
			} else if ("下一號".equals(action)) {
				application.setAttribute("num3", ++num3);
			} else if ("上一號".equals(action)) {
				if(num3-1<0){
					num3=0;
				}else{
					num3=num3-1;
				}
				application.setAttribute("num3", num3);
			}
		}
	}
	response.sendRedirect("admin.jsp");
}
%>



