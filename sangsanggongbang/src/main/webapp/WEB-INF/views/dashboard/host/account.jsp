<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../../inc/top.jsp"%>
<%@ include file="leftNavi.jsp"%>


                    <div class="col-12 col-lg-8">
                        <div class="row">
                            <div class="col-12 col-sm-6 mb-4">
                               <div class="card border-light">
                                  <div class="card-body d-block d-md-flex align-items-center">
                                    <div class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0"><span class="fas fa-wallet"></span></div>
                                    <div>
                                        <span class="d-block h6 font-weight-normal">
                                            Global Budget 
                                        </span>
                                        <h5 class="h3 font-weight-bold mb-1">$25,370.00</h5>
                                        <div class="small mt-2">                               
                                            <span class="fas fa-angle-up text-success"></span>                                   
                                            <span class="text-success font-weight-bold">18.2%</span> higher vs previous month
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
                                                Sales 
                                            </span>
                                            <h5 class="h3 font-weight-bold mb-1">$5,220.00</h5>
                                            <div class="small mt-2">                               
                                                <span class="fas fa-angle-up text-success"></span>                                   
                                                <span class="text-success font-weight-bold">4.2%</span> higher vs previous month
                                            </div>
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
                                        <div class="ct-chart-5 ct-golden-section ct-series-e"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-flex flex-row align-items-center flex-0 border-bottom">
                                        <div class="d-block">
                                            <div class="h6 font-weight-normal text-gray mb-2">Revenues</div>
                                            <h2 class="h3">10,567</h2>
                                            <div class="small mt-2">                               
                                                <span class="fas fa-angle-up text-success"></span>                                   
                                                <span class="text-success font-weight-bold">$10.57%</span>
                                            </div>
                                        </div>
                                        <div class="d-block ml-auto">
                                            <div class="d-flex align-items-center text-right mb-2">
                                                <span class="shape-xs rounded-circle bg-dark mr-2"></span>
                                                <span class="font-weight-normal small">Meeting Space</span>
                                            </div>
                                            <div class="d-flex align-items-center text-right mb-2">
                                                <span class="shape-xs rounded-circle bg-tertiary mr-2"></span>
                                                <span class="font-weight-normal small">Loft Space</span>
                                            </div>
                                            <div class="d-flex align-items-center text-right mb-2">
                                                <span class="shape-xs rounded-circle bg-primary mr-2"></span>
                                                <span class="font-weight-normal small">Private Space</span>
                                            </div>
                                            <div class="d-flex align-items-center text-right">
                                                <span class="shape-xs rounded-circle bg-success mr-2"></span>
                                                <span class="font-weight-normal small">Conference Space</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body p-2">
                                        <div class="ct-chart-7 ct-golden-section ct-series-e"></div>
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
        </div>
    </main>
<%@ include file="../../inc/bottom.jsp"%>