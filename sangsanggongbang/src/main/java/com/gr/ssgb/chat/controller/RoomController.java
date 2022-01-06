package com.gr.ssgb.chat.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gr.ssgb.domain.ChatRoomRepository;

@Controller
@RequestMapping(value = "/chat")
public class RoomController {
	private static final Logger log = LoggerFactory.getLogger(RoomController.class);
    private final ChatRoomRepository repository;
    
    @Autowired
    public RoomController(ChatRoomRepository repository) {
		super();
		this.repository = repository;
	}

    //채팅방 목록 조회
    @GetMapping(value = "/rooms")
    public ModelAndView rooms(){

        log.info("# All Chat Rooms");
        ModelAndView mv = new ModelAndView("chat/rooms");

        mv.addObject("list", repository.findAllRooms());

        return mv;
    }

    

	//채팅방 개설
    @PostMapping(value = "/room")
    public String create(@RequestParam String name, RedirectAttributes rttr){

        log.info("# Create Chat Room , name: " + name);
        rttr.addFlashAttribute("roomName", repository.createChatRoomDTO(name));
        return "redirect:/chat/rooms";
    }

    //채팅방 조회
    @GetMapping("/room")
    public void getRoom(String roomId, RedirectAttributes rttr, Model model){
    	log.info("# Create Chat Room , name: " + roomId);
        rttr.addFlashAttribute("roomName", repository.createChatRoomDTO(roomId));
    	
        log.info("# get Chat Room, roomID : " + roomId);

        model.addAttribute("room", repository.findRoomById(roomId));
    }
}