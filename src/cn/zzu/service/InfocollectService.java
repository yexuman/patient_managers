package cn.zzu.service;

import cn.zzu.domain.Infocollect;

public interface InfocollectService {

   public void saveInfo(Infocollect infocollect);

   public Infocollect getInfo(int userID);

}
