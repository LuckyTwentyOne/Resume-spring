package com.epam.resume.service;

import java.util.Collection;

import com.epam.resume.model.LanguageLevel;
import com.epam.resume.model.LanguageType;

public interface StaticDataService {
	
	Collection<LanguageType> getAllLanguageTypes();

	Collection<LanguageLevel> getAllLanguageLevels();
}
