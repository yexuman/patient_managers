package cn.zzu.domain;

public class Infocollect {
    private Integer userID;

    private String rescenternum;

    private String patientnum;
    
    private String   patfirstzm;
    
    public String getPatfirstzm() {
		return patfirstzm;
	}

	public void setPatfirstzm(String patfirstzm) {
		this.patfirstzm = patfirstzm;
	}

	private String sex;

    private Double height;

    private Double weight;

    private String birth;

    private String hibltime;

    private String rduceblood;

    private String reducebloodmedi;
    
    private String redoucebloodoth;
    
    

    public String getRedoucebloodoth() {
		return redoucebloodoth;
	}

	public void setRedoucebloodoth(String redoucebloodoth) {
		this.redoucebloodoth = redoucebloodoth;
	}

	private String heartinfarc;

    private String peripheralartery;

    private String twosugardis;

    private String bloodfat;

    private String highbloodkidney;

    private Double temperature;

    private Double breath;

    private Double heartfre;

    private Double bloodpre;

    private String haveexcep;

    private String haveexcepdesc;

    private String xcgsamplecoltime;

    private Float hb;
    private Float rbc;
    private Float plt;
    private Float tg;
    private Float wbc;
    private Float cho;
    private Float hdlc;
    private Float ldlc;
    private Float ast;
    private Float alt;
    private Float tbil;
    private Float ua;
    private Float dbil;

    private Float bun;

    private Float k;

    private Float cr;

    private Float na;

    private Float cl;

    private Float crp;

    private Float ilsix;

    private Float qujia;

    private Float xueguan;

    private Float glu;

    private Float tnf;

    private Float shenshangxian;

    private Float shensu;

    private Float quangut;

    private Integer hblevel;

    private Integer rbclevel;

    private Integer pltlevel;

    private Integer tglevel;

    private Integer wbclevel;

    private Integer cholevel;

    private Integer hdlclevel;

    private Integer ldlclevel;

    private Integer astlevel;

    private Integer dbillevel;

    private Integer bunlevel;

    private Integer klevel;

    private Integer altlevel;

    private Integer tbillevel;

    private Integer ualevel;

    private Integer crlevel;

    private Integer nalevel;

    private Integer cllevel;

    private Integer crplevel;

    private Integer ilsixlevel;

    private Integer qujialevel;

    private Integer xueguanlevel;

    private Integer glulevel;

    private Integer tnflevel;

    private Integer shenshangxianlevel;

    private Integer shensulevel;

    private Integer quangutlevel;

    private String niaosampcoltime;

    private String daobai;

    private Float nrbc;

    private Float ncr;

    private Integer daobailevel;

    private Integer nrbclevel;

    private Integer ncrlevel;

    private Float nwbc;

    private Integer nwbclevel;

    private Float nalb;

    private Integer nalblevel;

    private Float nac;

    private Integer naclevel;

    private String tcoltime;

    private Float twohourxt;

    private Float hbaic;

    private Integer twohourxtlevel;

    private Integer hbaiclevel;

    private String onetwohearttime;

    private String onetwores;

    private String onetworesdesc;

    private String twofourhearttime;

    private String chaoshearttime;

    private String neipitime;

    private String zhitidtime;

    private String sbpright;

    private String sbpleft;

    private String dbpright;

    private String dbpleft;

    private String ppright;

    private String ppleft;

    private String mapright;

    private String mapleft;

    private String hrright;

    private String hrleft;

    private String pwvright;

    private String pwvleft;

    private String abiright;

    private String abileft;

    private String abpmstarttime;

    private String abpmendtime;

    private String jiuqintime;

    private String getuptime;

    private String dongtaix;

    private String sixpacetime;

    private String brogpftime;

    private String heartbloodtime;

    private String signcpettime;

    private String commitcpettime;

    private String sixpaceisdo;

    private String brogpfisdo;

    private String heartbloodisdo;

    private String signcpetisdo;

    private String commitcpetisdo;

  
    public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getRescenternum() {
        return rescenternum;
    }

    public void setRescenternum(String rescenternum) {
        this.rescenternum = rescenternum == null ? null : rescenternum.trim();
    }

    public String getPatientnum() {
        return patientnum;
    }

