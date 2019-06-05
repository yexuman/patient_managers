package cn.zzu.domain;

import java.util.Date;

public class StandupCalibrationData {
	private Integer recordID;

	private Integer userID;
	private Date day;

	private Date starttime;

	private String rawPath;
	
	private Integer type;
	private String dbpCuff;
	private String sbpCuff;
	

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getDbpCuff() {
		return dbpCuff;
	}

	public void setDbpCuff(String dbpCuff) {
		this.dbpCuff = dbpCuff;
	}

	public String getSbpCuff() {
		return sbpCuff;
	}

	public void setSbpCuff(String sbpCuff) {
		this.sbpCuff = sbpCuff;
	}

	public String getRawPath() {
		return rawPath;
	}

	public void setRawPath(String rawPath) {
		this.rawPath = rawPath;
	}



	public Integer getRecordID() {
		return recordID;
	}

	public void setRecordID(Integer recordID) {
		this.recordID = recordID;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	

}