package cn.zzu.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.zzu.domain.BasicData;
import cn.zzu.domain.CardiopulmonaryExperimentData;
import cn.zzu.domain.MultiparametersData;
import cn.zzu.domain.StandupCalibrationData;
import cn.zzu.domain.StandupExperimentData;
import cn.zzu.domain.StandupResultData;
import cn.zzu.service.BasicDataService;
import cn.zzu.utils.PageBean;
import cn.zzu.vo.Data1Bean;
import cn.zzu.vo.Data2Bean;
import cn.zzu.vo.Data3Bean;
import cn.zzu.vo.Data3Ext;
import cn.zzu.vo.Data4Bean;

/**
 * 历史记录Action的类
 * 
 */
@SuppressWarnings("serial")
public class BasicDataAction extends ActionSupport implements ModelDriven<BasicData> {

	// 模型驱动使用的对象
	private BasicData basicData = new BasicData();

	@Override
	public BasicData getModel() {

		return basicData;
	}

	private BasicDataService basicDataService;

	public void setBasicDataService(BasicDataService basicDataService) {
		this.basicDataService = basicDataService;
	}

	// 根据id查询历史记录详情
	public BasicData getBasicData(String id) {
		return basicData;
	}

	// 添加病人 由于模型驱动 所以添加的病人从form表单传递过来 只要保证name属性和实体对象一致 则实体接收了全部信息
	public String addBasicData() throws Exception {
		basicDataService.saveBasicData(basicData);
		return "addSuccess";
	}

	// 根据id删除记录
	// 级联删除该条历史记录下的所有数据
	public String delPatient() {
		int userID = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		basicDataService.deleteBasicData(userID);
		return "delSuccess";
	}

	public String goExpPage() {
		int userID = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		BasicData patient = basicDataService.getBasicDataById(userID);
		ServletActionContext.getRequest().getSession().setAttribute("patient", patient);
		return "experimentPage";
	}

	// 获得的实验数据
	public String getExperimentData() {
		int userID = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		int page = Integer.parseInt(ServletActionContext.getRequest().getParameter("page"));
		int type = Integer.parseInt(ServletActionContext.getRequest().getParameter("type"));
		if (type == 1) {
			PageBean<StandupExperimentData> pageBean = basicDataService.getStandupExperimentDataList(page, userID);
			ServletActionContext.getRequest().getSession().setAttribute("experimentBean", pageBean);
			ServletActionContext.getRequest().getSession().setAttribute("type", 1);
		} else if (type == 2) {
			PageBean<MultiparametersData> pageBean = basicDataService.getMultiparametersDataList(page, userID);
			ServletActionContext.getRequest().getSession().setAttribute("experimentBean", pageBean);
			ServletActionContext.getRequest().getSession().setAttribute("type", 2);
		} else if (type == 3) { // type==3
			PageBean<StandupResultData> pageBean = basicDataService.getStandupResultDataList(page, userID);
			ServletActionContext.getRequest().getSession().setAttribute("experimentBean", pageBean);
			ServletActionContext.getRequest().getSession().setAttribute("type", 3);
		} else if (type == 4) { // type==4
			PageBean<CardiopulmonaryExperimentData> pageBean = basicDataService
					.getCardiopulmonaryExperimentDataList(page, userID);
			ServletActionContext.getRequest().getSession().setAttribute("experimentBean", pageBean);
			ServletActionContext.getRequest().getSession().setAttribute("type", 4);
		} else {// type==5 StandupCalibrationData 跳到另外的页面
			PageBean<StandupCalibrationData> pageBean = basicDataService.getStandupCalibrationDataList(page, userID);
			ServletActionContext.getRequest().getSession().setAttribute("experimentBean", pageBean);
			ServletActionContext.getRequest().getSession().setAttribute("type", 5);

		}
		return "experimentDetailData";
	}

	/*
	 * 接受4个表格页面的ajax请求  获得回传数据
	 */
	public void getData() throws Exception {
		int type = Integer.parseInt(ServletActionContext.getRequest().getParameter("type"));
		if (type == 1) {
			String result = (String) ServletActionContext.getRequest().getSession().getAttribute("data1");
			ServletActionContext.getResponse().getWriter().print(result);
		} else if (type == 2) {
			String result = (String)ServletActionContext.getRequest().getSession().getAttribute("data2");
			ServletActionContext.getResponse().getWriter().print(result);		
		} else if (type == 3) {// type==3
			String result = (String) ServletActionContext.getRequest().getSession().getAttribute("data3");
			ServletActionContext.getResponse().getWriter().print(result);
		} else if (type == 4) {// type==4
			String result = (String) ServletActionContext.getRequest().getSession().getAttribute("data4");
			ServletActionContext.getResponse().getWriter().print(result);
			
		}

	}

