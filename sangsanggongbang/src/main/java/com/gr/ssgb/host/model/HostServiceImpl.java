package com.gr.ssgb.host.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HostServiceImpl implements HostService{
	private final HostDAO hostDAO;
	
	@Autowired
	public HostServiceImpl(HostDAO hostDAO) {
		this.hostDAO = hostDAO;
	}
	
}
