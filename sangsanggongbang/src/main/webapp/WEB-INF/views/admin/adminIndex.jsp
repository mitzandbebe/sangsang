<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/new_top_admin.jsp"%>
    
<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-3.6.0.min.js'/>"></script>
       <!-- Section -->
        <section class="section-header">
        	<div class="section section-lg bg-soft">
                <div class="row pt-5 pt-md-0">
                	<div class="col-12 col-lg-8" style="margin: 0 auto;">
                        <div class="row">
                            <div class="col-12 col-sm-6 mb-4">
                               <div class="card border-light">
                                  <div class="card-body d-block d-md-flex align-items-center">
                                    <div class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0"><span class="fas fa-wallet"></span></div>
                                    <div>
                                        <span class="d-block h6 font-weight-normal">
                                            상상공방 총 매출
                                        </span>
                                        <h5 class="h3 font-weight-bold mb-1" id="totalProfit"></h5>
                                        <div class="small mt-2">                               
                                            <span class="fas fa-angle-up text-success"></span>                                 
                                            전월 대비 <span class="text-success font-weight-bold">18.2%</span>증가 
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
                                                상상공방 순 이익
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
                         <div class="col-12 col-md-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-flex flex-row align-items-center flex-0 border-bottom">
                                        <div class="d-block">
                                            <div class="h6 font-weight-normal text-gray mb-2">New customers</div>
                                            <h2 class="h3">452</h2>
                                            <div class="small mt-2">                               
                                                <span class="fas fa-angle-up text-success"></span>                                   
                                                <span class="text-success font-weight-bold">18.2%</span>
                                            </div>
                                        </div>
                                        <div class="d-block ml-auto">
                                            <div class="d-flex align-items-center text-right mb-2">
                                                <span class="shape-xs rounded-circle bg-dark mr-2"></span>
                                                <span class="font-weight-normal small">Last month</span>
                                            </div>
                                            <div class="d-flex align-items-center text-right">
                                                <span class="shape-xs rounded-circle bg-tertiary mr-2"></span>
                                                <span class="font-weight-normal small">This month</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body p-2">
                                        <div id="container3"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-flex flex-row align-items-center flex-0 border-bottom">
                                        <div class="d-block" style="width: 70%">
                                            <div class="h6 font-weight-normal text-gray mb-2">최다 생성 클래스 카테고리: <span style=""><strong>${ratioMap['1'].categoryName }</strong></span></div>
                                            <h2 class="h3">${bigOne }개</h2>
                                            <div class="small mt-2">                               
                                                <span class="fas fa-angle-up text-success"></span>                                   
                                                <span class="text-success font-weight-bold">${ratioMap['1'].ratio }%</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="card-body p-2">
                                        <div id="container4"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="card border-light">
                                    <div class="card-body d-flex justify-content-between align-items-center flex-0 border-bottom">
                                        <div class="d-block">
                                            <div class="h6 font-weight-normal text-gray mb-2">Top Locations</div>
                                            <h2 class="h3">Sessions by states</h2>
                                            <div class="small mt-2">                               
                                                <span class="fas fa-angle-up text-success"></span>                                   
                                                <span class="text-success font-weight-bold">38.2%</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <select class="custom-select" id="country">
                                            <option>United States</option>
                                            <option>Germany</option>
                                            <option>France</option>
                                            <option>Spain</option>
                                            <option>Italy</option>
                                            <option>Russia</option>
                                            <option>Japan</option>
                                            <option>India</option>
                                            <option>China</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="card-body p-2">
                                        <div id="vmap" style="width: 100%; height: 400px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <figure class="highcharts-figure">
		    <div id="container"></div>
		    <p class="highcharts-description">
		        Basic line chart showing trends in a dataset. This chart includes the
		        <code>series-label</code> module, which adds a label to each line for
		        enhanced readability.
		    </p>
		</figure>
    </section>
<script src="https://code.highcharts.com/highcharts.src.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>    
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
	var totalNet1 = ${profitMap["0"].totalNetProfitPerMonth};
	var totalProfit2 = ${profitMap["1"].totalProfitPerMonth};
	var totalNet2 = ${profitMap["1"].totalNetProfitPerMonth};
	var totalProfit3 = ${profitMap["2"].totalProfitPerMonth};
	var totalNet3 = ${profitMap["2"].totalNetProfitPerMonth};
	var totalProfit4 = ${profitMap["3"].totalProfitPerMonth};
	var totalNet4 = ${profitMap["3"].totalNetProfitPerMonth};
	
	
	function AddComma(num){
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
	var totalprofit = totalProfit1+totalProfit2+totalProfit3+totalProfit4;
	totalprofit = AddComma(totalprofit);
	var totalnetprofit = totalNet1+totalNet2+totalNet3+totalNet4;
	totalnetprofit = AddComma(totalnetprofit);

	$('#totalProfit').text(totalprofit+"원");
	$('#totalNetProfit').text(totalnetprofit+"원");


	Highcharts.chart('container', {

	    title: {
	        text: '상상공방 매출추이'
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
	        name: '월별 매출 추이',
	        data: [totalProfit1, totalProfit2, totalProfit3, totalProfit4]
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
	        text: '상상공방 매출추이'
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
	        name: '누적 순이익 추이',
	        data: [totalNet1, totalNet1+totalNet2, totalNet1+totalNet2+totalNet3, totalNet1+totalNet2+totalNet3+totalNet4]
	    }, {
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
	
	var categName1= "${ratioMap['1'].categoryName}";
	var categName2= "${ratioMap['2'].categoryName}";
	var categName3= "${ratioMap['3'].categoryName}";
	var categName4= "${ratioMap['4'].categoryName}";
	var categName5= "${ratioMap['5'].categoryName}";
	
	var ratio1 = ${ratioMap["1"].ratio};
	var ratio2 = ${ratioMap["2"].ratio};
	var ratio3 = ${ratioMap["3"].ratio};
	var ratio4 = ${ratioMap["4"].ratio};
	var ratio5 = ${ratioMap["5"].ratio};
	var ratio6 = 100-(ratio1+ratio2+ratio3+ratio4+ratio5);
	
	Highcharts.chart('container4', {
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: null,
	        plotShadow: false,
	        type: 'pie'
	    },
	    title: {
	        text: '카테고리별 클래스 개설 점유율'
	    },
	    tooltip: {
	        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	    },
	    accessibility: {
	        point: {
	            valueSuffix: '%'
	        }
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            dataLabels: {
	                enabled: true,
	                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
	            }
	        }
	    },
	    series: [{
	        name: 'Brands',
	        colorByPoint: true,
	        data: [{
	            name: categName1,
	            y: ratio1,
	            sliced: true,
	            selected: true
	        }, {
	            name: categName2,
	            y: ratio2
	        }, {
	            name: categName3,
	            y: ratio3
	        }, {
	            name: categName4,
	            y: ratio4
	        }, {
	            name: categName5,
	            y: ratio5
	        }, {
	            name: '기타',
	            y: ratio6
	        }]
	    }]
	});
});

</script>

<c:choose>
    <c:when test="${!empty sessionScope.hId }">
        <%@ include file="../inc/bottom_host.jsp"%>
    </c:when>
    <c:when test="${!empty sessionScope.mId }">
        <%@ include file="../inc/bottom.jsp"%>
    </c:when>
    <c:when test="${!empty sessionScope.adId }">
        <%@ include file="../inc/bottom_admin.jsp"%>
    </c:when>
    <c:otherwise>
        <%@ include file="../inc/bottom.jsp"%>
    </c:otherwise>
</c:choose>