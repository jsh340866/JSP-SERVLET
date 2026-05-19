<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- SCRIPTLET -->
<%
	String str1 = "HELLO1";
	String str2 = "HELLO2";
	String str3 = str1 + str2;
	int a = 0;
	for (int i = 0; i < 10; i++) {
		a++;
		System.out.println("i : " + i);
	}
%>

str1 : <%=str1 %><br>
str2 : <%=str2 %><br>
str3 : <%=str3 %><br>
a	 : <%=a %><br>



</body>
</html>