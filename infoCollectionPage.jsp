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
			                               	<h4 class="title" id="myModalLabel">信息采集	</h4>
			</div>
		<form action="${pageContext.request.contextPath}/info_commitInfo.action"  method="post">
		  
		  <input type="hidden" name="userID" value="${userID}" />
		
			   <div class="input-group">
                        <span class="input-group-addon">研究中心号</span>
						<input type="text" name="rescenternum" class="form-control" >
						<span class="input-group-addon">患者入选号</span>
						<input type="text" name="patientnum" class="form-control" >
						<span class="input-group-addon">患者姓名首字母</span>
						<input type="text" name="patfirstzm" class="form-control" >
              </div>
             <br>
             <div class="input-group">
                <span class="input-group-addon">性别</span>
			    <input type="text" class="form-control"  name="sex"  > 
			    <span class="input-group-addon">身高</span>
			    <input type="text" class="form-control"  name="height"  >
			    <span class="input-group-addon">体重</span>
			    <input type="text" class="form-control"  name="weight"  >
			    <span class="input-group-addon">出生年月</span>
			    <input type="text" class="form-control" name="birth"  >
             </div>
             
             <br>
             <div class="input-group">
               <span class="input-group-addon">高血压病程时间:</span>
         	   <input type="text" class="form-control" name="hibltime" placeholder="填年月">
               <span class="input-group-addon">目前降压治疗</span>
                      <span class="input-group-addon">
						  <input type="radio" name="rduceblood" id="reduceblood1" value="有" checked="checked">有
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="rduceblood" id="reduceblood2" value="无">无
					  </span>
                  
              </div>
              		 				
               <div class="input-group">
                      <span class="input-group-addon">若有请选择目前治疗的药物类别:</span>  
                      <span class="input-group-addon">
						  <input type="radio" name="reducebloodmedi" id="lnj" value="利尿剂" >利尿剂
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="reducebloodmedi" id="CCB" value="CCB">CCB
					  </span>
					   <span class="input-group-addon">
                         <input type="radio" name="reducebloodmedi" id="ACE" value="ACE">ACE
					  </span>
					   <span class="input-group-addon">
                         <input type="radio" name="reducebloodmedi" id="ARB" value="ARB">ARB
					  </span>
					  <span class="input-group-addon">
                         <input type="radio" name="reducebloodmedi" id="zzj" value="β阻滞剂">β阻滞剂
					  </span>
					  <span class="input-group-addon">
                         <input type="radio" name="reducebloodmedi" id="zcy" value="中成药">中成药
					  </span>
					  <span class="input-group-addon" >其它</span>
					   <input type="text" id="other" name="redoucebloodoth" class="form-control" >
					   
               </div>
                 <br>
             <div class="input-group">
                <span class="input-group-addon">过去3个月内有心梗发作</span>
			    <input type="text" class="form-control"  name="heartinfarc" placeholder="有/无" > 
			    <span class="input-group-addon">外周动脉疾病史</span>
			    <input type="text" class="form-control"  name="peripheralartery" placeholder="有/无" >
			    <span class="input-group-addon">2型糖尿病</span>
			    <input type="text" class="form-control"  name="twosugardis" placeholder="有/无" > 
			    <span class="input-group-addon">血脂异常</span>
			    <input type="text" class="form-control"  name="bloodfat" placeholder="有/无" >
			    <span class="input-group-addon">高血压肾病</span>
			    <input type="text" class="form-control"  name="highbloodkidney" placeholder="有/无" >
             </div>
               <br>
             <div class="input-group">
                <span class="input-group-addon">体温/℃</span>
			    <input type="text" class="form-control"  name="temperature" > 
			    <span class="input-group-addon">呼吸/bpm</span>
			    <input type="text" class="form-control"  name="breath"  >
			    <span class="input-group-addon">心率/bpm</span>
			    <input type="text" class="form-control"  name="heartfre"  > 
			    <span class="input-group-addon">血压/mmHg</span>
			    <input type="text" class="form-control"  name="bloodpre"  >
			    <span class="input-group-addon">体检有无异常</span>
			    <span class="input-group-addon">
						  <input type="radio" name="haveexcep" id="unusual1" value="有" checked="checked">有
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="haveexcep" id="unusual2" value="无">无
					  </span>
             </div>
            
             <div class="input-group">
                <span class="input-group-addon">若有,请说明:</span>
			    <input type="text" class="form-control"  name="haveexcepdesc" > 	    
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
			      <input type="text" class="form-control" name="xcgsamplecoltime" placeholder="填年月日">	  
             	  <span class="input-group-addon">Hb值/g/L</span>
			      <input type="text" class="form-control"  name="hb">
			      <span class="input-group-addon"></span>
			      <select id="mySelect" class="form-control" name="hblevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>    
             </div>
             <div class="input-group">
			      <span class="input-group-addon">RBC值/*10^12/L</span>
			      <input type="text" class="form-control"  name="rbc">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="rbclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">WBC值/*10^9/L</span>
                  <input type="text" class="form-control"  name="wbc">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="wbclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
              <div class="input-group">
			      <span class="input-group-addon"> PLT值/*10^9/L</span>
			      <input type="text" class="form-control"  name="plt">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="pltlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">CHO值/mmol/L</span>
                  <input type="text" class="form-control"  name="cho">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="cholevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
              <div class="input-group">
			     
			     <span class="input-group-addon">TG值/mmol/L</span>
			      <input type="text" class="form-control"  name="tg">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="tglevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">HDL-C值/mmol/L</span>
                  <input type="text" class="form-control"  name="hdlc">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="hdlclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
             <br>
               <div class="input-group">
			      <span class="input-group-addon">LDL-C值/mmol/L</span>
			      <input type="text" class="form-control"  name="ldlc">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="ldlclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">ALT值/IU/L</span>
                  <input type="text" class="form-control"  name="alt">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="altlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
             
               <div class="input-group">
			      <span class="input-group-addon">AST值/IU/L</span>
			      <input type="text" class="form-control"  name="ast">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="astlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">TBIL值/μmol/L</span>
                  <input type="text" class="form-control"  name="tbil">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="tbillevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">DBIL/值μmol/L</span>
			      <input type="text" class="form-control"  name="dbil">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="dbillevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">UA值/μmol/L</span>
                  <input type="text" class="form-control"  name="ua">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="ualevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
              
               <div class="input-group">
			      <span class="input-group-addon">BUN值/mmol/L</span>
			      <input type="text" class="form-control"  name="bun">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="bunlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">Cr值/μmol/L</span>
                  <input type="text" class="form-control"  name="cr">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="crlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">K值/mmol/L</span>
			      <input type="text" class="form-control"  name="k">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="klevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">Na值/mmol/L</span>
                  <input type="text" class="form-control"  name="na">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="nalevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
           <br>  
             <div class="input-group">
			      <span class="input-group-addon">Cl值/mmol/L</span>
			      <input type="text" class="form-control"  name="cl">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="cllevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">Glu值/mmol/L</span>
                  <input type="text" class="form-control"  name="glu">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="glulevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">CRP值/mg/L</span>
			      <input type="text" class="form-control"  name="crp">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="crplevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">TNF-α值/ng/L</span>
                  <input type="text" class="form-control"  name="tnf">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="tnflevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
           <div class="input-group">
			      <span class="input-group-addon">IL-6值/ng/L</span>
			      <input type="text" class="form-control"  name="ilsix">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="ilsixlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">肾上腺素值/mmol/L</span>
                  <input type="text" class="form-control"  name="shenshangxian">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="shenshangxianlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div>
           
               <div class="input-group">
			      <span class="input-group-addon">去甲肾上腺素/mmol/L</span>
			      <input type="text" class="form-control"  name="qujia">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="qujialevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">肾素值/mmol/L</span>
                  <input type="text" class="form-control"  name="shensu">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="shensulevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
             <div class="input-group">
			      <span class="input-group-addon">血管紧张素/mmol/L</span>
			      <input type="text" class="form-control"  name="xueguan">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="xueguanlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">醛固酮值/mmol/L</span>
                  <input type="text" class="form-control"  name="quangut">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="quangutlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
             
             
             <br>
             <input class="form-control" style="color:green"  class="form-control"  disabled="disabled" value="尿常规检查: "  >  
              
              
             <div class="input-group">
                  <span class="input-group-addon">标本采集日期</span>
			      <input type="text" name="niaosampcoltime" class="form-control">
             </div>
             <div class="input-group">
			      <span class="input-group-addon">蛋白/定性（+/-）</span>
			      <input type="text" class="form-control"  name="daobai">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="daobailevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">WBC值/HPF</span>
                  <input type="text" class="form-control"  name="nwbc">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="nwbclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
             <div class="input-group">
			      <span class="input-group-addon">RBC值/HPF</span>
			      <input type="text" class="form-control"  name="nrbc">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="nrbclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">ALB值/mg/L</span>
                  <input type="text" class="form-control"  name="nalb">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="nalblevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
             <div class="input-group">
			      <span class="input-group-addon">Cr值/mmol/L</span>
			      <input type="text" class="form-control"  name="ncr">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="ncrlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">A/C值</span>
                  <input type="text" class="form-control"  name="nac">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="naclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
           
           <br>
             <input class="form-control" style="color:green"  class="form-control"  disabled="disabled" value="糖耐量检查  : "  >  
              
              
             <div class="input-group">
                  <span class="input-group-addon">标本采集日期</span>
			      <input type="text" name="tcoltime" class="form-control">
             </div>
             <div class="input-group">
			      <span class="input-group-addon">餐后2h血糖/mmol/L</span>
			      <input type="text" class="form-control"  name="twohourxt">
			       <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="twohourxtlevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>       
                  <span class="input-group-addon">HbAic百分比/%</span>
                  <input type="text" class="form-control"  name="hbaic">
                   <span class="input-group-addon">判定</span>
			      <select id="mySelect" class="form-control" name="hbaiclevel" >
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	                <option>4</option>
                  </select>     
             </div> 
             <br>
              <div class="input-group">
                  <span class="input-group-addon">12导联心电图检查时间</span>
			      <input type="text" name="onetwohearttime" class="form-control">
           		  <span class="input-group-addon">结果如下：</span>
           		  <span class="input-group-addon">
						  <input type="radio" name="onetwores" id="" value="正常" checked="checked">正常
				  </span>  
					<span class="input-group-addon">
                       <input type="radio" name="onetwores" id="" value="异常">异常
					  </span>
             </div>
              <div class="input-group">
                    <span class="input-group-addon">
                                                请描述
			    	</span>
			      <input type="text" name="onetworesdesc" class="form-control" >
             </div>
             
              <br>
              <div class="input-group">
                  <span class="input-group-addon">24小时动态心电图检查时间</span>
			      <input type="text" name="twofourhearttime" class="form-control">
			      <span class="input-group-addon">内皮功能测定时间</span>
			      <input type="text" name="neipitime" class="form-control">
              </div>
              <div class="input-group">
                   </div>
              <div class="input-group">
                  <span class="input-group-addon">超声心动图检查时间</span>
			      <input type="text" name="chaoshearttime" class="form-control">
			      <span class="input-group-addon">肢体动脉检查时间</span>
			      <input type="text" name="zhitidtime" class="form-control">
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
			<td><input name="sbpright" class="form-control"></td>
			<td><input name="sbpleft" class="form-control"></td>
		</tr>
		<tr>
			<td>DBP    mmHg</td>
			<td><input name="dbpright" class="form-control"></td>
			<td><input name="dbpleft" class="form-control"></td>
		</tr>
		<tr  >
			<td>PP     mmHg</td>
			<td><input name="ppright" class="form-control"></td>
			<td><input name="ppleft" class="form-control"></td>
		</tr>
		<tr  >
			<td>MAP   mmHg</td>
			<td><input name="mapright" class="form-control"></td>
			<td><input name="mapleft" class="form-control"></td>
		</tr>
		<tr  >
			<td>HR    次/分</td>
			<td><input name="hrright" class="form-control"></td>
			<td><input name="hrleft" class="form-control"></td>
		</tr>
		<tr >
			<td>PWV</td>
			<td><input name="pwvright" class="form-control"></td>
			<td><input name="pwvleft" class="form-control"></td>
		</tr>
		<tr  >
			<td>ABI   mmHg</td>
			<td><input name="abiright" class="form-control"></td>
			<td><input name="abileft" class="form-control"></td>
		</tr>
		
   </tbody>
</table>

  
    <br>
    <input class="form-control" style="color:green"  class=" form-control"  disabled="disabled" value="ABPM检查结果记录: "  >
   
    <div class="input-group">
                  <span class="input-group-addon">记录开始时间</span><input type="text" name="abpmstarttime" class="form-control">
             	  <span class="input-group-addon">记录结束时间</span><input type="text" name="abpmendtime" class="form-control">
			     
			        </div>
    <div class="input-group">
                  <span class="input-group-addon">就寝时间</span>
                  <input type="text" name="jiuqintime" class="form-control"><span class="input-group-addon">(24小时制)</span>
             	  <span class="input-group-addon">起床时间</span>
                  <input type="text" name="getuptime" class="form-control"><span class="input-group-addon">(24小时制)</span>       	  
    </div>
    
    <div class="input-group">
        <span class="input-group-addon">动态血压数据是否有效</span>
                      <span class="input-group-addon">
						  <input type="radio" name="dongtaix" id="reduceblood1" value="是" checked="checked">是
					  </span>
					  <input type="text" disabled="disabled" class="form-control" value="继续试验">  
					  <span class="input-group-addon">
                         <input type="radio" name="dongtaix" id="reduceblood2" value="否">否
					  </span>
					  <input type="text" disabled="disabled" class="form-control" value="结束试验">  
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
			<td><input name="sixpacetime" class="form-control"></td>
			<td>
                      <span class="input-group-addon">
						  <input type="radio" name="sixpaceisdo" id="sixpaceisdo1" value="是" checked="checked">是
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="sixpaceisdo" id="sixpaceisdo2" value="否">否
					  </span>
            </td>
		</tr>
		<tr>
			<td>Borg评分</td>
			<td><input name="brogpftime" class="form-control"></td>
			<td>
                      <span class="input-group-addon">
						  <input type="radio" name="brogpfisdo" id="brogpfisdo1" value="是" checked="checked">是
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="brogpfisdo" id="brogpfisdo2" value="否">否
					  </span>
            </td>
		</tr>
		<tr  >
			<td>心血管病危险分级评估</td>
			<td><input name="heartbloodtime" class="form-control"></td>
			<td>
                      <span class="input-group-addon">
						  <input type="radio" name="heartbloodisdo" id="" value="是" checked="checked">是
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="heartbloodisdo" id="" value="否">否
					  </span>
            </td>
		</tr>
		<tr  >
			<td>签署CPET知情同意书</td>
			<td><input name="signcpettime" class="form-control"></td>
			<td>
                      <span class="input-group-addon">
						  <input type="radio" name="signcpetisdo" id="" value="是" checked="checked">是
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="signcpetisdo" id="" value="否">否
					  </span>
            </td>
		</tr>
		<tr  >
			<td>完成CPET  </td>
			<td><input name="" class="form-control"></td>
			<td>
                      <span class="input-group-addon">
						  <input type="radio" name="commitcpetisdo" id="" value="有" checked="checked">是
					  </span>  
					  <span class="input-group-addon">
                         <input type="radio" name="commitcpetisdo" id="" value="无">否
					  </span>
            </td>
		</tr>
		
		
   </tbody>
</table>		
			
			
			
			
			
			
			
			
			
			
			<br>
			
			
			
				<button type="submit"  class="btn btn-primary"  >
					提交信息
				</button>
				<script >
           function  getValue(){
        	   
        	   var input=document.getElementById("other").value;
        	 
        	   var radio=document.getElementById("radio_other").value;
        	   radio=input;
        	 
        	   
           }
         </script>
	</form>
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
