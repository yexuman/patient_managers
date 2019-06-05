package cn.zzu.service;

import java.util.List;


import cn.zzu.domain.BasicData;
import cn.zzu.domain.CardiopulmonaryExperimentData;
import cn.zzu.domain.MultiparametersData;
import cn.zzu.domain.Realdata;
import cn.zzu.domain.StandupCalibrationData;
import cn.zzu.domain.StandupExperimentData;
import cn.zzu.domain.StandupResultData;
import cn.zzu.utils.PageBean;

/**
 * service层实历史记录的curd
 * @author ye xuman
 *
 */
public interface BasicDataService {
	/**
	 * 增删改查  分页查
	 * 
	 * @throws Exception
	 */
	public void saveBasicData(BasicData basicData) throws Exception;

	public void updateBasicData(BasicData basicData);

	public void deleteBasicData(Integer historyId);

	public List<Realdata> queryBasicDataById(Integer id);

	public PageBean<BasicData> getBasicDataList(Integer page);

	public BasicData getBasicDataById(int userID);

	public PageBean<StandupExperimentData> getStandupExperimentDataList(int page, int userID);

	public PageBean<MultiparametersData> getMultiparametersDataList(int page, int userID);

	public PageBean<StandupResultData> getStandupResultDataList(int page, int userID);

	public StandupExperimentData getStandupExperimentData(int recordID);

	public MultiparametersData getMultiparametersData(int recordID);

	public StandupResultData getStandupResultData(int recordID);

	public PageBean<StandupCalibrationData> getStandupCalibrationDataList(int page, int userID);   //实验5

	public PageBean<CardiopulmonaryExperimentData> getCardiopulmonaryExperimentDataList(int page, int userID);

	

	public void updateStCaDataBy(int recordID, String dbpCuff, String sbpCuff);

	public StandupCalibrationData getStCaData(int recordID);

	public CardiopulmonaryExperimentData getCardiopulmonaryExperimentData(int recordID);

	public MultiparametersData MultiparametersData(int recordID);



}