    public void setPatientnum(String patientnum) {
        this.patientnum = patientnum == null ? null : patientnum.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth == null ? null : birth.trim();
    }

    public String getHibltime() {
        return hibltime;
    }

    public void setHibltime(String hibltime) {
        this.hibltime = hibltime == null ? null : hibltime.trim();
    }

    public String getRduceblood() {
        return rduceblood;
    }

    public void setRduceblood(String rduceblood) {
        this.rduceblood = rduceblood == null ? null : rduceblood.trim();
    }

    public String getReducebloodmedi() {
        return reducebloodmedi;
    }

    public void setReducebloodmedi(String reducebloodmedi) {
        this.reducebloodmedi = reducebloodmedi == null ? null : reducebloodmedi.trim();
    }

    public String getHeartinfarc() {
        return heartinfarc;
    }

    public void setHeartinfarc(String heartinfarc) {
        this.heartinfarc = heartinfarc == null ? null : heartinfarc.trim();
    }

    public String getPeripheralartery() {
        return peripheralartery;
    }

    public void setPeripheralartery(String peripheralartery) {
        this.peripheralartery = peripheralartery == null ? null : peripheralartery.trim();
    }

    public String getTwosugardis() {
        return twosugardis;
    }

    public void setTwosugardis(String twosugardis) {
        this.twosugardis = twosugardis == null ? null : twosugardis.trim();
    }

    public String getBloodfat() {
        return bloodfat;
    }

    public void setBloodfat(String bloodfat) {
        this.bloodfat = bloodfat == null ? null : bloodfat.trim();
    }

    public String getHighbloodkidney() {
        return highbloodkidney;
    }

    public void setHighbloodkidney(String highbloodkidney) {
        this.highbloodkidney = highbloodkidney == null ? null : highbloodkidney.trim();
    }

    public Double getTemperature() {
        return temperature;
    }

    public void setTemperature(Double temperature) {
        this.temperature = temperature;
    }

    public Double getBreath() {
        return breath;
    }

    public void setBreath(Double breath) {
        this.breath = breath;
    }

    public Double getHeartfre() {
        return heartfre;
    }

    public void setHeartfre(Double heartfre) {
        this.heartfre = heartfre;
    }

    public Double getBloodpre() {
        return bloodpre;
    }

    public void setBloodpre(Double bloodpre) {
        this.bloodpre = bloodpre;
    }

    public String getHaveexcep() {
        return haveexcep;
    }

    public void setHaveexcep(String haveexcep) {
        this.haveexcep = haveexcep == null ? null : haveexcep.trim();
    }

    public String getHaveexcepdesc() {
        return haveexcepdesc;
    }

    public void setHaveexcepdesc(String haveexcepdesc) {
        this.haveexcepdesc = haveexcepdesc == null ? null : haveexcepdesc.trim();
    }

    public String getXcgsamplecoltime() {
        return xcgsamplecoltime;
    }

    public void setXcgsamplecoltime(String xcgsamplecoltime) {
        this.xcgsamplecoltime = xcgsamplecoltime == null ? null : xcgsamplecoltime.trim();
    }

    public Float getHb() {
        return hb;
    }

    public void setHb(Float hb) {
        this.hb = hb;
    }

    public Float getRbc() {
        return rbc;
    }

    public void setRbc(Float rbc) {
        this.rbc = rbc;
    }

    public Float getPlt() {
        return plt;
    }

    public void setPlt(Float plt) {
        this.plt = plt;
    }

    public Float getTg() {
        return tg;
    }

    public void setTg(Float tg) {
        this.tg = tg;
    }

    public Float getWbc() {
        return wbc;
    }

    public void setWbc(Float wbc) {
        this.wbc = wbc;
    }

    public Float getCho() {
        return cho;
    }

    public void setCho(Float cho) {
        this.cho = cho;
    }

    public Float getHdlc() {
        return hdlc;
    }

    public void setHdlc(Float hdlc) {
        this.hdlc = hdlc;
    }

    public Float getLdlc() {
        return ldlc;
    }

    public void setLdlc(Float ldlc) {
        this.ldlc = ldlc;
    }

    public Float getAst() {
        return ast;
    }

    public void setAst(Float ast) {
        this.ast = ast;
    }

    public Float getDbil() {
        return dbil;
    }

