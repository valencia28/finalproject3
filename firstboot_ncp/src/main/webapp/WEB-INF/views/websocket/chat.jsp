<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<script src="/jquery-3.7.1.min.js"></script>   
<script>
$(document).ready(function(){
	let websocket;
	$("#enterbtn").on('click', function(){
		websocket = new WebSocket("ws://localhost:9090/chatws");
		
		websocket.onopen=function(){console.log("websocket 연결 성공")} //연결시점 자동호출
		websocket.onclose=function(){console.log("websocket 연결 해제 성공")} //연결시점에서 자동호출되는 메서드
		websocket.onmessage=function(server){  //매개변수 = 수신데이터
			console.log("websocket으로부터 수신 성공");
			if(server.data.indexOf($("#nickname").val()) >= 0){
				//현재 나의 닉네임 메시지 내용이라면 녹색으로 표시하기
				$("#chatarea").append("<div class='me'>"+server.data+"</div>");
				$(".me").css("color", "green");
			}
			else{
				$("#chatarea").append("<div class='other'>"+server.data+"</div>");
				$(".other").css("color", "pink");
			}		
		} //클라이언트, 서버가 메시지를 send하는 시점마다 자동호출되는 메서드
		
		$("#status").html($("#nickname").val() + " 님 입장중입니다. <br>");
	});//입장버튼
	
	$("#exitbtn").on('click', function(){
		websocket.close();
		$("#status").html($("#nickname").val() + " 님 퇴장하셨습니다. <br>");
	});//퇴장버튼
	
	$("#sendbtn").on('click', function(){
		websocket.send($("#nickname").val()+ ":" + $("#message").val());
	});//전송버튼
	
});
</script>
    
</head>
<body>
닉네임 <input type=text name="nickname" id="nickname" value="${param.id }">
<input type=button id="enterbtn" value="입장버튼">
<input type=button id="exitbtn" value="퇴장버튼">

<h1>채팅영역</h1>
<div id="chatarea" style="border:2px solid silver; background-color:yellow">
	채팅내용 표시공간<br>
</div>

대화입력 : <input type=text id="message">
<input type=button id="sendbtn" value="전송"><br>

현재상태 :<div id="status"> </div>
</body>
</html>