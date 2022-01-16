package com.gr.ssgb.note.model;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.gr.ssgb.note.controller.NoteController;

@Repository
@RequestMapping(value = "/read")
public class WebSocketHandler extends TextWebSocketHandler {
	@Autowired
	SqlSession sqlsession;
	private final Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);
	
	@MessageMapping("/num")
	public void handleTextMessage(WebSocketSession session, TextMessage message) throws IOException  {
		logger.info("오냐?3");
		logger.info("오냐?3={}", message.getPayload());
		NoteController controller = sqlsession.getMapper(NoteController.class);
		logger.info("카운트", message.getPayload());
		session.sendMessage(new TextMessage(controller.readNum(message.getPayload())));
		logger.info(null);
	}
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception  {
		logger.info("오냐?1");
		super.afterConnectionEstablished(session);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception  {
		logger.info("오냐?2");
		super.afterConnectionClosed(session, status);
	}
	


}