    public void setDbil(Float dbil) {
        this.dbil = dbil;
    }

    public Float getBun() {
        return bun;
    }

    public void setBun(Float bun) {
        this.bun = bun;
    }

    public Float getK() {
        return k;
    }

    public void setK(Float k) {
        this.k = k;
    }

    public Float getAlt() {
        return alt;
    }

    public void setAlt(Float alt) {
        this.alt = alt;
    }

    public Float getTbil() {
        return tbil;
    }

    public void setTbil(Float tbil) {
        this.tbil = tbil;
    }

    public Float getUa() {
        return ua;
    }

    public void setUa(Float ua) {
        this.ua = ua;
    }

    public Float getCr() {
        return cr;
    }

    public void setCr(Float cr) {
        this.cr = cr;
    }

    public Float getNa() {
        return na;
    }

    public void setNa(Float na) {
        this.na = na;
    }

    public Float getCl() {
        return cl;
    }

    public void setCl(Float cl) {
        this.cl = cl;
    }

    public Float getCrp() {
        return crp;
    }

    public void setCrp(Float crp) {
        this.crp = crp;
    }

    public Float getIlsix() {
        return ilsix;
    }

    public void setIlsix(Float ilsix) {
        this.ilsix = ilsix;
    }

    public Float getQujia() {
        return qujia;
    }

    public void setQujia(Float qujia) {
        this.qujia = qujia;
    }

    public Float getXueguan() {
        return xueguan;
    }

    public void setXueguan(Float xueguan) {
        this.xueguan = xueguan;
    }

    public Float getGlu() {
        return glu;
    }

    public void setGlu(Float glu) {
        this.glu = glu;
    }

    public Float getTnf() {
        return tnf;
    }

    public void setTnf(Float tnf) {
        this.tnf = tnf;
    }

    public Float getShenshangxian() {
        return shenshangxian;
    }

    public void setShenshangxian(Float shenshangxian) {
        this.shenshangxian = shenshangxian;
    }

    public Float getShensu() {
        return shensu;
    }

    public void setShensu(Float shensu) {
        this.shensu = shensu;
    }

    public Float getQuangut() {
        return quangut;
    }

    public void setQuangut(Float quangut) {
        this.quangut = quangut;
    }

    public Integer getHblevel() {
        return hblevel;
    }

    public void setHblevel(Integer hblevel) {
        this.hblevel = hblevel;
    }

    public Integer getRbclevel() {
        return rbclevel;
    }

    public void setRbclevel(Integer rbclevel) {
        this.rbclevel = rbclevel;
    }

    public Integer getPltlevel() {
        return pltlevel;
    }

    public void setPltlevel(Integer pltlevel) {
        this.pltlevel = pltlevel;
    }

    public Integer getTglevel() {
        return tglevel;
    }

    public void setTglevel(Integer tglevel) {
        this.tglevel = tglevel;
    }

    public Integer getWbclevel() {
        return wbclevel;
    }

    public void setWbclevel(Integer wbclevel) {
        this.wbclevel = wbclevel;
    }

    public Integer getCholevel() {
        return cholevel;
    }

    public void setCholevel(Integer cholevel) {
        this.cholevel = cholevel;
    }

    public Integer getHdlclevel() {
        return hdlclevel;
    }

    public void setHdlclevel(Integer hdlclevel) {
        this.hdlclevel = hdlclevel;
    }

    public Integer getLdlclevel() {
        return ldlclevel;
    }

    public void setLdlclevel(Integer ldlclevel) {
        this.ldlclevel = ldlclevel;
    }

    public Integer getAstlevel() {
        return astlevel;
    }

    public void setAstlevel(Integer astlevel) {
        this.astlevel = astlevel;
    }

    public Integer getDbillevel() {
        return dbillevel;
    }

    public void setDbillevel(Integer dbillevel) {
        this.dbillevel = dbillevel;
    }

    public Integer getBunlevel() {
        return bunlevel;
    }

    public void setBunlevel(Integer bunlevel) {
        this.bunlevel = bunlevel;
    }

    public Integer getKlevel() {
        return klevel;
    }

    public void setKlevel(Integer klevel) {
        this.klevel = klevel;
    }

    public Integer getAltlevel() {
        return altlevel;
    }

