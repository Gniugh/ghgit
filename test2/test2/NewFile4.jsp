<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
	
	 String account="";
	 String pwd="";
	Cookie[] cookies=request.getCookies();
	if(cookies!=null&&cookies.length>0)
	{
		for(Cookie c:cookies){
			if(c.getName().equals("account")){
				account=c.getValue();
			}
			if(c.getName().equals("pwd")){
				pwd=c.getValue();
			}
			if(c.getName().equals("account")){
				request.setAttribute("flag", 1);
				request.getRequestDispatcher("NewFile6.jsp").forward(request, response);
						}
		
	}
    
%>


	<form name="loginForm" action="NewFile6.jsp" method="post">
    	账号：<input name="account" type="text"><br>
    	密码：<input name="password" type ="password"><br>
    	<input type="button" value="登录" onclick="validate()">
        是否保存登录状态<input name="log" type="radio" value="yes">是
        <input name="log" type="radio" value="no">否
    </form>
    <script type="text/javascript">
    	function validate(){
    		if(loginForm.account.value!=loginForm.password.value){
    			alert("登录失败");return;
    		}
    		 loginForm.submit();
    	}
    </script>
    
</body>
</html>
