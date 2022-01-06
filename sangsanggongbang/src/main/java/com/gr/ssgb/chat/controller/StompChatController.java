package com.gr.ssgb.chat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;

import com.gr.ssgb.domain.ChatMessageDTO;
@Controller
public class StompChatController {
	 List<WebSocketSession> sessions = new ArrayList<>();
	 Map<String, WebSocketSession> userSessions = new HashMap<>();
	 
	 private final SimpMessagingTemplate template; //특정 Broker로 메세지를 전달
	 
	 
	 @Autowired
	 public StompChatController(SimpMessagingTemplate template) {
		super();
		this.template = template;
	}

	//Client가 SEND할 수 있는 경로
	 //stompConfig에서 설정한 applicationDestinationPrefixes와 @MessageMapping 경로가 병합됨
	 //"/pub/chat/enter"
	 /* @MessageMapping(value = "/chat/enter")
	 public void enter(ChatMessageDTO message){
		 String userId = message.getWriter();
		 userSessions.put(userId, session);
	     message.setMessage(message.getWriter() + "님의 실시간 채팅요청입니다.");
	     template.convertAndSend("/sub/chat/room/" + message.getRoomId(), message);
	 }*/
	 
	 /*@MessageMapping(value = "/chat/alert")
	 public void alert(WebSocketSession session, ChatMessageDTO message) throws Exception{
		 String senderId = getId(session);
	     for (WebSocketSession sess : sessions) {
	    	 if(senderId.equals(message.getRoomId())) {
	    		 
	    		 sess.sendMessage(new TextMessage(message.getWriter()+"님의 대화 신청입니다."));
	    	 }
	     }
	 }*/
	
	 private String getId(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		String userid = (String)httpSession.get("mId");
		if(null==userid) {
			return session.getId();
		}
		return userid;
	}

	@MessageMapping(value = "/chat/message")
	 public void message(ChatMessageDTO message){
	     template.convertAndSend("/sub/chat/room/" + message.getRoomId(), message);
  	 }
}
