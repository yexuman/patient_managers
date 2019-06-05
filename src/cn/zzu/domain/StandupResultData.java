package cn.zzu.domain;

import java.util.Date;

public class StandupResultData {
	private Integer recordID;

	private Integer userID;

	private Date day;

	private Date starttime;

	private Double fs;

	private Double fp;

	private Double fb;

	private String fsc;
	private String fpc;
	private String fbc1;
	private String fbc2;
	private Integer type;

	private Integer duration;

	private Integer experiment;

	private String rawPath;

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

	public Double getFs() {
		return fs;
	}

	public void setFs(Double fs) {
		this.fs = fs;
	}

	public Double getFp() {
		return fp;
	}

	public void setFp(Double fp) {
		this.fp = fp;
	}

	public Double getFb() {
		return fb;
	}

	public void setFb(Double fb) {
		this.fb = fb;
	}

	public String getFsc() {
		return fsc;
	}

	public void setFsc(String fsc) {
		this.fsc = fsc;
	}

	public String getFpc() {
		return fpc;
	}

	public void setFpc(String fpc) {
		this.fpc = fpc;
	}

	public String getFbc1() {
		return fbc1;
	}

	public void setFbc1(String fbc1) {
		this.fbc1 = fbc1;
	}

	

	public String getFbc2() {
		return fbc2;
	}

	public void setFbc2(String fbc2) {
		this.fbc2 = fbc2;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public Integer getExperiment() {
		return experiment;
	}

	public void setExperiment(Integer experiment) {
		this.experiment = experiment;
	}

	public String getRawPath() {
		return rawPath;
	}

	public void setRawPath(String rawPath) {
		this.rawPath = rawPath;
	}
	
	
}