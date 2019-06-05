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

		<style type="text/css">
			.left{
				width: 500px;
				height: 350px;
			}
			.center{	
				width: 500px;
				height: 350px;			
			}
			.right{			
				width: 500px;
				height: 350px;
			}
			.fl {float:left}
			.fr {float:right}
		</style>
	</head>
	<body>
	   
           
		<div>
			
			<div class="left fl" id="container"></div>
			<div class="center fl" id="container2"></div>
			<div class="right fl" id="container3"></div>
			
			
		</div>
		<div>
			<!--左-->
			<div class="left fl"  id="container4"></div>
			<div class="center fl"  id="container5"></div>
			<div class="right fl"  id="container6"></div>
			
			
			
			
		</div>
		<div>
			<!--左-->
			<div class="left fl"  id="container7"></div>
			<div class="center fl"  id="container8"></div>
			<div class="right fl"  id="container9"></div>
			
			
			
			
		</div>
	
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
		var dom3 = document.getElementById("container3");
		var myChart3 = echarts.init(dom3);
		
		var dom4 = document.getElementById("container4");
		var myChart4 = echarts.init(dom4);
		var dom5 = document.getElementById("container5");
		var myChart5 = echarts.init(dom5);
		var dom6 = document.getElementById("container6");
		var myChart6 = echarts.init(dom6);
		
		var dom7 = document.getElementById("container7");
		var myChart7 = echarts.init(dom7);
		var dom8 = document.getElementById("container8");
		var myChart8 = echarts.init(dom8);
		var dom9 = document.getElementById("container9");
		var myChart9 = echarts.init(dom9);
		$(function() {

			$.ajax({
						type : "get",
						url : "${pageContext.request.contextPath}/patient_getData.action?type=4",
						dataType : "json", 
						success : function(result) {
		alert(result.cri2);
							option1 = {
								xAxis : {
									type : 'category',
									data : [ 1, 2, 3,4,5,
											6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
								},
								yAxis : {
									type : 'value'
								},
								// 标题
						         title: {
						             text: '心肺耦合指数',
						             subtext: 'cri1的折线图'
						         },
								 //图例名
						         legend: {
						             data:['cri1']
						         }, dataZoom: [
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
									data : result.cri1,
									name : 'cri1',
									type : 'line',
									itemStyle : { normal: {label : {show: true}}},  //显示数值
									smooth:true
									
								    } ]
							};
							option2 = {
									xAxis : {
										type : 'category',
										data : [ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100
 ]
									},
									yAxis : {
										type : 'value'
									},
									// 标题
							         title: {
							             text: 'cri2的折线图',
							             subtext: 'cri2的折线图'
							         },
									 //图例名
							         legend: {
							             data:['cri2']
							         }, dataZoom: [
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
										data : result.cri2,
										name: 'cri2',
										type : 'line',
										itemStyle : { normal: {label : {show: true}}},
										smooth:true
										
									} ]
								};
							
							option3 = {
									xAxis : {
										type : 'category',
										data : [ 1, 2, 3,4,5,
												6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
									},
									yAxis : {
										type : 'value'
									},
									// 标题
							         title: {
							        	   text: 'cri3的折线图',
								           subtext: 'cri3的折线图'
							         },
									 //图例名
							         legend: {
							             data:['cri3']
							         }, dataZoom: [
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
										data : result.cri3,
										name: 'cri3',
										type : 'line',
										itemStyle : { normal: {label : {show: true}}},
										smooth:true
										
									} ]
								};
							
							option4 = {
									xAxis : {
										type : 'category',
										data : [ 1, 2, 3,4,5,
												6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
									},
									yAxis : {
										type : 'value'
									},
									// 标题
							         title: {
							             text: '呼吸变异率',
							             subtext: 'rrv1的折线图'
							         },
									 //图例名
							         legend: {
							             data:['rrv1']
							         }, dataZoom: [
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
										data : result.rrv1,
										name : 'rrv1',
										type : 'line',
										itemStyle : { normal: {label : {show: true}}},  //显示数值
										smooth:true
										
									    } ]
								};
								option5= {
										xAxis : {
											type : 'category',
											data : [ 1, 2, 3,4,5,
													6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
										},
										yAxis : {
											type : 'value'
										},
										// 标题
								         title: {
								        	 text: '呼吸变异率',
								             subtext: 'rrv2的折线图'
								         },
										 //图例名
								         legend: {
								             data:['rrv2']
								         }, dataZoom: [
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
											data : result.rrv2,
											name: 'rrv2',
											type : 'line',
											itemStyle : { normal: {label : {show: true}}},
											smooth:true
											
										} ]
									};
								
								option6 = {
										xAxis : {
											type : 'category',
											data : [ 1, 2, 3,4,5,
													6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
										},
										yAxis : {
											type : 'value'
										},
										// 标题
								         title: {
								        	   text: '呼吸变异率',
									           subtext: 'rrv3的折线图'
								         },
										 //图例名
								         legend: {
								             data:['rrv3']
								         }, dataZoom: [
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
											data : result.rrv3,
											name: 'rrv3',
											type : 'line',
											itemStyle : { normal: {label : {show: true}}},
											smooth:true
											
										} ]
									};
								
								option7 = {
										xAxis : {
											type : 'category',
											data : [ 1, 2, 3,4,5,
													6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
										},
										yAxis : {
											type : 'value'
										},
										// 标题
								         title: {
								        	   text: '心率变异率',
									           subtext: 'hrv1的折线图'
								         },
										 //图例名
								         legend: {
								             data:['hrv1']
								         }, dataZoom: [
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
											data : result.hrv1,
											name: 'hrv1',
											type : 'line',
											itemStyle : { normal: {label : {show: true}}},
											smooth:true
											
										} ]
									};
								option8 = {
										xAxis : {
											type : 'category',
											data : [ 1, 2, 3,4,5,
													6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
										},
										yAxis : {
											type : 'value'
										},
										// 标题
								        title: {
								        	   text: '心率变异率',
									           subtext: 'hrv2的折线图'
								         }, dataZoom: [
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
										 //图例名
								         legend: {
								             data:['hrv2']
								         },
										series : [
										    {
											data : result.hrv2,
											name: 'hrv2',
											type : 'line',
											itemStyle : { normal: {label : {show: true}}},
											smooth:true
											
										} ]
									};
								option9 = {
										xAxis : {
											type : 'category',
											data : [ 1, 2, 3,4,5,
													6, 7,8,9,10,11,12,13,14,15,16,17,18,19,20 ]
										},
										yAxis : {
											type : 'value'
										},
										// 标题
								           title: {
								        	   text: '心率变异率',
									           subtext: 'hrv3的折线图'
								         },
										 //图例名
								         legend: {
								             data:['hrv3']
								         }, dataZoom: [
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
											data : result.hrv3,
											name: 'hrv3',
											type : 'line',
											itemStyle : { normal: {label : {show: true}}},
											smooth:true
											
										} ]
									};
						
							
								myChart.setOption(option1, true);
								myChart2.setOption(option2, true);
								myChart3.setOption(option3, true);
								myChart4.setOption(option4, true);
								myChart5.setOption(option5, true);
								myChart6.setOption(option6, true);
								myChart7.setOption(option7, true);
								myChart8.setOption(option8, true);
								myChart9.setOption(option9, true);
							
						},
						error : function() {
							alert("请求失败");
						}
					});
		});
	</script>
	
</body>
</html>