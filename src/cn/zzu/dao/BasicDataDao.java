package cn.zzu.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.zzu.domain.BasicData;
import cn.zzu.domain.CardiopulmonaryExperimentData;
import cn.zzu.domain.MultiparametersData;
import cn.zzu.domain.Realdata;
import cn.zzu.domain.StandupCalibrationData;
import cn.zzu.domain.StandupExperimentData;
import cn.zzu.domain.StandupResultData;
import cn.zzu.utils.PageHibernateCallback;

public class BasicDataDao extends HibernateDaoSupport {

	public void save(BasicData history) {
		this.getHibernateTemplate().saveOrUpdate(history);

	}

	public void update(BasicData basicData) {
		this.getHibernateTemplate().saveOrUpdate(basicData);
	}

	public void delete(Integer userID) {
		BasicData basicData = this.getHibernateTemplate().get(BasicData.class, userID);
		
		this.getHibernateTemplate().delete(basicData);
	}

	public List<Realdata> getOne(Integer userID) {
		return null;
	}

	public int findCount() {
		//不是你的数据库对应的表名，也不是你的映射文件的表名，而是实体对象的名称
		String hql = "select count(*) from BasicData";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<BasicData> findByPage(int begin, int limit) {
		String hql = "from BasicData order by userID asc";
		List<BasicData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<BasicData>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public BasicData findByDetail(int hsize) {
		String hql = " from BasicData where detail = ?";
		List<BasicData> list = this.getHibernateTemplate().find(hql, hsize);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public BasicData getBasicDataById(int userID) {
		BasicData basicData = this.getHibernateTemplate().get(BasicData.class, userID);
		return basicData;
	}

	public int findCountByID(int userID) {
		//不是你的数据库对应的表名，也不是你的映射文件的表名，而是实体对象的名称
				String hql = "select count(*) from StandupExperimentData where userID = ?";
				List<Long> list = this.getHibernateTemplate().find(hql,userID);
				if (list != null && list.size() > 0) {
					return list.get(0).intValue();
				}
				return 0;

	}

	public int findCountByID2(int userID) {
		//不是你的数据库对应的表名，也不是你的映射文件的表名，而是实体对象的名称
		String hql = "select count(*) from MultiparametersData where userID = ?";
		List<Long> list = this.getHibernateTemplate().find(hql,userID);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	
	public int findCountByID3(int userID) {
		String hql = "select count(*) from StandupResultData where userID = ?";
		List<Long> list = this.getHibernateTemplate().find(hql,userID);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	
	public int findCountByID4(int userID) {
		String hql = "select count(*) from CardiopulmonaryExperimentData where userID = ?";
		List<Long> list = this.getHibernateTemplate().find(hql,userID);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	
	public int findCountByID5(int userID) {
		String hql = "select count(*) from StandupCalibrationData where userID = ?";
		List<Long> list = this.getHibernateTemplate().find(hql,userID);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	

	public List<StandupExperimentData> findByPageAndID(int userID, int begin, int limit) {
		String hql = "from StandupExperimentData where userID = ? order by recordID asc";
		Object[] arr=new Object[]{userID};
		List<StandupExperimentData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<StandupExperimentData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		
		return null;
	}
	
	public List<MultiparametersData> findByPageAndID2(int userID, int begin, int limit) {
		String hql = "from MultiparametersData where userID = ? order by recordID asc";
		Object[] arr=new Object[]{userID};
		List<MultiparametersData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<MultiparametersData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		
		return null;
	}

	public List<StandupResultData> findByPageAndID3(int userID, int begin, int limit) {
		String hql = "from StandupResultData where userID = ? order by recordID asc";
		Object[] arr=new Object[]{userID};
		List<StandupResultData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<StandupResultData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		
		return null;
	}
	
	public List<CardiopulmonaryExperimentData> findByPageAndID4(int userID, int begin, int limit) {
		String hql = "from CardiopulmonaryExperimentData where userID = ? order by recordID asc";
		Object[] arr=new Object[]{userID};
		List<CardiopulmonaryExperimentData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<CardiopulmonaryExperimentData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		
		return null;
	}
	
	public List<StandupCalibrationData> findByPageAndID5(int userID, int begin, int limit) {
		String hql = "from StandupCalibrationData where userID = ? order by recordID asc";
		Object[] arr=new Object[]{userID};
		List<StandupCalibrationData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<StandupCalibrationData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		
		return null;
	}

	
	
	public StandupExperimentData getStandupExperimentById(int recordID) {
		return 	this.getHibernateTemplate().get(StandupExperimentData.class, recordID);
	}

	public MultiparametersData getMultiparametersById(int recordID) {		
		return this.getHibernateTemplate().get(MultiparametersData.class, recordID);
	}

	public StandupResultData getStandupResultById(int recordID) {		
		return this.getHibernateTemplate().get(StandupResultData.class, recordID);
	}
	
	public StandupCalibrationData getStandupCalibrationById(int recordID) {
		return 	this.getHibernateTemplate().get(StandupCalibrationData.class, recordID);
	}

	public CardiopulmonaryExperimentData getCardiopulmonaryExperimentById(int recordID) {
		 return 	this.getHibernateTemplate().get(CardiopulmonaryExperimentData.class, recordID);
	}
	public void updateStCaDataById(int recordID, String dbpCuff, String sbpCuff) {
		StandupCalibrationData standupCalibrationData=getStandupCalibrationById(recordID);
		standupCalibrationData.setDbpCuff(dbpCuff);
		standupCalibrationData.setSbpCuff(sbpCuff);
		getHibernateTemplate().saveOrUpdate(standupCalibrationData);
		
	}

	

	

}