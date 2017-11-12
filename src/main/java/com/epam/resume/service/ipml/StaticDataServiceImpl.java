package com.epam.resume.service.ipml;

import java.util.Collection;
import java.util.EnumSet;

import org.springframework.stereotype.Service;

import com.epam.resume.model.LanguageLevel;
import com.epam.resume.model.LanguageType;
import com.epam.resume.service.StaticDataService;

@Service
public class StaticDataServiceImpl implements StaticDataService {

	@Override
	public Collection<LanguageType> getAllLanguageTypes() {
		return EnumSet.allOf(LanguageType.class);
	}
	
	@Override
	public Collection<LanguageLevel> getAllLanguageLevels() {
		return EnumSet.allOf(LanguageLevel.class);
	}

}