    public void setAltlevel(Integer altlevel) {
        this.altlevel = altlevel;
    }

    public Integer getTbillevel() {
        return tbillevel;
    }

    public void setTbillevel(Integer tbillevel) {
        this.tbillevel = tbillevel;
    }

    public Integer getUalevel() {
        return ualevel;
    }

    public void setUalevel(Integer ualevel) {
        this.ualevel = ualevel;
    }

    public Integer getCrlevel() {
        return crlevel;
    }

    public void setCrlevel(Integer crlevel) {
        this.crlevel = crlevel;
    }

    public Integer getNalevel() {
        return nalevel;
    }

    public void setNalevel(Integer nalevel) {
        this.nalevel = nalevel;
    }

    public Integer getCllevel() {
        return cllevel;
    }

    public void setCllevel(Integer cllevel) {
        this.cllevel = cllevel;
    }

    public Integer getCrplevel() {
        return crplevel;
    }

    public void setCrplevel(Integer crplevel) {
        this.crplevel = crplevel;
    }

    public Integer getIlsixlevel() {
        return ilsixlevel;
    }

    public void setIlsixlevel(Integer ilsixlevel) {
        this.ilsixlevel = ilsixlevel;
    }

    public Integer getQujialevel() {
        return qujialevel;
    }

    public void setQujialevel(Integer qujialevel) {
        this.qujialevel = qujialevel;
    }

    public Integer getXueguanlevel() {
        return xueguanlevel;
    }

    public void setXueguanlevel(Integer xueguanlevel) {
        this.xueguanlevel = xueguanlevel;
    }

    public Integer getGlulevel() {
        return glulevel;
    }

    public void setGlulevel(Integer glulevel) {
        this.glulevel = glulevel;
    }

    public Integer getTnflevel() {
        return tnflevel;
    }

    public void setTnflevel(Integer tnflevel) {
        this.tnflevel = tnflevel;
    }

    public Integer getShenshangxianlevel() {
        return shenshangxianlevel;
    }

    public void setShenshangxianlevel(Integer shenshangxianlevel) {
        this.shenshangxianlevel = shenshangxianlevel;
    }

    public Integer getShensulevel() {
        return shensulevel;
    }

    public void setShensulevel(Integer shensulevel) {
        this.shensulevel = shensulevel;
    }

    public Integer getQuangutlevel() {
        return quangutlevel;
    }

    public void setQuangutlevel(Integer quangutlevel) {
        this.quangutlevel = quangutlevel;
    }

    public String getNiaosampcoltime() {
        return niaosampcoltime;
    }

    public void setNiaosampcoltime(String niaosampcoltime) {
        this.niaosampcoltime = niaosampcoltime == null ? null : niaosampcoltime.trim();
    }

    public String getDaobai() {
        return daobai;
    }

    public void setDaobai(String daobai) {
        this.daobai = daobai == null ? null : daobai.trim();
    }

    public Float getNrbc() {
        return nrbc;
    }

    public void setNrbc(Float nrbc) {
        this.nrbc = nrbc;
    }

    public Float getNcr() {
        return ncr;
    }

    public void setNcr(Float ncr) {
        this.ncr = ncr;
    }

    public Integer getDaobailevel() {
        return daobailevel;
    }

    public void setDaobailevel(Integer daobailevel) {
        this.daobailevel = daobailevel;
    }

    public Integer getNrbclevel() {
        return nrbclevel;
    }

    public void setNrbclevel(Integer nrbclevel) {
        this.nrbclevel = nrbclevel;
    }

    public Integer getNcrlevel() {
        return ncrlevel;
    }

    public void setNcrlevel(Integer ncrlevel) {
        this.ncrlevel = ncrlevel;
    }

    public Float getNwbc() {
        return nwbc;
    }

    public void setNwbc(Float nwbc) {
        this.nwbc = nwbc;
    }

    public Integer getNwbclevel() {
        return nwbclevel;
    }

    public void setNwbclevel(Integer nwbclevel) {
        this.nwbclevel = nwbclevel;
    }

    public Float getNalb() {
        return nalb;
    }

    public void setNalb(Float nalb) {
        this.nalb = nalb;
    }

    public Integer getNalblevel() {
        return nalblevel;
    }

