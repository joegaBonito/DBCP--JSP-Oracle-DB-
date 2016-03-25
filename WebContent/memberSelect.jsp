<%@ page import="com.javalec.daodto.MemberDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.javalec.daodto.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> dtos = memberDAO.memberSelect();
		
		for(int i =0; i<dtos.size();i++) {
			MemberDTO dto = dtos.get(i);
			String name = dto.getName();
			String id = dto.getId();
			String pw = dto.getPw();
			String phone = dto.getPhone1() + "-" + dto.getPhone2() + "-" + dto.getPhone3();
			String gender = dto.getGender();
			
			out.println("name: " + name + ", id: " + id + ", pw: " + pw + ", phone: " + phone + ", gender: " + gender + "<br/>");
		}
	%>
</body>
</html>