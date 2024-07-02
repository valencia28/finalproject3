package websocket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	@RequestMapping("/chatstart")   //http로 입력받고 chat.jsp view를 보여줌
	String chatstart(String id) {
		return "websocket/chat";
	}
}