    public void setNalblevel(Integer nalblevel) {
        this.nalblevel = nalblevel;
    }

    public Float getNac() {
        return nac;
    }

    public void setNac(Float nac) {
        this.nac = nac;
    }

    public Integer getNaclevel() {
        return naclevel;
    }

    public void setNaclevel(Integer naclevel) {
        this.naclevel = naclevel;
    }

    public String getTcoltime() {
        return tcoltime;
    }

    public void setTcoltime(String tcoltime) {
        this.tcoltime = tcoltime == null ? null : tcoltime.trim();
    }

    public Float getTwohourxt() {
        return twohourxt;
    }

    public void setTwohourxt(Float twohourxt) {
        this.twohourxt = twohourxt;
    }

    public Float getHbaic() {
        return hbaic;
    }

    public void setHbaic(Float hbaic) {
        this.hbaic = hbaic;
    }

    public Integer getTwohourxtlevel() {
        return twohourxtlevel;
    }

    public void setTwohourxtlevel(Integer twohourxtlevel) {
        this.twohourxtlevel = twohourxtlevel;
    }

    public Integer getHbaiclevel() {
        return hbaiclevel;
    }

    public void setHbaiclevel(Integer hbaiclevel) {
        this.hbaiclevel = hbaiclevel;
    }

    public String getOnetwohearttime() {
        return onetwohearttime;
    }

    public void setOnetwohearttime(String onetwohearttime) {
        this.onetwohearttime = onetwohearttime == null ? null : onetwohearttime.trim();
    }

    public String getOnetwores() {
        return onetwores;
    }

    public void setOnetwores(String onetwores) {
        this.onetwores = onetwores == null ? null : onetwores.trim();
    }

    public String getOnetworesdesc() {
        return onetworesdesc;
    }

    public void setOnetworesdesc(String onetworesdesc) {
        this.onetworesdesc = onetworesdesc == null ? null : onetworesdesc.trim();
    }

    public String getTwofourhearttime() {
        return twofourhearttime;
    }

    public void setTwofourhearttime(String twofourhearttime) {
        this.twofourhearttime = twofourhearttime == null ? null : twofourhearttime.trim();
    }

    public String getChaoshearttime() {
        return chaoshearttime;
    }

    public void setChaoshearttime(String chaoshearttime) {
        this.chaoshearttime = chaoshearttime == null ? null : chaoshearttime.trim();
    }

    public String getNeipitime() {
        return neipitime;
    }

    public void setNeipitime(String neipitime) {
        this.neipitime = neipitime == null ? null : neipitime.trim();
    }

    public String getZhitidtime() {
        return zhitidtime;
    }

    public void setZhitidtime(String zhitidtime) {
        this.zhitidtime = zhitidtime == null ? null : zhitidtime.trim();
    }

    public String getSbpright() {
        return sbpright;
    }

    public void setSbpright(String sbpright) {
        this.sbpright = sbpright == null ? null : sbpright.trim();
    }

    public String getSbpleft() {
        return sbpleft;
    }

    public void setSbpleft(String sbpleft) {
        this.sbpleft = sbpleft == null ? null : sbpleft.trim();
    }

    public String getDbpright() {
        return dbpright;
    }

    public void setDbpright(String dbpright) {
        this.dbpright = dbpright == null ? null : dbpright.trim();
    }

    public String getDbpleft() {
        return dbpleft;
    }

    public void setDbpleft(String dbpleft) {
        this.dbpleft = dbpleft == null ? null : dbpleft.trim();
    }

    public String getPpright() {
        return ppright;
    }

    public void setPpright(String ppright) {
        this.ppright = ppright == null ? null : ppright.trim();
    }

    public String getPpleft() {
        return ppleft;
    }

    public void setPpleft(String ppleft) {
        this.ppleft = ppleft == null ? null : ppleft.trim();
    }

    public String getMapright() {
        return mapright;
    }

    public void setMapright(String mapright) {
        this.mapright = mapright == null ? null : mapright.trim();
    }

    public String getMapleft() {
        return mapleft;
    }

    public void setMapleft(String mapleft) {
        this.mapleft = mapleft == null ? null : mapleft.trim();
    }

    public String getHrright() {
        return hrright;
    }

