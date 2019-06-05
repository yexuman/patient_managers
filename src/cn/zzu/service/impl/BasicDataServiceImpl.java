package cn.zzu.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.zzu.dao.BasicDataDao;
import cn.zzu.domain.BasicData;
import cn.zzu.domain.CardiopulmonaryExperimentData;
import cn.zzu.domain.MultiparametersData;
import cn.zzu.domain.Realdata;
import cn.zzu.domain.StandupCalibrationData;
import cn.zzu.domain.StandupExperimentData;
import cn.zzu.domain.StandupResultData;
import cn.zzu.service.BasicDataService;
import cn.zzu.utils.PageBean;

/*
@author ye xuman
 *
 */
@Service
public class BasicDataServiceImpl implements BasicDataService {

	private BasicDataDao basicDataDao;
	public void setBasicDataDao(BasicDataDao basicDataDao) {
		this.basicDataDao = basicDataDao;
	}

	/**
	 * REQUIRED :没事物创建事物，有事物和并到那个事物 --》适合增删改 SUPPORTS ：没有事物就不用事物，有实物就合并事物 —》适合查
	 */

	// 插入保存
	@Override
	@Transactional(propagation = Propagation.REQUIRED) // spring事务
	public void saveBasicData(BasicData basicData) {
		if (basicDataDao == null)
			System.out.println("historyDao==null");
		basicDataDao.save(basicData);

	}

	// 更改之后的保存，Selective表示对未更改的部分不作操作
	@Override
	@Transactional(propagation = Propagation.REQUIRED) // spring事务
	public void updateBasicData(BasicData basicData) {

		basicDataDao.update(basicData);

	}

	// 通过HistoryId删除
	@Override
	@Transactional(propagation = Propagation.REQUIRED) // spring事务
	public void deleteBasicData(Integer userID) {

		
		basicDataDao.delete(userID);
	}

	// 通过HistoryId查询
	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Realdata> queryBasicDataById(Integer userID) {
		return basicDataDao.getOne(userID);
	}

	

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public PageBean<BasicData> getBasicDataList(Integer page) {
		PageBean<BasicData> pageBean = new PageBean<BasicData>();
		// 设置当前页数；
		pageBean.setPage(page);
		// 设置每页显示记录数
		int limit = 10;
		pageBean.setLimit(limit);
		// 设置总记录条数
		int totalCount = basicDataDao.findCount();

		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置显示到页面的数据的集合
		int begin = (page - 1) * limit;
		List<BasicData> list = basicDataDao.findByPage(begin, limit);
		if (list==null) {
			pageBean.setPage(0);
		}
		pageBean.setList(list);
		return pageBean;

	}

	@Override
	public BasicData getBasicDataById(int userID) {
		
		return basicDataDao.getBasicDataById(userID);
	}

	@Override
	public PageBean<StandupExperimentData> getStandupExperimentDataList(int page, int userID) {
		PageBean<StandupExperimentData> pageBean = new PageBean<StandupExperimentData>();
		// 设置当前页数；
		pageBean.setPage(page);
		// 设置每页显示记录数
		int limit = 10;
		pageBean.setLimit(limit);
		// 设置总记录条数
		int totalCount = basicDataDao.findCountByID(userID);

		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置显示到页面的数据的集合
		int begin = (page - 1) * limit;
		List<StandupExperimentData> list = basicDataDao.findByPageAndID(userID,begin, limit);
		if (list==null) {
			pageBean.setPage(0);
		}
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public PageBean<MultiparametersData> getMultiparametersDataList(int page, int userID) {
		PageBean<MultiparametersData> pageBean = new PageBean<MultiparametersData>();
		// 设置当前页数；
		pageBean.setPage(page);
		// 设置每页显示记录数
		int limit = 10;
		pageBean.setLimit(limit);
		// 设置总记录条数
		int totalCount = basicDataDao.findCountByID2(userID);

		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置显示到页面的数据的集合
		int begin = (page - 1) * limit;
		List<MultiparametersData> list = basicDataDao.findByPageAndID2(userID,begin, limit);
		if (list==null) {
			pageBean.setPage(0);
		}
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public PageBean<StandupResultData> getStandupResultDataList(int page, int userID) {
		PageBean<StandupResultData> pageBean = new PageBean<StandupResultData>();
		// 设置当前页数；
		pageBean.setPage(page);
		// 设置每页显示记录数
		int limit = 10;
		pageBean.setLimit(limit);
		// 设置总记录条数
		int totalCount = basicDataDao.findCountByID3(userID);

		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置显示到页面的数据的集合
		int begin = (page - 1) * limit;
		List<StandupResultData> list = basicDataDao.findByPageAndID3(userID,begin, limit);
		if (list==null) {
			pageBean.setPage(0);
		}
		pageBean.setList(list);
		return pageBean;
	}
	
	@Override
	public PageBean<CardiopulmonaryExperimentData> getCardiopulmonaryExperimentDataList(int page, int userID) {
		PageBean<CardiopulmonaryExperimentData> pageBean = new PageBean<CardiopulmonaryExperimentData>();
		// 设置当前页数；
		pageBean.setPage(page);
		// 设置每页显示记录数
		int limit = 10;
		pageBean.setLimit(limit);
		// 设置总记录条数
		int totalCount = basicDataDao.findCountByID4(userID);

		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置显示到页面的数据的集合 
		int begin = (page - 1) * limit;
		List<CardiopulmonaryExperimentData> list = basicDataDao.findByPageAndID4(userID,begin, limit);
		if (list==null) {
			pageBean.setPage(0);
		}
		pageBean.setList(list);
		return pageBean;
	}


	@Override
	public PageBean<StandupCalibrationData> getStandupCalibrationDataList(int page, int userID) {
		PageBean<StandupCalibrationData> pageBean = new PageBean<StandupCalibrationData>();
		// 设置当前页数；
		pageBean.setPage(page);
		// 设置每页显示记录数
		int limit = 10;
		pageBean.setLimit(limit);
		// 设置总记录条数
		int totalCount = basicDataDao.findCountByID5(userID);

		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置显示到页面的数据的集合
		int begin = (page - 1) * limit;
		List<StandupCalibrationData> list = basicDataDao.findByPageAndID5(userID,begin, limit);
		if (list==null) {
			pageBean.setPage(0);
		}
		pageBean.setList(list);
		return pageBean;
	}

	
	/**
	 * 获得实验一的数据
	 */
	@Override
	public StandupExperimentData getStandupExperimentData(int recordID) {	
		return basicDataDao.getStandupExperimentById(recordID);
	}

	/**
	 * 获得实验二的数据
	 */
	@Override
	public MultiparametersData getMultiparametersData(int recordID) {	
		return basicDataDao.getMultiparametersById(recordID);
	}

	/**
	 * 获得实验三的数据
	 */
	@Override
	public StandupResultData getStandupResultData(int recordID) {	
		return basicDataDao.getStandupResultById(recordID);
	}

	@Override
	public void updateStCaDataBy(int recordID, String dbpCuff, String sbpCuff) {
		basicDataDao.updateStCaDataById(recordID,dbpCuff,sbpCuff);
	}

	@Override
	public StandupCalibrationData getStCaData(int recordID) {
		return basicDataDao.getStandupCalibrationById(recordID);		
	}

	@Override
	public CardiopulmonaryExperimentData getCardiopulmonaryExperimentData(int recordID) {	
		return basicDataDao.getCardiopulmonaryExperimentById(recordID);
	}

	@Override
	public MultiparametersData MultiparametersData(int recordID) {
		return basicDataDao.getMultiparametersById(recordID);
	}

}
