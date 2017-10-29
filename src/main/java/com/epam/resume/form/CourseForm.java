package com.epam.resume.form;

import java.util.ArrayList;
import java.util.List;

import com.epam.resume.entity.Course;

public class CourseForm {

	private List<Course> items = new ArrayList<>();
	
	public CourseForm() {
	}

	public CourseForm(List<Course> items) {
		this.items = items;
	}

	public List<Course> getItems() {
		return items;
	}

	public void setItems(List<Course> items) {
		this.items = items;
	}
}
