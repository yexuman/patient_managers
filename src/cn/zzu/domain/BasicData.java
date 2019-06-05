package cn.zzu.domain;



public class BasicData {
	 private Integer userID;

	    private String name;

	    private String sex;

	    private Integer age;

	    private Integer height;

	    private Integer weight;

	    private String medHistory;

	   

	    public Integer getUserID() {
			return userID;
		}

		public void setUserID(Integer userID) {
			this.userID = userID;
		}

		public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name == null ? null : name.trim();
	    }

	    public String getSex() {
	        return sex;
	    }

	    public void setSex(String sex) {
	        this.sex = sex == null ? null : sex.trim();
	    }

	    public Integer getAge() {
	        return age;
	    }

	    public void setAge(Integer age) {
	        this.age = age;
	    }

	    public Integer getHeight() {
	        return height;
	    }

	    public void setHeight(Integer height) {
	        this.height = height;
	    }

	    public Integer getWeight() {
	        return weight;
	    }

	    public void setWeight(Integer weight) {
	        this.weight = weight;
	    }

		public String getMedHistory() {
			return medHistory;
		}

		public void setMedHistory(String medHistory) {
			this.medHistory = medHistory;
		}

	   
}