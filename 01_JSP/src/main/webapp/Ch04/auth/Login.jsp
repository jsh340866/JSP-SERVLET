<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<!-- 
01 파라미터 받기 

1) AuthDTO 생성(src/main/java/Ch04/AuthDTO)
- userid , password 받기
- jsp:useBean 이용해서 Bean 생성
- jsp:setProperty 로 입력 파라미터 Bean 주입
-->
<jsp:useBean id="Bean" class="Ch04.AuthDTO" scope="request"/>
<jsp:setProperty name="Bean" property="*" />

<%
	System.out.println("Bean : " + Bean);
%>


<!-- 
02 유효성 검증 

1) userid 일치여부 확인(DB내용 - 입력파라미터 내용)
- 일치하면 2) 진행
- 불일치하면 Redirect진행 /01_JSP/Ch04/login_form.jsp
2) password 일치여부 확인(DB내용 - 입력파라미터 내용)
- 일치하면 03 서비스 실행 진행
- 불일치하면 Redirect진행 /01_JSP/Ch04/login_form.jsp
-->
<%

String userid = request.getParameter("userid");
String password = request.getParameter("password");

System.out.println(userid + " : "  +  password);

if(!Bean.getUserid().equals(userid)) {
	System.out.println("아이디가 잘못되었습니다.");
	response.sendRedirect(request.getContextPath()+"/Ch04/login_form.jsp");
}
else if(!Bean.getPassword().equals(password)) {
	System.out.println("비밀번호가 잘못되었습니다.");
	response.sendRedirect(request.getContextPath()+"/Ch04/login_form.jsp");
}

// Redirect
// 
//

%>

<!-- 03 서비스 실행(생략) -->
<%

%>

<!-- 
04 뷰로 이동 
-->
<%
	response.sendRedirect(request.getContextPath() +"/Ch04/main.jsp");
%>








