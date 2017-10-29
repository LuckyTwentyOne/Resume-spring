package com.epam.resume.form;

import java.util.ArrayList;
import java.util.List;

import com.epam.resume.entity.Education;


public class EducationForm {
	private List<Education> items = new ArrayList<>();
	
	public EducationForm() {
	}

	public EducationForm(List<Education> items) {
		this.items = items;
	}

	public List<Education> getItems() {
		return items;
	}

	public void setItems(List<Education> items) {
		this.items = items;
	}
}
