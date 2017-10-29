package com.epam.resume.form;

import com.epam.resume.entity.Profile;

public class InfoForm {

	private String info;

	public InfoForm() {
	}

	public InfoForm(String info) {
		this.info = info;
	}
	
	public InfoForm(Profile profile) {
		this.info = profile.getInfo();
	}

	public String getInfo() {
		return info != null ? info.trim() : null;
	}

	public void setInfo(String info) {
		this.info = info;
	}
}
