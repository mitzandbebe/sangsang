package com.gr.ssgb.domain;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import org.springframework.web.socket.WebSocketSession;

public class ChatRoomDTO {
	
	 private String roomId;
	 private String name;
	 private Set<WebSocketSession> sessions = new HashSet<>();
     //WebSocketSession은 Spring에서 Websocket Connection이 맺어진 세션
	 
	 public static ChatRoomDTO create(String name){
         ChatRoomDTO room = new ChatRoomDTO();

         room.roomId = name;
         room.name = name;
         return room;
     }

	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<WebSocketSession> getSessions() {
		return sessions;
	}

	public void setSessions(Set<WebSocketSession> sessions) {
		this.sessions = sessions;
	}
	 

		
}
