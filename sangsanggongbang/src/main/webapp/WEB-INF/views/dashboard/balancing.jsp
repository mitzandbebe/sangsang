<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"  %>
<%@ include file="leftNavi.jsp"  %>

<div class="col-12 d-lg-none">
    <div class="card bg-white border-light mb-4 mb-lg-5">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-10 d-flex">
                    <a href="./account.html" class="list-group-item list-group-item-action border-0 ">Overview</a>
                    <a href="./settings.html" class="list-group-item list-group-item-action border-0 ">Settings</a>
                    <a href="./my-items.html" class="list-group-item list-group-item-action d-none d-sm-block border-0 ">My Items</a>
                    <a href="./security.html" class="list-group-item list-group-item-action d-none d-md-block border-0 ">Security</a>
                </div>
                <div class="col-2 d-flex justify-content-center">
                    <div class="btn-group dropleft">
                        <button class="btn btn-link dropdown-toggle dropdown-toggle-split mr-2 m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="icon icon-sm">
                                <span class="fas fa-ellipsis-h icon-secondary fa-lg"></span>
                            </span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <div class="dropdown-menu">
                            <a href="./my-items.html" class="list-group-item list-group-item-action d-sm-none border-0 ">My Items</a>
                            <a href="./security.html" class="list-group-item list-group-item-action d-md-none border-0 ">Security</a>
                            <a href="./billing.html" class="list-group-item list-group-item-action border-0  active ">Billing</a>
                            <a href="./messages.html" class="list-group-item list-group-item-action border-0 ">Messages</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                    <div class="col-12 col-lg-8">
                        <div class="row mb-5">
                            <div class="col-12 mb-4">
                               
                                <div class="card card-body bg-white border-light p-0 p-md-4">
                                    <div class="card-header border-bottom p-3">
                                        <h3 class="h5">내 결제내역</h3>
                                        <p class="small pr-lg-10">내 결제내역의 리스트는 클래스 참여여부와 상관없이 결제성공, 취소에 대한 정보를 제공합니다.</p>
                                    </div>
                                    <div class="card-body px-0 pt-0">
                                        <ul class="list-group">
                                            <li class="list-group-item border-bottom">
                                                <div class="row align-items-center">
                                                    <div class="col">                       
                                                        <h3 class="h6 mb-1">
                                                            <a href="./invoice.html">Invoice #120345</a>
                                                        </h3>
                                                        <!-- Text -->
                                                        <small class="text-gray-700">
                                                            Billed August 21, 2019
                                                        </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <button class="btn btn-xs btn-outline-dark">
                                                            Pay now
                                                        </button>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item border-bottom">
                                                <div class="row align-items-center">
                                                    <div class="col">                       
                                                        <h3 class="h6 mb-1">
                                                            <a href="./invoice.html">Invoice #120344</a>
                                                        </h3>
                                                        <!-- Text -->
                                                        <small class="text-gray-700">
                                                            Billed July 21, 2019
                                                        </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <span class="badge badge-pill badge-success">
                                                            <span class="text-uppercase font-weight-bold">Paid</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item border-bottom">
                                                <div class="row align-items-center">
                                                    <div class="col">                       
                                                        <h3 class="h6 mb-1">
                                                            <a href="./invoice.html">Invoice #120343</a>
                                                        </h3>
                                                        <!-- Text -->
                                                        <small class="text-gray-700">
                                                            Billed June 21, 2019
                                                        </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <span class="badge badge-pill badge-success">
                                                            <span class="text-uppercase font-weight-bold">Paid</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
 <%@ include file="../inc/bottom.jsp" %>