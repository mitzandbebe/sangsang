<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<section class="section-header pt-mt-8 mb-0 pb-0">
        <div class="section section-lg bg-soft pt-md-0 pb-0">
                <div class="row pt-md-0">
                <div class="col-6 col-lg-6" style="margin: 0 auto;">
                        <div class="row">
                            <div class="col-12 col-sm-6 mb-4">
                               <div class="card border-light">
                                  <div class="card-body d-block d-md-flex align-items-center">
                                    <div class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0"><span class="fas fa-wallet"></span></div>
                                    <div>
                                        <span class="d-block h6 font-weight-normal">
                                            내 계정 총 매출
                                        </span>
                                        <h5 class="h3 font-weight-bold mb-1" id="totalProfit"></h5>
                                        <div class="small mt-2">                               
                                            <span class="fas fa-angle-up text-success"></span>                                 
                                        </div>
                                    </div>
                                  </div>
                               </div>
                            </div>
                            <div class="col-12 col-sm-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-block d-md-flex align-items-center">
                                        <div class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0"><span class="fas fa-file-invoice-dollar"></span></div>
                                        <div>
                                            <span class="d-block h6 font-weight-normal">
                                                내 계정 순이익
                                            </span>
                                            <h5 class="h3 font-weight-bold mb-1" id="totalNetProfit"></h5>
                                            <div class="small mt-2">                               
                                                <span class="fas fa-angle-up text-success"></span>                                   
                                                전월 대비 <span class="text-success font-weight-bold">16.4%</span>증가 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <div class="col-12 mb-4"> 
                          	<div class="row">
                            	<div class="col-12">
                                	<div class="card border-light">
                                    	 <div id="container"></div>
                                	</div>
                            	</div>
                        	</div>
                        </div>
                        <div class="col-12 mb-4"> 
                          	<div class="row">
                            	<div class="col-12">
                                	<div class="card border-light">
                                    	 <div id="container2"></div>
                                	</div>
                            	</div>
                        	</div>
                        </div>
                        </div>
                    </div>
                </div>
        	</div>
    	</section>
<script type="text/javascript">
$(function(){
	function rangeDate(term){
		var d = new Date();
		var result = '';
		var year = d.getFullYear();
		var month = d.getMonth()+1-term;
		if (month < 1){
			var year = d.getFullYear()-1;
			month = 13-term;
		}
		result = year + '-' + month;
		return result;
	}
	
	var profitXData1=rangeDate(3);
	var profitXData2=rangeDate(2);
	var profitXData3=rangeDate(1);
	var profitXData4=rangeDate(0);
	console.log(profitXData1);
	
	var totalProfit1 = ${profitMap["0"].totalProfitPerMonth};
	var totalNet1 = ${profitMap["0"].totalNetProfitPerMonth*9};
	var totalProfit2 = ${profitMap["1"].totalProfitPerMonth};
	var totalNet2 = ${profitMap["1"].totalNetProfitPerMonth*9};
	var totalProfit3 = ${profitMap["2"].totalProfitPerMonth};
	var totalNet3 = ${profitMap["2"].totalNetProfitPerMonth*9};
	var totalProfit4 = ${profitMap["3"].totalProfitPerMonth};
	var totalNet4 = ${profitMap["3"].totalNetProfitPerMonth*9};
	
	
	function AddComma(num){
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
	var totalprofit = totalProfit1+totalProfit2+totalProfit3+totalProfit4;
	totalprofit = AddComma(totalprofit);
	var totalnetprofit = (totalNet1+totalNet2+totalNet3+totalNet4)*9;
	totalnetprofit = AddComma(totalnetprofit);

	$('#totalProfit').text(totalprofit+"원");
	$('#totalNetProfit').text(totalnetprofit+"원");


	Highcharts.chart('container', {

	    title: {
	        text: '나의 매출추이'
	    },
	    
	    yAxis: {
	        title: {
	            text: '매출액'
	        }
	    },

	    xAxis: {
	    	 categories: [profitXData1 , profitXData2, profitXData3, profitXData4 ]
	    },

	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },

	     /* plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: true
	            },
	            pointStart: 08
	        }
	    },  */

	    series: [{
	        name: '누적 매출 추이',
	        data: [totalProfit1, totalProfit1+totalProfit2, totalProfit1+totalProfit2+totalProfit3,
	        	totalProfit1+totalProfit2+totalProfit3+totalProfit4]
	    }, {
	        name: '누적 순이익 추이',
	        data: [totalNet1, totalNet1+totalNet2, totalNet1+totalNet2+totalNet3, totalNet1+totalNet2+totalNet3+totalNet4]
	    }],

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 1200
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }

	});
	
	Highcharts.chart('container2', {

	    title: {
	        text: '나의 월별 매출추이'
	    },
	    
	    yAxis: {
	        title: {
	            text: '매출액'
	        }
	    },

	    xAxis: {
	    	 categories: [profitXData1 , profitXData2, profitXData3, profitXData4 ]
	    },

	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },

	     /* plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: true
	            },
	            pointStart: 08
	        }
	    },  */

	    series: [{
	        name: '월별 매출 추이',
	        data: [totalProfit1, totalProfit2, totalProfit3, totalProfit4]
	    },{
	        name: '월별 순이익 추이',
	        data: [totalNet1, totalNet2, totalNet3, totalNet4]
	    }],

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 1200
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }

	});
});

</script>
<script src="https://code.highcharts.com/highcharts.src.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>