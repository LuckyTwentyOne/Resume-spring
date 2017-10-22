package com.epam.resume.entity;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

@MappedSuperclass
public abstract class AbstractFinishDateEntity<T> extends AbstractEntity<T> {
	private static final long serialVersionUID = -3388293457711051284L;

	@Column(name = "finish_date")
	private Date finishDate;
	
	@Transient
	private Integer finishDateMonth;

	@Transient
	private Integer finishDateYear;
	
	public Date getFinishDate() {
		return finishDate;
	}

	public void setFinishDate(Date finishDate) {
		this.finishDate = finishDate;
	}

	@Transient
	public boolean isFinish() {
		return finishDate != null;
	}

	@Transient
	public Integer getFinishDateMonth() {
		if (finishDate != null) {
			return finishDate.toLocalDate().getMonthValue();
		} else {
			return null;
		}
	}

	@Transient
	public Integer getFinishDateYear() {
		if (finishDate != null) {
			return finishDate.toLocalDate().getYear();
		} else {
			return null;
		}
	}

	public void setFinishDateMonth(Integer finishDateMonth) {
		this.finishDateMonth = finishDateMonth;
		setupFinishDate();
	}

	public void setFinishDateYear(Integer finishDateYear) {
		this.finishDateYear = finishDateYear;
		setupFinishDate();
	}

	private void setupFinishDate() {
		if (finishDateYear != null && finishDateMonth != null) {
			setFinishDate(Date.valueOf(LocalDate.of(finishDateYear, finishDateMonth, 1)));
		} else {
			setFinishDate(null);
		}
	}
}
