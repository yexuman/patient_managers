package cn.zzu.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.zzu.domain.BasicData;
import cn.zzu.domain.Infocollect;
import cn.zzu.domain.Infocollect2;
import cn.zzu.domain.MultiparametersData;
import cn.zzu.domain.Realdata;
import cn.zzu.domain.StandupExperimentData;
import cn.zzu.domain.StandupResultData;
import cn.zzu.utils.PageHibernateCallback;

public class InfocollectDao extends HibernateDaoSupport {

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
		// 不是你的数据库对应的表名，也不是你的映射文件的表名，而是实体对象的名称
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
		// 不是你的数据库对应的表名，也不是你的映射文件的表名，而是实体对象的名称
		String hql = "select count(*) from StandupExperimentData where userID = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, userID);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;

	}

	public int findCountByID2(int userID) {
		// 不是你的数据库对应的表名，也不是你的映射文件的表名，而是实体对象的名称
		String hql = "select count(*) from MultiparametersData where userID = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, userID);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public int findCountByID3(int userID) {
		String hql = "select count(*) from StandupResultData where userID = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, userID);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<StandupExperimentData> findByPageAndID(int userID, int begin, int limit) {
		String hql = "from StandupExperimentData where userID = ? order by recordID asc";
		Object[] arr = new Object[] { userID };
		List<StandupExperimentData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<StandupExperimentData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}

		return null;
	}

	public List<MultiparametersData> findByPageAndID2(int userID, int begin, int limit) {
		String hql = "from MultiparametersData where userID = ? order by recordID asc";
		Object[] arr = new Object[] { userID };
		List<MultiparametersData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<MultiparametersData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}

		return null;
	}

	public List<StandupResultData> findByPageAndID3(int userID, int begin, int limit) {
		String hql = "from StandupResultData where userID = ? order by recordID asc";
		Object[] arr = new Object[] { userID };
		List<StandupResultData> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<StandupResultData>(hql, arr, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}

		return null;
	}

	public StandupExperimentData getStandupExperimentById(int recordID) {
		return this.getHibernateTemplate().get(StandupExperimentData.class, recordID);
	}

	public MultiparametersData getMultiparametersById(int recordID) {
		return this.getHibernateTemplate().get(MultiparametersData.class, recordID);
	}

	public StandupResultData getStandupResultById(int recordID) {
		return this.getHibernateTemplate().get(StandupResultData.class, recordID);
	}

	public void saveInfo(Infocollect infocollect) {
		this.getHibernateTemplate().saveOrUpdate(infocollect);

		String hql = "	UPDATE Infocollect SET pwvright = ? , pwvleft = ? , abiright = ? , abileft = ?, "
				+ "abpmstarttime= ? , abpmendtime= ? , jiuqintime= ? , getuptime= ? , "
				+ "dongtaix= ? , sixpacetime= ? , brogpftime= ? , heartbloodtime= ? , "
				+ "signcpettime= ? , commitcpettime= ? , sixpaceisdo= ? , brogpfisdo= ? ,"
				+ " heartbloodisdo= ? , signcpetisdo= ? , commitcpetisdo= ? where userID = ?";
		this.getHibernateTemplate().bulkUpdate(hql, infocollect.getPwvright(),infocollect.getPwvleft(), infocollect.getAbiright(),
				infocollect.getAbileft(), infocollect.getAbpmstarttime(), infocollect.getAbpmendtime(),
				infocollect.getJiuqintime(), infocollect.getGetuptime(), infocollect.getDongtaix(),
				infocollect.getSixpacetime(), infocollect.getBrogpftime(), infocollect.getHeartbloodtime(),
				infocollect.getSigncpettime(), infocollect.getCommitcpettime(), infocollect.getSixpaceisdo(),
				infocollect.getBrogpfisdo(), infocollect.getHeartbloodisdo(), infocollect.getSigncpetisdo(),
				infocollect.getCommitcpetisdo(), infocollect.getUserID());
		// 存到第二个库
		Infocollect2 info2 = new Infocollect2();
		info2.setUserID(infocollect.getUserID());

		info2.setPwvleft(infocollect.getPwvright());
		info2.setPwvleft(infocollect.getPwvleft());
		info2.setAbiright(infocollect.getAbiright());
		info2.setAbileft(infocollect.getAbileft());
		info2.setAbpmstarttime(infocollect.getAbpmstarttime());
		info2.setAbpmendtime(infocollect.getAbpmendtime());
		info2.setJiuqintime(infocollect.getJiuqintime());
		info2.setGetuptime(infocollect.getGetuptime());
		info2.setDongtaix(infocollect.getDongtaix());
		info2.setSixpacetime(infocollect.getSixpacetime());
		info2.setBrogpftime(infocollect.getBrogpftime());
		info2.setHeartbloodtime(infocollect.getHeartbloodtime());
		info2.setSigncpettime(infocollect.getSigncpettime());
		info2.setCommitcpettime(infocollect.getCommitcpettime());
		info2.setSixpaceisdo(infocollect.getSixpaceisdo());
		info2.setBrogpfisdo(infocollect.getBrogpfisdo());
		info2.setHeartbloodisdo(infocollect.getHeartbloodisdo());
		info2.setSigncpetisdo(infocollect.getSigncpetisdo());
		info2.setCommitcpetisdo(infocollect.getCommitcpetisdo());

		this.getHibernateTemplate().saveOrUpdate(info2);
	}

	public Infocollect getInfo(int userID) {
		Infocollect infomation = this.getHibernateTemplate().get(Infocollect.class, userID);
		Infocollect2 temp = this.getHibernateTemplate().get(Infocollect2.class, userID); // 第二部分数据

		infomation.setPwvleft(temp.getPwvleft());
		infomation.setAbiright(temp.getAbiright());
		infomation.setAbileft(temp.getAbileft());
		infomation.setAbpmstarttime(temp.getAbpmstarttime());
		infomation.setAbpmendtime(temp.getAbpmendtime());
		infomation.setJiuqintime(temp.getJiuqintime());
		infomation.setGetuptime(temp.getGetuptime());
		infomation.setDongtaix(temp.getDongtaix());
		infomation.setSixpacetime(temp.getSixpacetime());
		infomation.setBrogpftime(temp.getBrogpftime());
		infomation.setHeartbloodtime(temp.getHeartbloodtime());
		infomation.setSigncpettime(temp.getSigncpettime());
		infomation.setCommitcpettime(temp.getCommitcpettime());
		infomation.setSixpaceisdo(temp.getSixpaceisdo());
		infomation.setBrogpfisdo(temp.getBrogpfisdo());
		infomation.setHeartbloodisdo(temp.getHeartbloodisdo());
		infomation.setSigncpetisdo(temp.getSigncpetisdo());
		infomation.setCommitcpetisdo(temp.getCommitcpetisdo());

		System.out.println(infomation.getSixpacetime());
		return infomation;
	}

	

}