package com.epam.resume.util;

import org.apache.commons.lang.WordUtils;

public class DataUtil {
	
	public static String normalizeName(String name) {
		return name.trim().toLowerCase();
	}

	public static String capitalizeName(String name) {
		return WordUtils.capitalize(normalizeName(name));
	}

}
