package websocket;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;

@Component
public class ChatWebsocketHandeller implements WebSocketHandler{
	
	List<WebSocketSession> list = new ArrayList();  //웹소켓으로 연결한 클라이언트 모아두는 리스트, WebSocketSession: 클라이언트 객체 하나하나

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// 웹소켓연결시점 1번 실행
		// 웹소켓클라이언트 list add
		
		list.add(session);
		System.out.println("추가후 클라이언트 수= " + list.size() + " - " + session.getRemoteAddress() + " ip에서 접속중");
		
	}	
	

	@Override
	public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
		String str_message = String.valueOf(message.getPayload());
		
		for(WebSocketSession socket : list) {
			WebSocketMessage<String> sendmsg = new TextMessage(str_message);
			socket.sendMessage(message);   //서버가 클라이언트에게 전송
		}	
		
	}
	
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus closeStatus) throws Exception {
		//웹소켓 연결을 해제- 1번만 실행
		list.remove(session);
		System.out.println("삭제후 클라이언트 수= " + list.size() + " - " + session.getRemoteAddress() + " ip에서 접속해제");
		
	}
	
	
	
	

	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		// 오류처리 용도 메서드, 현재 사용안함
		
	}

	@Override
	public boolean supportsPartialMessages() {
		// 통신중 부가정보 생성 용도, 현재는 사용 안함
		return false;
	}
	
}
