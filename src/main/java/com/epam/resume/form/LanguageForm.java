package com.epam.resume.form;

import java.util.ArrayList;
import java.util.List;

import com.epam.resume.entity.Language;


public class LanguageForm {
	private List<Language> items = new ArrayList<>();
	
	public LanguageForm() {
	}

	public LanguageForm(List<Language> items) {
		this.items = items;
	}

	public List<Language> getItems() {
		return items;
	}

	public void setItems(List<Language> items) {
		this.items = items;
	}
}
