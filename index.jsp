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
                                  <div align="center">
                                      <h1>欢迎光临！！！</h1> 
                                  
                                  </div>
                                                                 
                     
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
        <!-- End #content -->
        <script src="assets/js/jquery-1.8.3.min.js"></script>
        <script src="assets/js/jquery.cookie.js"></script>        
        <script src="assets/js/bootstrap/bootstrap.js"></script>
         </body>
</html>
