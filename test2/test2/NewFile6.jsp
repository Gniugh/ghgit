<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎页面</title>
</head>
<body>
  <%
		
  Integer f=(Integer)request.getAttribute("flag");
  String log=" ";
  log=request.getParameter("log");
  if(log!=null&&log.equals("yes")){
  String account=request.getParameter("account");
  String pwd=request.getParameter("pwd");
  Cookie cookie1=new Cookie("account",account);
  Cookie cookie2=new Cookie("pwd",pwd);
  cookie1.setMaxAge(600*24);
  cookie2.setMaxAge(600*24);
  response.addCookie(cookie1);
  response.addCookie(cookie2);
}
if(f==null){
  System.out.println("123");
  Cookie cookies[]=request.getCookies();
  for(int i=0;i<cookies.length;i++)
  {
    cookies[i].setMaxAge(0);
    response.addCookie(cookies[i]);
  }
  response.sendRedirect("NewFile4.jsp");
}
%>

登录成功。
  欢迎
</body>
</html>

