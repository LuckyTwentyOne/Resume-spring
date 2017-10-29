package com.epam.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.epam.resume.entity.Skill;


public class SkillForm implements Serializable {
	private static final long serialVersionUID = 4135568197764740034L;
	private List<Skill> items = new ArrayList<>();
	
	public SkillForm() {
	}

	public SkillForm(List<Skill> items) {
		this.items = items;
	}

	public List<Skill> getItems() {
		return items;
	}

	public void setItems(List<Skill> items) {
		this.items = items;
	}
}