	/**
	 * 对应四个实验的不同图表
	 * @return
	 * @throws Exception
	 */
	public String getExpChart() throws Exception {
		int recordID = Integer.parseInt(ServletActionContext.getRequest().getParameter("recordID"));
		int type = Integer.parseInt(ServletActionContext.getRequest().getParameter("type"));
		if (type == 1) { // 实验一
			precess1(recordID);
			return "expChartPage";
		} else if (type == 2) {
			precess2(recordID);
			return "expChartPage2";
		} else if (type == 3) { // type==3
			precess3(recordID);
			return "expChartPage3";
		} else if (type == 4) {
			// 执行到这里
			precess4(recordID);
			return "expChartPage4";
		}
		return null;

	}

	// 分页获得记录
	public String getPatientList() {
		String page = ServletActionContext.getRequest().getParameter("page");
		PageBean<BasicData> pageBean = basicDataService.getBasicDataList(Integer.valueOf(page));
		// session为空时候放进去
		ServletActionContext.getRequest().getSession().setAttribute("basicDataBean", pageBean);
		// ServletActionContext.getResponse().getWriter().write("success");
		return "patient";
	}

	/**
	 * 获得生成实验1图所需要的数据
	 * 
	 * @param recordID
	 */
	private void precess1(int recordID) {
		StandupExperimentData data = basicDataService.getStandupExperimentData(recordID);
		Data1Bean data1Bean = new Data1Bean();

		String hr = data.getHr();
		String[] h = hr.split(",");
		List<Double> hrList = new ArrayList<>();
		for (String hrString : h) {
			hrList.add(Double.valueOf(hrString));
		}

		String pat = data.getPat();
		String[] p = pat.split(",");
		List<Double> patList = new ArrayList<>();
		for (String patString : p) {
			patList.add(Double.valueOf(patString));
		}

		data1Bean.setHr(hrList);
		data1Bean.setPat(patList);

		String data1 = JSON.toJSONString(data1Bean);
		ServletActionContext.getRequest().getSession().setAttribute("data1", data1);
	}

