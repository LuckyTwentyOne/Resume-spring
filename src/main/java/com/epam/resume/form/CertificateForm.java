package com.epam.resume.form;

import java.util.ArrayList;
import java.util.List;

import com.epam.resume.entity.Certificate;

public class CertificateForm {

	private List<Certificate> items = new ArrayList<>();

	public CertificateForm() {
	}

	public CertificateForm(List<Certificate> items) {
		this.items = items;
	}

	public List<Certificate> getItems() {
		return items;
	}

	public void setItems(List<Certificate> items) {
		this.items = items;
	}
}
