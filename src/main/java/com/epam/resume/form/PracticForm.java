package com.epam.resume.form;

import java.util.ArrayList;
import java.util.List;

import com.epam.resume.entity.Practic;


public class PracticForm {
	private List<Practic> items = new ArrayList<>();
	
	public PracticForm() {
	}

	public PracticForm(List<Practic> items) {
		this.items = items;
	}

	public List<Practic> getItems() {
		return items;
	}

	public void setItems(List<Practic> items) {
		this.items = items;
	}
}