	private void precess2(int recordID) {
		MultiparametersData data = basicDataService.MultiparametersData(recordID);
		Data2Bean data2Bean = new Data2Bean();

		String[] sbpArr = data.getSbp().split(",");
		List<Double> sbpList = new ArrayList<>();
		for (String sbpString : sbpArr) {
			sbpList.add(Double.valueOf(sbpString.trim()));
		}
		
		String[] dbpArr = data.getDbp().split(",");
		List<Double> dbpList = new ArrayList<>();
		for (String dbpString : dbpArr) {
			dbpList.add(Double.valueOf(dbpString.trim()));
		}
		
		String[] cri1Arr = data.getCri1().split(",");
		List<Double> cri1List = new ArrayList<>();
		for (String cri1String : cri1Arr) {
			cri1List.add(Double.valueOf(cri1String.trim()));
		}
		String[] cri2Arr = data.getCri2().split(",");
		List<Double> cri2List = new ArrayList<>();
		for (String cri2String : cri2Arr) {
			cri2List.add(Double.valueOf(cri2String.trim()));
		}
		String[] cri3Arr = data.getCri3().split(",");
		List<Double> cri3List = new ArrayList<>();
		for (String cri3String : cri3Arr) {
			cri3List.add(Double.valueOf(cri3String.trim()));
		}

		String[] rrv1Arr = data.getRrv1().split(",");
		List<Double> rrv1List = new ArrayList<>();
		for (String rrv1String : rrv1Arr) {
			rrv1List.add(Double.valueOf(rrv1String.trim()));
		}
		String[] rrv2Arr = data.getRrv2().split(",");
		List<Double> rrv2List = new ArrayList<>();
		for (String rrv2String : rrv2Arr) {
			rrv2List.add(Double.valueOf(rrv2String.trim()));
		}
		String[] rrv3Arr = data.getRrv3().split(",");
		List<Double> rrv3List = new ArrayList<>();
		for (String rrv3String : rrv3Arr) {
			rrv3List.add(Double.valueOf(rrv3String.trim()));
		}

		String[] hrv1Arr = data.getHrv1().split(",");
		List<Double> hrv1List = new ArrayList<>();
		for (String hrv1String : hrv1Arr) {
			hrv1List.add(Double.valueOf(hrv1String.trim()));
		}
		String[] hrv2Arr = data.getHrv2().split(",");
		List<Double> hrv2List = new ArrayList<>();
		for (String hrv2String : hrv2Arr) {
			hrv2List.add(Double.valueOf(hrv2String.trim()));
		}
		String[] hrv3Arr = data.getHrv3().split(",");
		List<Double> hrv3List = new ArrayList<>();
		for (String hrv3String : hrv3Arr) {
			hrv3List.add(Double.valueOf(hrv3String.trim()));
		}
		
		String[] afArr = data.getAf().split(",");
		List<Double> afList = new ArrayList<>();
		for (String afString : afArr) {
			afList.add(Double.valueOf(afString.trim()));
		}
		
		String[] afecg1Arr = data.getAfecg1().split(",");
		List<Double> afecg1List = new ArrayList<>();
		for (String afecg1String : afecg1Arr) {
			afecg1List.add(Double.valueOf(afecg1String.trim()));
		}
		
		String[] afecg2Arr = data.getAfecg2().split(",");
		List<Double> afecg2List = new ArrayList<>();
		for (String afecg2String : afecg2Arr) {
			afecg2List.add(Double.valueOf(afecg2String.trim()));
		}
		
		String[] ssArr = data.getSs().split(",");
		List<Double> ssList = new ArrayList<>();
		for (String ssString : ssArr) {
			ssList.add(Double.valueOf(ssString.trim()));
		}
		
		String[] nnmeanArr = data.getNnmean().split(",");
		List<Double> nnmeanList = new ArrayList<>();
		for (String nnmeanString : nnmeanArr) {
			nnmeanList.add(Double.valueOf(nnmeanString.trim()));
		}
		
		String[] rmssdArr = data.getRmssd().split(",");
		List<Double> rmssdList = new ArrayList<>();
		for (String rmssdString : rmssdArr) {
			rmssdList.add(Double.valueOf(rmssdString.trim()));
		}
		String[] lfhfArr = data.getLfhf().split(",");
		List<Double> lfhfList = new ArrayList<>();
		for (String lfhfString : lfhfArr) {
			lfhfList.add(Double.valueOf(lfhfString.trim()));
		}
		
		String[] sd1sd2Arr = data.getSdlsd2().split(",");
		List<Double> sd1sd2List = new ArrayList<>();
		for (String sd1sd2String : sd1sd2Arr) {
			sd1sd2List.add(Double.valueOf(sd1sd2String.trim()));
		}
		String[] apenArr = data.getApen().split(",");
		List<Double> apenList = new ArrayList<>();
		for (String apenString : apenArr) {
			apenList.add(Double.valueOf(apenString.trim()));
		}
		
		data2Bean.setSbp(sbpList);  data2Bean.setDbp(dbpList);  data2Bean.setCri1(cri1List);
		data2Bean.setCri2(cri2List);data2Bean.setCri3(cri3List);data2Bean.setHrv1(hrv1List);
		data2Bean.setHrv2(hrv2List);data2Bean.setHrv3(hrv3List);data2Bean.setRrv1(rrv1List);
		data2Bean.setRrv2(rrv2List);data2Bean.setRrv3(rrv3List);data2Bean.setAf(afList);
		data2Bean.setAfecg1(afecg1List);data2Bean.setAfecg2(afecg2List);data2Bean.setSs(ssList);
		data2Bean.setNnmean(nnmeanList);data2Bean.setRmssd(rmssdList);data2Bean.setLfhf(lfhfList);
		data2Bean.setSd1sd2(sd1sd2List);data2Bean.setApen(apenList);
		
		
		String data2 = JSON.toJSONString(data2Bean);
		ServletActionContext.getRequest().getSession().setAttribute("data2", data2);
	}

	/**
	 * 获得生成实验3图所需要的数据
	 * 
	 * @param recordID
	 */
	private void precess3(int recordID) {
		StandupResultData data = basicDataService.getStandupResultData(recordID);
		Data3Bean data3Bean = new Data3Bean();

		String fsc = data.getFsc();
		String[] fscArr = fsc.split(",");
		List<Double> fscList = new ArrayList<>();
		for (String fscString : fscArr) {
			fscList.add(Double.valueOf(fscString.trim()));
		}

		String fpc = data.getFpc();
		String[] fpcArr = fpc.split(",");
		List<Double> fpcList = new ArrayList<>();
		for (String fpcString : fpcArr) {
			fpcList.add(Double.valueOf(fpcString.trim()));
		}

		String fbc1 = data.getFpc();
		String[] fbc1Arr = fbc1.split(",");
		List<Double> fbc1List = new ArrayList<>();
		for (String fbc1String : fbc1Arr) {
			fbc1List.add(Double.valueOf(fbc1String.trim()));
		}

		String fbc2 = data.getFpc();
		String[] fbc2Arr = fbc2.split(",");
		List<Double> fbc2List = new ArrayList<>();
		for (String fbc2String : fbc2Arr) {
			fbc2List.add(Double.valueOf(fbc2String.trim()));
		}

		data3Bean.setFsc(fscList);
		data3Bean.setFpc(fpcList);
		data3Bean.setFbc1(fbc1List);
		data3Bean.setFbc2(fbc2List);
		
		Data3Ext data3Ext=new Data3Ext();
		data3Ext.setFs(data.getFs());
		data3Ext.setFp(data.getFp());
		data3Ext.setFb(data.getFb());
		ServletActionContext.getRequest().getSession().setAttribute("data3Ext", data3Ext);
		String data3 = JSON.toJSONString(data3Bean);
		ServletActionContext.getRequest().getSession().setAttribute("data3", data3);
	}

