<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

<h1>로그인</h1> 

<form action="/member/login" id="loginfrom" method="post">
id: <input name="member_id"><br>
pw: <input type="password" name="member_pw" id="member_pw"><br>
<input type="submit" value="login" id="login">
<button id="logncancle"></button>
</form>

<jsp:include page="../footer.jsp" />

</body>
<!-- 수정 전
<script type="text/javascript">

$(document).ready(function() {
	$("#logncancle").click(function() {
		location.assign("/");
		
		$("#login").click(function(event) {
			event.preventDefault();
			
			if($("#member_pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#member_pw").focus();
				return false;
			}
			$.ajax({
				url : "/member/passChk",
				type : "POST",
				dataType : "json",
				data : $("#loginfrom").serializeArray(),
				success: function(data){					
					if(data==0){
						alert("아이디 또는 패스워드가 틀렸습니다.");
						return;
					}else{
							$("#loginfrom").submit();
						}						
					}
				}
			})
		});
		
	});
}); 

</script> -->

</html>


