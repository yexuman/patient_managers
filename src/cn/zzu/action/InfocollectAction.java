package cn.zzu.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.zzu.domain.Infocollect;
import cn.zzu.service.InfocollectService;
import cn.zzu.vo.Sys;

/**
 * 历史记录Action的类
 * 
 */
@SuppressWarnings("serial")
public class InfocollectAction extends ActionSupport implements ModelDriven<Infocollect> {
	// 模型驱动使用的对象
	private Infocollect infocollect = new Infocollect();

	@Override
	public Infocollect getModel() {
		// TODO 自动生成的方法存根
		return infocollect;
	}

	private InfocollectService infocollectService;

	public void setInfocollectService(InfocollectService InfocollectService) {
		this.infocollectService = InfocollectService;
	}

	
	//转去采集信息的页面  并把用户id记录 保存session 提交时候一起提交
	public String goCollectionPage() {
		int userID = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		ServletActionContext.getRequest().getSession().setAttribute("userID", userID);
		return "infoCollectionPage";
	}
	
	//采集完成  处理提交信息的方法
	public String commitInfo() {
		System.out.println(infocollect.getReducebloodmedi());
		infocollectService.saveInfo(infocollect);
		return "commitSuccess";	
	}

	//查看信息
	public String getInfo() {
		int userID = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
        Infocollect	info=	infocollectService.getInfo(userID);
    	ServletActionContext.getRequest().getSession().setAttribute("info", info);
    	
		return "infoPage";
		
	}

	
	

}
