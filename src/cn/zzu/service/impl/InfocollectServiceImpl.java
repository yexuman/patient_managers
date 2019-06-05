package cn.zzu.service.impl;

import org.springframework.stereotype.Service;

import cn.zzu.dao.InfocollectDao;
import cn.zzu.domain.Infocollect;
import cn.zzu.service.InfocollectService;

@Service
public  class InfocollectServiceImpl implements InfocollectService {
   
	private InfocollectDao infocollectDao;
	
	public void setInfocollectDao(InfocollectDao infocollectDao) {
		this.infocollectDao = infocollectDao;
	}

	@Override
	public void saveInfo(Infocollect infocollect) {
		infocollectDao.saveInfo(infocollect);
	}

	@Override
	public Infocollect getInfo(int userID) {
		
		return infocollectDao.getInfo(userID);
	}

	

	

}

