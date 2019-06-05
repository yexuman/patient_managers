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
                        <ul  id="crumb" class="breadcrumb">
                        
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
                                    <h4 class="panel-title"><i class="im-bars"></i> 实验记录：</h4>
                                   
                                </div>
                               
                                <div class="panel-body" id="display_details" style="text-align: center;">
                                    <table class="table display" >
                                        <thead>
                                            <tr>
                                                
                                                <th class="center">userID</th>                               
                                                <th class="center">日期</th>
                                                <th class="center">时间</th>
                                                <th class="center">类型</th>
                                                
                                                <th class="center"></th>
                                                <th class="center">详情</th>
                                                
                                               
                                                
                                               
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach items="${experimentBean.list}" var="experiment">
												<tr>
													<td>${experiment.userID}</td>
													<td>${experiment.day}</td>
													<td>${experiment.starttime}</td>
													<td>实验${experiment.type}</td>
													<td></td>
													 <c:if test="${experiment.type!=5}"> 
													    <td><a href="${pageContext.request.contextPath}/patient_getExpChart.action?recordID=${experiment.recordID}&type=${experiment.type}" class="btn btn-danger">实验图表</a></td>
												  
											         </c:if>
													 <c:if test="${experiment.type==5}"> 
													    <td><button  class="btn btn-primary " data-toggle="modal" data-target="#myModal3">信息补充</button></td>
													      <td><a href="${pageContext.request.contextPath}/patient_showStCaData.action?recordID=${experiment.recordID}" class="btn btn-danger">查看</a></td>										  
											         </c:if>
										
												</tr>
												 <!-- 模态框3（Modal） -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
				信息补充		</h4>
			</div>
		<form action="${pageContext.request.contextPath}/patient_updateStCaData?recordID=${experiment.recordID}"  method="post">
			<div class="modal-body">
		
						<input  name="starttime" value="${experiment.starttime }" type="hidden"/>
                         <input  name="day" value="${experiment.day }" type="hidden"/>
                         <input  name="rawPath" value="${experiment.rawPath }" type="hidden"/>
                         <input  name="type" value="${experiment.type }" type="hidden"/>
                                               实验号recordID: <input  value="${experiment.recordID}" disabled="disabled"  class="form-control"  ><br/>
                                               用户号userID: <input value="${experiment.userID}" disabled="disabled"  class="form-control" name="userID" ><br/>        
                          dbpCuff: <input placeholder="不能为空"  class="form-control"  name="dbpCuff"><br/>
                          sbpCuff: <input placeholder="不能为空"  class="form-control"  name="sbpCuff"><br/>                 

                                                          
                <!--  <input  type="submit" class="submit" value="修改" style=" border-radius:30px ;border-color: darkcyan;">
                 -->  
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary">
					提交
				</button>
			 </form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
	
	
	
	
	
	
											</c:forEach>
                                           
                                          
         
                                        </tbody>
                                    </table>
                                    
                                    
                                    <table width="100%">
									 <tr >
										 <td>
											  第${experimentBean.page}/${experimentBean.totalPage}页     
    
										 </td>
									   
										 <td align="center">
										    <c:if test="${experimentBean.page!=0}">
											      <c:if test="${experimentBean.page!=1}"> 
											      <!-- patient_getExperimentData.action?id=${patient.userID}&type=1&page=1 -->
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getExperimentData.action?id=${patient.userID}&type=${type}&page=1">首页</a>|     
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getExperimentData.action?id=${patient.userID}&type=${type}&page=${experimentBean.page-1}">上一页</a>
												  </c:if>
												   
												   <c:if test="${experimentBean.page!=experimentBean.totalPage}"> 
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getExperimentData.action?id=${patient.userID}&type=${type}&page=${experimentBean.page+1}">下一页</a>|
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getExperimentData.action?id=${patient.userID}&type=${type}&page=${experimentBean.totalPage}">尾页</a>    
												  </c:if>
											  </c:if>
										 </td>
									</tr>
									</table>
                                    
                                   
                                </div>
					            <div class="clearfix"></div>
					        <!-- End #content -->
                            </div>
                        </div>
                    </div>
                    <!-- End .row -->
                </div>
                <!-- End .outlet -->
            </div>
            <!-- End .content-wrapper -->
            <div class="clearfix"></div>
        </div>
        
        
	</div><!-- /.modal -->
        <!-- End #content -->
        <script src="assets/js/jquery-1.8.3.min.js"></script>
        <script src="assets/js/jquery.cookie.js"></script>        
        <script src="assets/js/bootstrap/bootstrap.js"></script>
		<script>
		//按钮点击后将所要查看的历史详情记录对应的value的值传入到cookie，以便在详情页获取向后台发送请求获得数据
	<!--  -->	
		/*$('button').on('click',function(e){
			var historytimes=$(e.target).attr("value");
			$.cookie("historytimes",historytimes,{expires:7,path:'/'});
			window.open("${pageContext.request.contextPath}/details.jsp");
		})*/
	</script>
</html>
