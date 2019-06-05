<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
        <meta charset="utf-8">
        <title>病人管理系统</title>
        <!-- Mobile specific metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Force IE9 to render in normal mode -->
        <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
        <meta name="author" content="750" />
        <meta name="application-name" content="EST admin Controlsystem" />
        <!-- Import google fonts - Heading first/ text second -->
        <link rel='stylesheet' type='text/css'  />
        <!--[if lt IE 9]>

<![endif]-->
        <!-- Css files -->
        <!-- Icons -->
        <link href="assets/css/icons.css" rel="stylesheet" />
        <!-- jQueryUI -->
        <link href="assets/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
        <!-- Bootstrap stylesheets (included template modifications) -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- Plugins stylesheets (all plugin custom css) -->
        <link href="assets/css/plugins.css" rel="stylesheet" />
        <!-- Main stylesheets (template main css file) -->
        <link href="assets/css/main.css" rel="stylesheet" />
        <!-- Custom stylesheets ( Put your own changes here ) -->
        <link href="assets/css/custom.css" rel="stylesheet" />
        <!-- Fav and touch icons -->
        <link rel="icon" href="assets/img/ico/favicon.ico" type="image/png">
        <meta name="msapplication-TileColor" content="#3399cc" />
    </head>
	<body>
		<div id="header">
            <div class="container-fluid">
                <div class="navbar">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
                            <i class="im-windows8 text-logo-element animated bounceIn"></i><span class="text-slogan">管理平台</span> 
                        </a>
                    </div>
                 
                </div>
            </div>
            <!-- Start .header-inner -->
        </div>
        <!-- End #header -->
        <!-- Start #sidebar -->
        <div id="sidebar">
            <!-- Start .sidebar-inner -->
                    <div class="sidebar-inner">
			<!-- Start #sideNav -->
			<ul id="sideNav" class="nav nav-pills nav-stacked">
				<li>
					<a href="${pageContext.request.contextPath}/index.jsp">主页<i class="im-screen"></i></a>
					<a href="${pageContext.request.contextPath}/patient_getPatientList.action?page=1">病人数据<i class="st-files"></i></a>
				</li>
			</ul>
			<!-- End #sideNav -->
		</div>
            <!-- End .sidebar-inner -->
            <div class="clearfix"></div>
        </div>
        <div id="content">
            <!-- Start .content-wrapper -->
            <div class="content-wrapper">
                <!-- Start .page-header -->
                <div class="row">
                    <!-- Start .row -->
                    <div class="col-lg-12 heading">
                        <ul id="crumb" class="breadcrumb">
                        </ul>
                    </div>
                    <!-- End .page-header -->
                </div>
                <!-- End .row -->
                <div class="outlet">
                    <!-- Start .outlet -->
                    <!-- Page start here ( usual with .row ) -->
                    <div class="row">
                        <div class="col-lg-12">
                    		<div class="panel panel-default toggle">
                                <!-- Start .panel -->
                                <div class="panel-heading">
                                    <h4 class="panel-title"><i class="im-bars"></i> 管理系统：</h4>
                                </div>
                                <div class="panel-body" id="display_details" style="text-align: center;">
                                  
                               <!-- 信息采集页面 -->
                                  
                                 <div align="center">
			                               	<h4 class="title" id="myModalLabel">信息查看:	</h4>
			</div>
		
		  
		 
		
			   <div class="input-group">
			            <span class="input-group-addon">病人ID</span>
						<input type="text" disabled="disabled" value="${sessionScope.info.userID }" class="form-control" >
                        <span class="input-group-addon">研究中心号</span>
						<input type="text" disabled="disabled" value="${sessionScope.info.rescenternum }" class="form-control" >
						<span class="input-group-addon">患者入选号</span>
						<input type="text" disabled="disabled" value="${sessionScope.info.patientnum }" class="form-control" >
						<span class="input-group-addon">患者姓名首字母</span>
						<input type="text" disabled="disabled" value="${sessionScope.info.patfirstzm }" class="form-control" >
              </div>
             <br>
             <div class="input-group">
                <span class="input-group-addon">性别</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.sex }"  > 
			    <span class="input-group-addon">身高</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.height }"  >
			    <span class="input-group-addon">体重</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.weight }"  >
			    <span class="input-group-addon">出生年月</span>
			    <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.birth }" >
             </div>
             
             <br>
             <div class="input-group">
               <span class="input-group-addon">高血压病程时间:</span>
         	   <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.hibltime }">
               <span class="input-group-addon">目前降压治疗:</span>
               <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.rduceblood }">
			 	 
                  
              </div>
              		 				
               <div class="input-group">
                      <span class="input-group-addon">若有,目前治疗的药物类别:</span>  
                      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.reducebloodmedi }">
					  <span class="input-group-addon">其它药物:</span>
                      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.redoucebloodoth }">	
               </div>
                 <br>
             <div class="input-group">
                <span class="input-group-addon">过去3个月内有心梗发作</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.heartinfarc }" > 
			    <span class="input-group-addon">外周动脉疾病史</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.peripheralartery }" >
			    <span class="input-group-addon">2型糖尿病</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.twosugardis }"  > 
			    <span class="input-group-addon">血脂异常</span>
			    <input type="text" class="form-control"   disabled="disabled" value="${sessionScope.info.bloodfat }"   >
			    <span class="input-group-addon">高血压肾病</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.highbloodkidney }"  >
             </div>
               <br>
             <div class="input-group">
                <span class="input-group-addon">体温/℃</span>
			    <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.temperature }" > 
			    <span class="input-group-addon">呼吸/bpm</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.breath }"  >
			    <span class="input-group-addon">心率/bpm</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.heartfre }"  > 
			    <span class="input-group-addon">血压/mmHg</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.bloodpre }"  >
			    <span class="input-group-addon">体检有无异常</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.haveexcep }"  >
                        
             </div>
            
             <div class="input-group">
                <span class="input-group-addon">若有,请说明:</span>
			    <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.haveexcepdesc }" > 	    
             </div>
               <br>
             <div class="input-group">
                 <span class="input-group-addon">临床意义判定(下拉框)意义</span>
                 <span class="input-group-addon">1</span>
			     <input type="text" class="form-control"  disabled="disabled"  value="正常" >
			     <span class="input-group-addon">2</span>
			     <input type="text" class="form-control"  disabled="disabled" value="异常但无临床意义"  > 
			     <span class="input-group-addon">3</span>
			     <input type="text" class="form-control"  disabled="disabled" value="异常且有临床意义"  >
			     <span class="input-group-addon">4</span>
			   	 <input type="text" class="form-control"  disabled="disabled" value="未查"  >
             </div>
             <br>
				  <input class="form-control" style="color:green"  class="form-control"  disabled="disabled" value=" 血常规及生化检查:"  > 
			      
              <div class="input-group">
                  <span class="input-group-addon">标本采集日期</span>
			      <input type="text" class="form-control" name="" disabled="disabled" value="${sessionScope.info.xcgsamplecoltime }">	  
             	  <span class="input-group-addon">Hb值/g/L</span>
			      <input type="text" class="form-control"  name="hb" disabled="disabled" value="${sessionScope.info.hb }">
			      <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" name="hblevel" disabled="disabled" value="${sessionScope.info.hblevel }">
	                 
             </div>
             <div class="input-group">
			      <span class="input-group-addon">RBC值/*10^12/L</span>
			      <input type="text" class="form-control"  name="rbc"  disabled="disabled" value="${sessionScope.info.rbc }">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" name="rbclevel" disabled="disabled" value="${sessionScope.info.rbclevel }">
	                       
                  <span class="input-group-addon">WBC值/*10^9/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.wbc }" name="wbc">
                  <span class="input-group-addon">判定</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.wbclevel }" name="wbclevel">
			           
             </div>
              <div class="input-group">
			      <span class="input-group-addon"> PLT值/*10^9/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.plt }"  name="plt">
			       <span class="input-group-addon">判定</span>
			         <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.pltlevel }"  name="pltlevel">
			           
                  <span class="input-group-addon">CHO值/mmol/L</span>
                  <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.cho }" name="cho">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.cholevel }" name="cholevel" >
	              
             </div>
              <div class="input-group">
			     
			     <span class="input-group-addon">TG值/mmol/L</span>
			      <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.tg }" name="tg">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control"  disabled="disabled" value="${sessionScope.info.tglevel }" name="tglevel" >
	                     
                  <span class="input-group-addon">HDL-C值/mmol/L</span>
                  <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.hdlc }" name="hdlc">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control"  disabled="disabled" value="${sessionScope.info.hdlclevel }" name="hdlclevel" >
	                
             </div>
             <br>
               <div class="input-group">
			      <span class="input-group-addon">LDL-C值/mmol/L</span>
			      <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.ldlc }" name="ldlc">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control"  disabled="disabled" value="${sessionScope.info.ldlclevel }" name="ldlclevel" >
	                    
                  <span class="input-group-addon">ALT值/IU/L</span>
                  <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.alt }" name="alt">
                  <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control"  disabled="disabled" value="${sessionScope.info.altlevel }" name="altlevel" >
	                    
             </div>
             
               <div class="input-group">
			      <span class="input-group-addon">AST值/IU/L</span>
			      <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.ast }" name="ast">
			      <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control"  disabled="disabled" value="${sessionScope.info.astlevel }" name="astlevel" >
	                    
                  <span class="input-group-addon">TBIL值/μmol/L</span>
                  <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.tbil }"  name="tbil">
                  <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control"  disabled="disabled" value="${sessionScope.info.tbillevel }" name="tbillevel" >
	                   
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">DBIL/值μmol/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.dbil }" name="dbil">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control"  disabled="disabled" value="${sessionScope.info.dbillevel }" name="dbillevel" >
	                    
                  <span class="input-group-addon">UA值/μmol/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.ua }" name="ua">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.ualevel }" name="ualevel" >
	                    
             </div> 
              
               <div class="input-group">
			      <span class="input-group-addon">BUN值/mmol/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.bun }" name="bun">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.bunlevel }" name="bunlevel" >
	                     
                  <span class="input-group-addon">Cr值/μmol/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.cr }"  name="cr">
                  <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.crlevel }" name="crlevel" >
	                    
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">K值/mmol/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.k }" name="k">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.klevel }" name="klevel" >
	                      
                  <span class="input-group-addon">Na值/mmol/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.na }"  name="na">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.nalevel }" name="nalevel" >
	                   
             </div> 
           <br>  
             <div class="input-group">
			      <span class="input-group-addon">Cl值/mmol/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.cl }"  name="cl">
			      <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.cllevel }" name="cllevel" >
	                       
                  <span class="input-group-addon">Glu值/mmol/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.glu }"  name="glu">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.glulevel }" name="glulevel" >
	               
	                     
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">CRP值/mg/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.crp }" name="crp">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.crplevel }" name="crplevel" >
	                    
                  <span class="input-group-addon">TNF-α值/ng/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.tnf }" name="tnf">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.tnflevel }" name="tnflevel" >
	                 
             </div> 
           <div class="input-group">
			      <span class="input-group-addon">IL-6值/ng/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.ilsix }"  name="ilsix">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.ilsixlevel }" name="ilsixlevel" >
	                     
                  <span class="input-group-addon">肾上腺素值/mmol/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.shenshangxian }" name="shenshangxian">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.shenshangxianlevel }" name="shenshangxianlevel" >
	                   
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">去甲肾上腺素/mmol/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.qujia }" name="qujia">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.qujialevel }" name="qujialevel" >
	                    
                  <span class="input-group-addon">肾素值/mmol/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.shensu }" name="shensu">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.shensulevel }" name="shensulevel" >
	                    
             </div> 
             <div class="input-group">
			      <span class="input-group-addon">血管紧张素/mmol/L</span>
			      <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.xueguan }" name="xueguan">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.xueguanlevel }" name="xueguanlevel" >
	                      
                  <span class="input-group-addon">醛固酮值/mmol/L</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.quangut }" name="quangut">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.quangutlevel }" name="quangutlevel" >
	                    
             </div> 
             
             
             <br>
             <input class="form-control" style="color:green"  class="form-control"  disabled="disabled" value="尿常规检查: "  >  
              
              
             <div class="input-group">
                  <span class="input-group-addon">标本采集日期</span>
			      <input type="text" name="niaosampcoltime" disabled="disabled" value="${sessionScope.info.niaosampcoltime }" class="form-control">
             </div>
             <div class="input-group">
			      <span class="input-group-addon">蛋白/定性（+/-）</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.daobai }"  name="daobai">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.daobailevel }" name="daobailevel" >
	               
                  <span class="input-group-addon">WBC值/HPF</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.nwbc }"  name="nwbc">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.nwbclevel }" name="nwbclevel" >
	                   
             </div> 
             <div class="input-group">
			      <span class="input-group-addon">RBC值/HPF</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.nrbc }" name="nrbc">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.nrbclevel }" name="nrbclevel" >
	                      
                  <span class="input-group-addon">ALB值/mg/L</span>
                  <input type="text" class="form-control"  disabled="disabled" value="${sessionScope.info.nalb }" name="nalb">
                  <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.nalblevel }" name="nalblevel" >
	                  
             </div> 
             <div class="input-group">
			      <span class="input-group-addon">Cr值/mmol/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.ncr }"  name="ncr">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.ncrlevel }" name="ncrlevel" >
	                      
                  <span class="input-group-addon">A/C值</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.nac }"  name="nac">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.naclevel }" name="naclevel" >
	                 
             </div> 
           
           <br>
             <input class="form-control" style="color:green"  class="form-control"  disabled="disabled" value="糖耐量检查  : "  >  
              
              
             <div class="input-group">
                  <span class="input-group-addon">标本采集日期</span>
			      <input type="text" disabled="disabled" value="${sessionScope.info.tcoltime }" name="tcoltime" class="form-control">
             </div>
             <div class="input-group">
			      <span class="input-group-addon">餐后2h血糖/mmol/L</span>
			      <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.twohourxt }"  name="twohourxt">
			       <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.twohourxtlevel }" name="twohourxtlevel" >
	                      
                  <span class="input-group-addon">HbAic百分比/%</span>
                  <input type="text" class="form-control" disabled="disabled" value="${sessionScope.info.hbaic }"  name="hbaic">
                   <span class="input-group-addon">判定</span>
			      <input id="mySelect" class="form-control" disabled="disabled" value="${sessionScope.info.hbaiclevel }" name="hbaiclevel" >
	                  
             </div> 
             <br>
              <div class="input-group">
                  <span class="input-group-addon">12导联心电图检查时间</span>
			      <input type="text" disabled="disabled" value="${sessionScope.info.onetwohearttime }" name="onetwohearttime" class="form-control">
           		  <span class="input-group-addon">结果如下：</span>
           		  <input type="text" disabled="disabled" value="${sessionScope.info.shenshangxianlevel }" name="onetwores" id="" class="form-control">
				  
					
             </div>
              <div class="input-group">
                    <span class="input-group-addon">
                                                描述：
			    	</span>
			      <input type="text" name="onetworesdesc" disabled="disabled" value="${sessionScope.info.onetworesdesc }" class="form-control" >
             </div>
             
              <br>
              <div class="input-group">
                  <span class="input-group-addon">24小时动态心电图检查时间</span>
			      <input type="text" name="twofourhearttime" disabled="disabled" value="${sessionScope.info.twofourhearttime }" class="form-control">
			      <span class="input-group-addon">内皮功能测定时间</span>
			      <input type="text" name="neipitime" disabled="disabled" value="${sessionScope.info.neipitime }" class="form-control">
              </div>
              <div class="input-group">
                   </div>
              <div class="input-group">
                  <span class="input-group-addon">超声心动图检查时间</span>
			      <input type="text" name="chaoshearttime" disabled="disabled" value="${sessionScope.info.chaoshearttime }" class="form-control">
			      <span class="input-group-addon">肢体动脉检查时间</span>
			      <input type="text" name="zhitidtime" disabled="disabled" value="${sessionScope.info.zhitidtime }" class="form-control">
              </div>
              <div class="input-group">
              </div>
           
             
              <br>
              
<table class="table table-striped">
	
	<thead>
		<tr class="success">
			<th>卧位</th>
			<th>Right</th>
			<th>Left</th>
		</tr>
	</thead>
	<tbody>
		<tr >
			<td>SBP    mmHg</td>
			<td><input name="sbpright" disabled="disabled" value="${sessionScope.info.sbpright }"  class="form-control"></td>
			<td><input name="sbpleft" disabled="disabled" value="${sessionScope.info.sbpleft }"  class="form-control"></td>
		</tr>
		<tr>
			<td>DBP    mmHg</td>
			<td><input name="dbpright" disabled="disabled" value="${sessionScope.info.dbpright }"  class="form-control"></td>
			<td><input name="dbpleft" disabled="disabled" value="${sessionScope.info.dbpleft }"  class="form-control"></td>
		</tr>
		<tr  >
			<td>PP     mmHg</td>
			<td><input name="ppright" disabled="disabled" value="${sessionScope.info.ppright }"  class="form-control"></td>
			<td><input name="ppleft" disabled="disabled" value="${sessionScope.info.ppleft }"  class="form-control"></td>
		</tr>
		<tr  >
			<td>MAP   mmHg</td>
			<td><input name="mapright" disabled="disabled" value="${sessionScope.info.mapright }"  class="form-control"></td>
			<td><input name="mapleft"  disabled="disabled" value="${sessionScope.info.mapleft }"  class="form-control"></td>
		</tr>
		<tr  >
			<td>HR    次/分</td>
			<td><input name="hrright" disabled="disabled" value="${sessionScope.info.hrright }"  class="form-control"></td>
			<td><input name="hrleft" disabled="disabled" value="${sessionScope.info.hrleft }"  class="form-control"></td>
		</tr>
		<tr >
			<td>PWV</td>
			<td><input name="pwvright" disabled="disabled" value="${sessionScope.info.pwvright }"  class="form-control"></td>
			<td><input name="pwvleft" disabled="disabled" value="${sessionScope.info.pwvleft }"  class="form-control"></td>
		</tr>
		<tr  >
			<td>ABI   mmHg</td>
			<td><input name="abiright" disabled="disabled" value="${sessionScope.info.abiright }"  class="form-control"></td>
			<td><input name="abileft" disabled="disabled" value="${sessionScope.info.abileft }"  class="form-control"></td>
		</tr>
		
   </tbody>
</table>

  
    <br>
    <input class="form-control" style="color:green"  class=" form-control"  disabled="disabled" value="ABPM检查结果记录: "  >
   
    <div class="input-group">
                  <span class="input-group-addon">记录开始时间</span>
                  <input type="text" name="abpmstarttime" disabled="disabled" value="${sessionScope.info.abpmstarttime }"  class="form-control">
             	  <span class="input-group-addon">记录结束时间
             	  </span><input type="text" name="abpmendtime" disabled="disabled" value="${sessionScope.info.abpmendtime }"  class="form-control">
			     
			        </div>
    <div class="input-group">
                  <span class="input-group-addon">就寝时间</span>
                  <input type="text" name="jiuqintime" disabled="disabled" value="${sessionScope.info.jiuqintime }"  class="form-control"><span class="input-group-addon">(24小时制)</span>
             	  <span class="input-group-addon">起床时间</span>
                  <input type="text" name="getuptime" disabled="disabled" value="${sessionScope.info.getuptime }"  class="form-control"><span class="input-group-addon">(24小时制)</span>       	  
    </div>
    
    <div class="input-group">
        <span class="input-group-addon">动态血压数据是否有效：</span>
        <input type="text" name="dongtaix" disabled="disabled" value="${sessionScope.info.dongtaix }"  class="form-control">
                      
					 
    </div>	
			
<br><br>
<table class="table table-striped">
	
	<thead>
		<tr class="success">
			<th>项目</th>
			<th>检查日期</th>
			<th>是否操作过(填是/否)</th>
		</tr>
	</thead>
	<tbody>
		<tr >
			<td>6分钟步行试验</td>
			<td><input name="sixpacetime" disabled="disabled" value="${sessionScope.info.sixpacetime }" class="form-control"></td>
			<td>
                      <input name="sixpaceisdo" disabled="disabled" value="${sessionScope.info.sixpaceisdo }" class="form-control">					  
            </td>
		</tr>
		<tr>
			<td>Borg评分</td>
			<td><input name="brogpftime"   disabled="disabled" value="${sessionScope.info.brogpftime }" class="form-control"></td>
			<td>
                    <input name="brogpfisdo"   disabled="disabled" value="${sessionScope.info.brogpfisdo }" class="form-control">
						
            </td>
		</tr>
		<tr  >
			<td>心血管病危险分级评估</td>
			<td><input name="heartbloodtime"  disabled="disabled" value="${sessionScope.info.heartbloodtime }" class="form-control"></td>
			<td>
                     <input name="heartbloodisdo"  disabled="disabled" value="${sessionScope.info.heartbloodisdo }" class="form-control">
						  
            </td>
		</tr>
		<tr  >
			<td>签署CPET知情同意书</td>
			<td><input name="signcpettime" disabled="disabled" value="${sessionScope.info.signcpettime }" class="form-control"></td>
			<td>
                  <input type="text"  disabled="disabled" value="${sessionScope.info.signcpetisdo }" class="form-control" name="signcpetisdo" id="" >						 
            </td>
		</tr>
		<tr  >
			<td>完成CPET  </td>
			<td><input type="text"  disabled="disabled"  class="form-control" name="" id="" ></td>
			<td>
                  <input type="text"  disabled="disabled" value="${sessionScope.info.commitcpetisdo }" class="form-control" name="commitcpetisdo" id="" >
            </td>
		</tr>
		
		
   </tbody>
</table>		
			
			
			
			
			
			
			
			
			
			
			<br>
			
			
			
				
	
</div>
			
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
                                  </div>
                                                                 
                     
                                </div>
					            <div class="clearfix"></div>
					       
                            </div>
                     
            
            <div class="clearfix"></div>
        
       
        <script src="assets/js/jquery-1.8.3.min.js"></script>
        <script src="assets/js/jquery.cookie.js"></script>        
        <script src="assets/js/bootstrap/bootstrap.js"></script>
         </body>
</html>
