package com.gr.ssgb.note.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoteServiceImpl implements NoteService{
	private final NoteDAO noteDAO;
	
	@Autowired
	public NoteServiceImpl(NoteDAO noteDAO) {
		this.noteDAO = noteDAO;
	}
	
}
