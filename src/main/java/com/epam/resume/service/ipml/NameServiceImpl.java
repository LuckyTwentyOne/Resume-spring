package com.epam.resume.service.ipml;

import org.springframework.stereotype.Service;

import com.epam.resume.service.NameService;

@Service
public class NameServiceImpl implements NameService{

	@Override
	public String convertName(String name) {
		return name.toUpperCase();
	}
}
