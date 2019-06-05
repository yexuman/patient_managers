//package cn.zzu.service;
//
//import java.util.List;
//
//import org.springframework.transaction.annotation.Transactional;
//
//import cn.zzu.dao.UserDao;
//import cn.zzu.domain.User;
//
//
///**
// * 用户名模块业务层代码
// * 
// *
// */
//@Transactional
//public class UserService {
//	// 注入UserDao
//	private UserDao userDao;
//
//	public void setUserDao(UserDao userDao) {
//		this.userDao = userDao;
//	}
//	
//	
//	// 按用户名查询用户的方法:
//	public boolean findByUsername(String username){
//		return userDao.findByUsername(username);
//	}
//
//	// 业务层完成用户注册代码:
//	public void save(User user) {
//		 //将数据存入到数据库
//	     user.setAge(null);
//	     user.setLev1(0);
//	     user.setMachine_id(null);
//		 String sex="user.getSex()".equals("1")?"男":"女";
//	     user.setSex(sex);
//		userDao.save(user);
//		
//	}
////
////	// 业务层根据激活码查询用户
////	public User findByCode(String code) {
////		return userDao.findByCode(code);
////	}
////
////	// 修改用户的状态的方法
////	public void update(User existUser) {
////		userDao.update(existUser);
////	}
//
//	// 用户登录的方法
//	public User login(User user) {
//		return userDao.login(user);
//	}
//
//	public User select(int id) {
//		return userDao.select(id);
//	}
//
//	public void update(User user) {
//		 userDao.update(user);
//	}
//
//	public void modi_password(User user) {
//		
//		 userDao.modi_password(user);
//	}
//
//	public void bind(String nid, User user) {
//		userDao.bind(nid,user);
//		
//	}
//
//	public void nobind(String mid, User user) {
//		userDao.nobind(mid,user);
//	}
//
//	public void fankui(User user) {
//		userDao.fankui(user);
//	}
//
//	public Integer macIdToUid(String macId) {
//		return userDao.macIdToUid(macId);
//	
//	}
//
//	public String getWear(Integer lev) {
//		// TODO 自动生成的方法存根
//		return userDao.getWear(lev);
//	}
//
//	
//
////	public PageBean<User> findByPage(Integer page) {
////	  PageBean<User> pageBean = new PageBean<User>();	
////	
////	  // 设置当前页数:
////	  pageBean.setPage(page);
////	  
////	  // 设置每页显示记录数: 5个
////	  int limit = 5;
////	  pageBean.setLimit(limit);
////	  
////	  // 设置总记录数:
////      int totalCount = 0;
////	  totalCount = userDao.findCount();
////	  pageBean.setTotalCount(totalCount);
////	  
////	  //设置总页数
////	  int totalPage = 0;
////	  if(totalCount % limit==0){
////		  totalPage = totalCount / limit;	  
////	  }else{
////		  totalPage = totalCount / limit + 1;	  
////	  }
////	  pageBean.setTotalPage(totalPage);
////	  // 设置每页显示数据集合:
////	  int begin = (page - 1)*limit;
////	  List<User> list = userDao.findByPage(begin,limit);
////	  pageBean.setList(list); 
////	  return pageBean;
////
////	}
//
//
////	public User findByUid(Integer uid) {
////		return userDao.findByUid(uid);
////	}
//
//
////	public void delete(User existUser) {
////		userDao.delete(existUser);
////		
////	}
//
//
//	
//
//
//
//}
