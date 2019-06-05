//package cn.zzu.utils;
//
//import java.io.BufferedReader;
//import java.io.File;
//import java.io.FileReader;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//
//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;
//
//import cn.zzu.vo.JsonBean;
//import cn.zzu.vo.Process;
//import cn.zzu.vo.Sys;
//
//public class dealJson {
//	// 读文件的静态方法
//	public static String ReadFile(String path) {
//		String laststr = "";
//		File file = new File(path);
//		BufferedReader reader = null;
//		try {
//			reader = new BufferedReader(new FileReader(file));
//			String tempString = null;
//			// int line=1;
//			while ((tempString = reader.readLine()) != null) {
//				// sys.out.println("line"+line+":"+tempString);
//				laststr = laststr + tempString;
//				// line++;
//			}
//			reader.close();
//		} catch (IOException e) {
//			e.printStackTrace();
//		} finally {
//			if (reader != null) {
//				try {
//					reader.close();
//				} catch (IOException el) {
//				}
//			}
//		}
//		return laststr;
//	}
//
//	// 处理json的静态方法
//	public static JsonBean deal(String jsonStr) {
//		// jsonStr = dealJson.ReadFile("./WebContent/assets/data2.json");
//		JsonBean dataBean = new JsonBean();
//		Sys sys = new Sys();
//
//		JSONObject jsonObject = JSONObject.parseObject(jsonStr);
//		// 系统指标的json对象
//		JSONObject sysObj = (JSONObject) jsonObject.get("sys");
//		// 进程指标的json数组
//		JSONArray proArr = jsonObject.getJSONArray("process");
//
//		// Float freeCPU= Float.valueOf((String)sysObj.get("cpuidle"));//空闲cpu
//		Float freeCPU = Float.valueOf((String) sysObj.get("cpuidle"));// 空闲cpu
//		Float usedCPU = 100 - freeCPU; // 使用的cpu
//
//		Float totalMEM = Float.valueOf((String) sysObj.get("memtotal")); // 内存总量
//		Float freeMEM = Float.valueOf((String) sysObj.get("memfree")); // 空闲内存
//		Float usedMEM = totalMEM - freeMEM; // 已使用的内存
//		Float virtualMEM = Float.valueOf((String) sysObj.get("memswpd")); // 虚拟内存
//
//		Float writeDISK = Float.valueOf((Integer) sysObj.get("diskbo")) / 1024; // 写磁盘块
//		Float readDISK = Float.valueOf((Integer) sysObj.get("diskbi")) / 1024; // 读磁盘块
//
//		String ip = (String) sysObj.get("ip"); //     客户机ip
//		String time = (String) sysObj.get("time"); // 客户机时间
//		Float firstRecieveNET = Float.valueOf((String) sysObj.get("firstnetre")); // 第一次接收网络
//		Float firstSendNET = Float.valueOf((String) sysObj.get("firstnetse")); // 第一次发送网络
//
//		Float secondRecieveNET = Float.valueOf((String) sysObj.get("secondnetre")); // 第二次接收网络
//		Float secondSendNET = Float.valueOf((String) sysObj.get("secondnetse")); // 第二次发送网络
//
//		// 实时网络接收
//		Float currRecieveNET = (secondRecieveNET - firstRecieveNET) / 1024;
//		// 实时网络发送
//		Float currSendNET = (secondSendNET - firstSendNET) / 1024;
//
//		Float total = Float.valueOf((Integer) sysObj.get("totaltime"));
//       
//		if (ip.contains("addr:")) {
//			dataBean.setIP(ip.split(":")[1]);
//		}else {
//			dataBean.setIP(ip);
//		}		
//		dataBean.setTime(time);
//		sys.setUsedCPU(usedCPU);
//		sys.setUsedMEM(usedMEM);
//		sys.setVirtualMEM(virtualMEM);
//		sys.setWriteDISK(writeDISK);
//		sys.setReadDISK(readDISK);
//		sys.setCurrRecieveNET(currRecieveNET);
//		sys.setCurrSendNET(currSendNET);
//
//		dataBean.setSys(sys);
//		if (proArr != null) {
//
//			List<Process> list = new ArrayList<Process>();
//			for (Object obj : proArr) {
//				Process process = new Process();
//				JSONObject proObj = (JSONObject) obj;
//				Float proId = Float.valueOf((String) proObj.get("pid")); // 进程id
//				// System.out.println(proId);
//				String proName = (String) proObj.get("pname"); // 进程名
//				Float proPhysicalMEM = Float.valueOf((String) proObj.get("memrss")); // 进程使用的物理内存
//				Float proVirtualMEM = Float.valueOf((String) proObj.get("memvm")); // 进程使用的虚拟内存
//
//				// io读
//				// io写
//				Float iowrite = (Float.valueOf((String) proObj.get("iowrite2"))
//						- Float.valueOf((String) proObj.get("iowrite"))) / 1024; // io写
//				Float ioread = (Float.valueOf((String) proObj.get("ioread2"))
//						- Float.valueOf((String) proObj.get("ioread"))) / 1024; // io读
//
//				/**
//				 * 用于计算进程的cpu使用率
//				 */
//				Integer t1 = Integer.valueOf((String) proObj.get("futime")); // 第一次用户时间
//				Integer t2 = Integer.valueOf((String) proObj.get("fstime")); // 第一次系统时间
//				Integer t3 = Integer.valueOf((String) proObj.get("fcutime")); // 第一次的cutime
//				Integer t4 = Integer.valueOf((String) proObj.get("fcstime")); // 第一次的cstime
//
//				Integer t5 = Integer.valueOf((String) proObj.get("sutime")); // 第二次用户时间
//				Integer t6 = Integer.valueOf((String) proObj.get("sstime")); // 第二次系统时间
//				Integer t7 = Integer.valueOf((String) proObj.get("scutime")); // 第二次的cutime
//				Integer t8 = Integer.valueOf((String) proObj.get("scstime")); // 第二次系统时间
//
//				// 进程的cpu使用率
//				Float proUseCPU = ((float) ((t5 + t6 + t7 + t8) - (t1 + t2 + t3 + t4)) / total);
//
//				process.setProId(proId);
//				process.setProName(proName);
//				process.setProPhysicalMEM(proPhysicalMEM);
//				process.setProVirtualMEM(proVirtualMEM);
//				process.setIowrite(iowrite);
//				process.setIoread(ioread);
//				process.setProUseCPU(proUseCPU);
//
//				list.add(process);
//
//			}
//
//			dataBean.setProcess(list);
//		}
//		// System.out.println(JSONObject.parseObject(list.toArray()[0].toString()).get("proId"));
//		// System.out.println(JSONObject.parseObject(list.toArray()[1].toString()).get("proId"));
//		return dataBean;
//
//		// String s= JSON.toJSONString(string);
//		// JSONObject.parse(string).
//		// JSON.parse(string);
//		// JSONUtils.parse(string);
//
//		// sys.out.println(jsonObject.get("sys"));
//	}
//
//	public static void main(String[] args) {
//		// dealJson.deal("1");
//		// List<Integer> list=new ArrayList<Integer>();
//		// list.add(321);
//		//
//		// sys.out.println(list.contains(321)); list.contains(321);
//
//		// 时间戳转化为Sting或Date
//
//	}
//}
