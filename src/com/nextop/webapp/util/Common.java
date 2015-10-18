package com.nextop.webapp.util;

import java.io.Serializable;

public class Common implements Serializable {

	private static final long serialVersionUID = -1967515983636321010L;
	public static int totalRecord;

	public static int getTotalRecord() {
		return totalRecord;
	}

	public static void setTotalRecord(int totalRecord) {
		Common.totalRecord = totalRecord;
	}

}