	/**
	 * 获得生成实验4图所需要的数据
	 * 
	 * @param recordID
	 */
	private void precess4(int recordID) {
		CardiopulmonaryExperimentData data = basicDataService.getCardiopulmonaryExperimentData(recordID);
		Data4Bean data4Bean = new Data4Bean();

		String[] cri1Arr = data.getCri1().split(",");
		List<Double> cri1List = new ArrayList<>();
		for (String cri1String : cri1Arr) {
			cri1List.add(Double.valueOf(cri1String.trim()));
		}
		String[] cri2Arr = data.getCri2().split(",");
		List<Double> cri2List = new ArrayList<>();
		for (String cri2String : cri2Arr) {
			cri2List.add(Double.valueOf(cri2String.trim()));
		}
		String[] cri3Arr = data.getCri3().split(",");
		List<Double> cri3List = new ArrayList<>();
		for (String cri3String : cri3Arr) {
			cri3List.add(Double.valueOf(cri3String.trim()));
		}

		String[] rrv1Arr = data.getRrv1().split(",");
		List<Double> rrv1List = new ArrayList<>();
		for (String rrv1String : rrv1Arr) {
			rrv1List.add(Double.valueOf(rrv1String.trim()));
		}
		String[] rrv2Arr = data.getRrv2().split(",");
		List<Double> rrv2List = new ArrayList<>();
		for (String rrv2String : rrv2Arr) {
			rrv2List.add(Double.valueOf(rrv2String.trim()));
		}
		String[] rrv3Arr = data.getRrv3().split(",");
		List<Double> rrv3List = new ArrayList<>();
		for (String rrv3String : rrv3Arr) {
			rrv3List.add(Double.valueOf(rrv3String.trim()));
		}

		String[] hrv1Arr = data.getHrv1().split(",");
		List<Double> hrv1List = new ArrayList<>();
		for (String hrv1String : hrv1Arr) {
			hrv1List.add(Double.valueOf(hrv1String.trim()));
		}
		String[] hrv2Arr = data.getHrv2().split(",");
		List<Double> hrv2List = new ArrayList<>();
		for (String hrv2String : hrv2Arr) {
			hrv2List.add(Double.valueOf(hrv2String.trim()));
		}
		String[] hrv3Arr = data.getHrv3().split(",");
		List<Double> hrv3List = new ArrayList<>();
		for (String hrv3String : hrv3Arr) {
			hrv3List.add(Double.valueOf(hrv3String.trim()));
		}
		data4Bean.setCri1(cri1List);
		data4Bean.setCri2(cri2List);
		data4Bean.setCri3(cri3List);
		data4Bean.setHrv1(hrv1List);
		data4Bean.setHrv2(hrv2List);
		data4Bean.setHrv3(hrv3List);
		data4Bean.setRrv1(rrv1List);
		data4Bean.setRrv2(rrv2List);
		data4Bean.setRrv3(rrv3List);
		String data4 = JSON.toJSONString(data4Bean);

		ServletActionContext.getRequest().getSession().setAttribute("data4", data4);
	}

	public String updateStCaData() {
		int recordID = Integer.parseInt(ServletActionContext.getRequest().getParameter("recordID"));
		String dbpCuff = ServletActionContext.getRequest().getParameter("dbpCuff");
		String sbpCuff = ServletActionContext.getRequest().getParameter("sbpCuff");
		basicDataService.updateStCaDataBy(recordID, dbpCuff, sbpCuff);
		return "updateSucceed";
	}

	public String showStCaData() {
		int recordID = Integer.parseInt(ServletActionContext.getRequest().getParameter("recordID"));
		StandupCalibrationData standupCalibrationData = basicDataService.getStCaData(recordID);
		ServletActionContext.getRequest().getSession().setAttribute("standupCaData", standupCalibrationData);
		return "showStCaData";
	}
}
