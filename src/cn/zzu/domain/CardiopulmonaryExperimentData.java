package cn.zzu.domain;

import java.util.Date;

public class CardiopulmonaryExperimentData {
    private Integer recordID;

    private Integer userID;

    private Date day;

    private Date starttime;

    private String rawPath;

    private Integer type;

    private Integer duration;
    private String cri1;

    private String cri2;

    private String cri3;

    private String rrv1;

    private String rrv2;

    private String rrv3;

    private String hrv1;

    private String hrv2;

    private String hrv3;
    

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

	public String getCri1() {
		return cri1;
	}

	public void setCri1(String cri1) {
		this.cri1 = cri1;
	}

	public String getCri2() {
		return cri2;
	}

	public void setCri2(String cri2) {
		this.cri2 = cri2;
	}

	public String getCri3() {
		return cri3;
	}

	public void setCri3(String cri3) {
		this.cri3 = cri3;
	}

	public String getRrv1() {
		return rrv1;
	}

	public void setRrv1(String rrv1) {
		this.rrv1 = rrv1;
	}

	public String getRrv2() {
		return rrv2;
	}

	public void setRrv2(String rrv2) {
		this.rrv2 = rrv2;
	}

	public String getRrv3() {
		return rrv3;
	}

	public void setRrv3(String rrv3) {
		this.rrv3 = rrv3;
	}

	public String getHrv1() {
		return hrv1;
	}

	public void setHrv1(String hrv1) {
		this.hrv1 = hrv1;
	}

	public String getHrv2() {
		return hrv2;
	}

	public void setHrv2(String hrv2) {
		this.hrv2 = hrv2;
	}

	public String getHrv3() {
		return hrv3;
	}

	public void setHrv3(String hrv3) {
		this.hrv3 = hrv3;
	}
    
    
}