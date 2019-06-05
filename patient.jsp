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
                                    <h4 class="panel-title"><i class="im-bars"></i> 病人记录：</h4>
                                    <button  class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">添加病人</button>
                                </div>
                               
                                <div class="panel-body" id="display_details" style="text-align: center;">
                                    <table class="table display" >
                                        <thead>
                                            <tr>
                                                
                                                <th class="center">userID</th>
                                                <th class="center">姓名</th>
                                                <th class="center">性别</th>
                                                <th class="center">年龄</th>
                                                <th class="center">身高</th>
                                                
                                                <th class="center">体重</th>
                                                <th class="center">病例</th>
                                                <th class="center">信息采集</th>
                                                <th class="center">查看信息</th>
                                                <th class="center">详情</th>
                                                <th class="center">删除</th>
                                              
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach items="${basicDataBean.list}" var="basicData">
												<tr>
													<td>${basicData.userID}</td>
													<td>${basicData.name}</td>
													<td>${basicData.sex}</td>
												    <td>${basicData.age}</td>
												    <td>${basicData.height}</td>
												    
													<td>${basicData.weight}</td>
												    <td>${basicData.medHistory}</td>	
												    <td> <a href="${pageContext.request.contextPath}/info_goCollectionPage.action?id=${basicData.userID}" class="btn btn-danger">采集</a></td>
                                                    <td><a href="${pageContext.request.contextPath}/info_getInfo.action?id=${basicData.userID}" class="btn btn-danger">查看</a></td>													
												
													<td><a href="${pageContext.request.contextPath}/patient_goExpPage.action?id=${basicData.userID}" class="btn btn-danger">实验数据</a></td>
                                                    <td><a href="${pageContext.request.contextPath}/patient_delPatient.action?id=${basicData.userID}" class="btn btn-danger">删除</a></td>
													</tr>
												       
												
											</c:forEach>
                                           
                                          
         
                                        </tbody>
                                    </table>
                                    
                                    
                                    <table width="100%">
									 <tr >
										 <td>
											  第${basicDataBean.page}/${basicDataBean.totalPage}页     
    
										 </td>
									   
										 <td align="center">
										    <c:if test="${basicDataBean.page!=0}">
											      <c:if test="${basicDataBean.page!=1}"> 
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getPatientList.action?page=1">首页</a>|     
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getPatientList.action?page=${basicDataBean.page-1}">上一页</a>
												  </c:if>
												   
												   <c:if test="${basicDataBean.page!=basicDataBean.totalPage}"> 
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getPatientList.action?page=${basicDataBean.page+1}">下一页</a>|
												       <a class="btn btn-primary" href="${pageContext.request.contextPath }/patient_getPatientList.action?page=${basicDataBean.totalPage}">尾页</a>    
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
        
          <!-- 模态框1（Modal） -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
				添加病人		</h4>
			</div>
		<form action="${pageContext.request.contextPath}/patient_addBasicData"  method="post">
			<div class="modal-body">
			
                         <!-- <input  name="id" value="${sessionScope.existUser.id }" type="hidden"/><br/>  --> 
                                               姓名: <input placeholder="姓名不能为空"  class="form-control" name="name" ><br/>
                                               性别: <input placeholder="填男/女"  class="form-control" name="sex" ><br/>        
                                               年龄: <input placeholder="年龄不能为空"  class="form-control"  name="age" ><br/>
                                               身高: <input placeholder="身高不能为空"  class="form-control"  name="height"><br/>
                                               体重: <input placeholder="体重不能为空"  class="form-control"  name="weight"><br/>
                                               病历: <input placeholder="病历不能为空"  class="form-control"  name="medHistory"><br/>                 

                                                          
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
     
     
     
     
        <script src="assets/js/jquery-1.8.3.min.js"></script>
        <script src="assets/js/jquery.cookie.js"></script>        
        <script src="assets/js/bootstrap/bootstrap.js"></script>
		<script>

	</script>
</html>
