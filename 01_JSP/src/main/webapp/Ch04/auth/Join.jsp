<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	/*  
		request 내장객체 : 요청정보값 저장(Http Request Protocol의 구조형태)
		HttpServeletRequest 클래스로 생성된 객체  - 중요
	*/
	
	/* 문자셋 설정 */
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	//
	
	
%>    
<!-- 서버 순서 -->
<!-- 01 파라미터 받기  -->
<jsp:useBean id="dto" class="Ch04.UserDTO" scope="request"/>
<jsp:setProperty name="dto" property="*" />

<%
	System.out.println("DTO : " + dto);
%>

<!-- 02 유효성 검증(생략) -->

<!-- 03 서비스 실행 ! -->
<jsp:useBean id="dao" class="Ch04.UserDAO" scope="request"/>
<%
	System.out.println("UserDAO" + dao);
	dao.insert(dto);
%>

<!-- 04 결과확인 - 리다이렉트(./03Login.jsp) -->
<%
	//request.getContextPath() = 현재 프로젝트 경로
	response.sendRedirect(request.getContextPath() + "/Ch04/login_form.jsp");

	//프로젝트 경로(/01_JSP)
	//System.out.println("PATH : " + request.getContextPath());
%>

