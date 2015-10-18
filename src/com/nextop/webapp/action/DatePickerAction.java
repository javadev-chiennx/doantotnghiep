package com.nextop.webapp.action;

import com.opensymphony.xwork2.Action;

public class DatePickerAction implements Action {

	private String simpleCalander;
	private String changeYear;
	private String changeYearAndMonth;
	private String showSeconds;
	private String withPannel;
	private String slideDownEffect;
	private String fadeInEffect;
	private String yearRage;
	private String withOutButton;

	public String getSimpleCalander() {
		return simpleCalander;
	}

	public String getChangeYear() {
		return changeYear;
	}

	public String getChangeYearAndMonth() {
		return changeYearAndMonth;
	}

	public String getShowSeconds() {
		return showSeconds;
	}

	public String getWithPannel() {
		return withPannel;
	}

	public String getSlideDownEffect() {
		return slideDownEffect;
	}

	public String getFadeInEffect() {
		return fadeInEffect;
	}

	public String getYearRage() {
		return yearRage;
	}

	public String getWithOutButton() {
		return withOutButton;
	}

	public void setSimpleCalander(String simpleCalander) {
		this.simpleCalander = simpleCalander;
	}

	public void setChangeYear(String changeYear) {
		this.changeYear = changeYear;
	}

	public void setChangeYearAndMonth(String changeYearAndMonth) {
		this.changeYearAndMonth = changeYearAndMonth;
	}

	public void setShowSeconds(String showSeconds) {
		this.showSeconds = showSeconds;
	}

	public void setWithPannel(String withPannel) {
		this.withPannel = withPannel;
	}

	public void setSlideDownEffect(String slideDownEffect) {
		this.slideDownEffect = slideDownEffect;
	}

	public void setFadeInEffect(String fadeInEffect) {
		this.fadeInEffect = fadeInEffect;
	}

	public void setYearRage(String yearRage) {
		this.yearRage = yearRage;
	}

	public void setWithOutButton(String withOutButton) {
		this.withOutButton = withOutButton;
	}

	public String execute() {
		return SUCCESS;
	}
}
