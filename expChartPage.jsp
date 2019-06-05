<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<html style="height: 100%">
<head>
<meta charset="utf-8">
<link rel='stylesheet' type='text/css' />
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
</head>
<body style="height: 100%; margin: 0">


	<div id="container" style="height: 50%"></div>
	<div id="container2" style="height: 50%"></div>
	<script src="assets/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
	<script type="text/javascript"
		src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
	<script type="text/javascript">
		var dom = document.getElementById("container");
		var myChart = echarts.init(dom);
		var dom2 = document.getElementById("container2");
		var myChart2 = echarts.init(dom2);
		$(function() {

			$.ajax({
						type : "get",
						url : "${pageContext.request.contextPath}/patient_getData.action?type=1",
						dataType : "json", 
						success : function(result) {
						

							option1 = {
								xAxis : {
									type : 'category',
									data : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri',
											'Sat', 'Sun' ]
								},
								yAxis : {
									type : 'value'
								},
								// 标题
						         title: {
						             text: '心率',
						             subtext: 'hr的折线图'
						         },
								 //图例名
						         legend: {
						             data:['hr']
						         },
						         dataZoom: [
						                    {
						                        type: 'slider',
						                        show: true,
						                        start: 30,
						                        end: 100,
						                        handleSize: 8
						                    },
						                    {
						                        type: 'inside',
						                        start: 30,
						                        end: 100
						                    },
						                    {
						                        type: 'slider',
						                        show: true,
						                        yAxisIndex: 0,
						                        filterMode: 'empty',
						                        width: 12,
						                        height: '70%',
						                        handleSize: 8,
						                        showDataShadow: false,
						                        left: '93%'
						                    }
						                ],
								series : [{
									data : result.hr,
									name : 'hr',
									type : 'line',
									itemStyle : { normal: {label : {show: true}}},  //显示数值
									smooth:true
									
								    } ]
							};
							option2 = {
									xAxis : {
										type : 'category',
										data : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri',
												'Sat', 'Sun' ]
									},
									yAxis : {
										type : 'value'
									},
									// 标题
							         title: {
							             text: '脉搏传导时间',
							             subtext: 'pat的折线图'
							         },
									 //图例名
							         legend: {
							             data:['pat']
							         },
							         dataZoom: [
							                    {
							                        type: 'slider',
							                        show: true,
							                        start: 30,
							                        end: 100,
							                        handleSize: 8
							                    },
							                    {
							                        type: 'inside',
							                        start: 30,
							                        end: 100
							                    },
							                    {
							                        type: 'slider',
							                        show: true,
							                        yAxisIndex: 0,
							                        filterMode: 'empty',
							                        width: 12,
							                        height: '70%',
							                        handleSize: 8,
							                        showDataShadow: false,
							                        left: '93%'
							                    }
							                ],
									series : [
									    {
										data : result.pat,
										name: 'pat',
										type : 'line',
										itemStyle : { normal: {label : {show: true}}},
										smooth:true
										
									} ]
								};
						
							if (option1 && typeof option1 === "object") {
								myChart.setOption(option1, true);
								myChart2.setOption(option2, true);
							}
						},
						error : function() {
							alert("请求失败");
						}
					});
		});
	</script>
</body>
</html>