    public void setHrright(String hrright) {
        this.hrright = hrright == null ? null : hrright.trim();
    }

    public String getHrleft() {
        return hrleft;
    }

    public void setHrleft(String hrleft) {
        this.hrleft = hrleft == null ? null : hrleft.trim();
    }

    public String getPwvright() {
        return pwvright;
    }

    public void setPwvright(String pwvright) {
        this.pwvright = pwvright == null ? null : pwvright.trim();
    }

    public String getPwvleft() {
        return pwvleft;
    }

    public void setPwvleft(String pwvleft) {
        this.pwvleft = pwvleft == null ? null : pwvleft.trim();
    }

    public String getAbiright() {
        return abiright;
    }

    public void setAbiright(String abiright) {
        this.abiright = abiright == null ? null : abiright.trim();
    }

    public String getAbileft() {
        return abileft;
    }

    public void setAbileft(String abileft) {
        this.abileft = abileft == null ? null : abileft.trim();
    }

    public String getAbpmstarttime() {
        return abpmstarttime;
    }

    public void setAbpmstarttime(String abpmstarttime) {
        this.abpmstarttime = abpmstarttime == null ? null : abpmstarttime.trim();
    }

    public String getAbpmendtime() {
        return abpmendtime;
    }

    public void setAbpmendtime(String abpmendtime) {
        this.abpmendtime = abpmendtime == null ? null : abpmendtime.trim();
    }

    public String getJiuqintime() {
        return jiuqintime;
    }

    public void setJiuqintime(String jiuqintime) {
        this.jiuqintime = jiuqintime == null ? null : jiuqintime.trim();
    }

    public String getGetuptime() {
        return getuptime;
    }

    public void setGetuptime(String getuptime) {
        this.getuptime = getuptime == null ? null : getuptime.trim();
    }

    public String getDongtaix() {
        return dongtaix;
    }

    public void setDongtaix(String dongtaix) {
        this.dongtaix = dongtaix == null ? null : dongtaix.trim();
    }

    public String getSixpacetime() {
        return sixpacetime;
    }

    public void setSixpacetime(String sixpacetime) {
        this.sixpacetime = sixpacetime == null ? null : sixpacetime.trim();
    }

    public String getBrogpftime() {
        return brogpftime;
    }

    public void setBrogpftime(String brogpftime) {
        this.brogpftime = brogpftime == null ? null : brogpftime.trim();
    }

    public String getHeartbloodtime() {
        return heartbloodtime;
    }

    public void setHeartbloodtime(String heartbloodtime) {
        this.heartbloodtime = heartbloodtime == null ? null : heartbloodtime.trim();
    }

    public String getSigncpettime() {
        return signcpettime;
    }

    public void setSigncpettime(String signcpettime) {
        this.signcpettime = signcpettime == null ? null : signcpettime.trim();
    }

    public String getCommitcpettime() {
        return commitcpettime;
    }

    public void setCommitcpettime(String commitcpettime) {
        this.commitcpettime = commitcpettime == null ? null : commitcpettime.trim();
    }

    public String getSixpaceisdo() {
        return sixpaceisdo;
    }

    public void setSixpaceisdo(String sixpaceisdo) {
        this.sixpaceisdo = sixpaceisdo == null ? null : sixpaceisdo.trim();
    }

    public String getBrogpfisdo() {
        return brogpfisdo;
    }

    public void setBrogpfisdo(String brogpfisdo) {
        this.brogpfisdo = brogpfisdo == null ? null : brogpfisdo.trim();
    }

    public String getHeartbloodisdo() {
        return heartbloodisdo;
    }

    public void setHeartbloodisdo(String heartbloodisdo) {
        this.heartbloodisdo = heartbloodisdo == null ? null : heartbloodisdo.trim();
    }

    public String getSigncpetisdo() {
        return signcpetisdo;
    }

    public void setSigncpetisdo(String signcpetisdo) {
        this.signcpetisdo = signcpetisdo == null ? null : signcpetisdo.trim();
    }

    public String getCommitcpetisdo() {
        return commitcpetisdo;
    }

    public void setCommitcpetisdo(String commitcpetisdo) {
        this.commitcpetisdo = commitcpetisdo == null ? null : commitcpetisdo.trim();
    }
}