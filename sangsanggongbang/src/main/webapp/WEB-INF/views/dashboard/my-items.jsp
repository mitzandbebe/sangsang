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
                    <a href="./my-items.html" class="list-group-item list-group-item-action d-none d-sm-block border-0  active ">My Items</a>
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
                            <a href="./my-items.html" class="list-group-item list-group-item-action d-sm-none border-0  active ">My Items</a>
                            <a href="./security.html" class="list-group-item list-group-item-action d-md-none border-0 ">Security</a>
                            <a href="./billing.html" class="list-group-item list-group-item-action border-0 ">Billing</a>
                            <a href="./messages.html" class="list-group-item list-group-item-action border-0 ">Messages</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                    <div class="col-12 col-lg-8">
                        <div class="row justify-content-center">
                            <div class="col-12 col-sm-10 col-md-6 col-lg-12">
                                <a href="<c:url value='/detail'/>" class="btn btn-outline-secondary btn-block mb-4 py-4">
                                    <span class="mr-2"><span class="fas fa-plus"></span></span>Submit New Item
                                </a>
                                <div class="card border-light mb-4">
                                   <div class="row no-gutters align-items-center">
                                      <div class="col-12 col-lg-6 col-xl-4">
                                         <a href="<c:url value='/detail'/>">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/meeting-office.jpg" alt="private office" class="card-img p-2 rounded-xl">
                                         </a>
                                      </div>
                                      <div class="col-12 col-lg-6 col-xl-8">
                                         <div class="card-body py-lg-0">
                                            <div class="d-flex no-gutters align-items-center mb-3">
                                                <div class="col text-left">
                                                    <ul class="list-group mb-0">
                                                        <li class="list-group-item small p-0"><span class="fas fa-medal text-tertiary mr-2"></span>Promoted until: 12 June</li>
                                                    </ul>
                                                    <div class="modal fade bd-example-modal-lg" id="modal-notification" tabindex="-1" role="dialog" aria-labelledby="modal-notification" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                            <div class="modal-content bg-white px-0">
                                                                <div class="modal-header">
                                                                    <h2 class="h5 mb-3">Collaborative Workspace</h2>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">Ã</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="col">
                                                                            <h2 class="h4">Views</h2>
                                                                        </div>
                                                                        <div class="col-3">
                                                                            <div class="form-group">
                                                                                <select class="custom-select" id="exampleFormControlSelect2">
                                                                                    <option>15 days</option>
                                                                                    <option>30 days</option>
                                                                                    <option>60 days</option>
                                                                                    <option>90 days</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="ct-chart-statistics ct-golden-section ct-series-a"></div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-sm btn-secondary">Go to Dashboard</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col text-right">
                                                    <div class="btn-group">
                                                        <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <span class="icon icon-sm">
                                                                <span class="fas fa-ellipsis-h icon-secondary"></span>
                                                            </span>
                                                            <span class="sr-only">Toggle Dropdown</span>
                                                        </button>
                                                        <div class="dropdown-menu">
                                                            <a class="dropdown-item" href="./edit-item.html"><span class="fas fa-edit mr-2"></span>
                                                                Edit Item</a>
                                                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"
                                                                    aria-hidden="true"></span>
                                                                Disable</a>
                                                            <a class="dropdown-item" data-toggle="modal" data-target="#modal-notification"><span class="fas fa-chart-line mr-2"></span>Statistics</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="../single-space.html">
                                               <h2 class="h5">Collaborative Workspace</h2>
                                            </a>
                                            <div class="col d-flex pl-0">
                                                <span class="text-success font-small mr-3"><span class="fas fa-check-circle mr-2"></span>Active</span>
                                                <span class="text-muted font-small mr-3"><span class="fas fa-eye mr-2"></span>680</span>
                                                <span class="text-muted font-small mr-3"><span class="far fa-heart mr-2"></span>10</span>
                                                <a class="font-small text-dark" href="./messages.html"><span class="fas fa-envelope mr-2"></span>8</a>
                                            </div>
                                         </div>
                                      </div>
                                   </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-10 col-md-6 col-lg-12">
                            <div class="card border-light mb-4">
                                <div class="row no-gutters align-items-center">
                                    <div class="col-12 col-lg-6 col-xl-4">
                                        <a href="../single-space.html">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/spaces/meeting.jpg" alt="private office" class="card-img p-2 rounded-xl">
                                        </a>
                                    </div>
                                    <div class="col-12 col-lg-6 col-xl-8">
                                        <div class="card-body py-lg-0">
                                        <div class="d-flex no-gutters align-items-center mb-3">
                                            <div class="col text-left">
                                                <ul class="list-group mb-0">
                                                    <li class="list-group-item small p-0"><span class="fas fa-medal text-tertiary mr-2"></span>Promoted until: 12 June</li>
                                                </ul>
                                                <div class="modal fade bd-example-modal-lg" id="modal-notification-2" tabindex="-1" role="dialog" aria-labelledby="modal-notification" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                        <div class="modal-content bg-white px-0">
                                                            <div class="modal-header">
                                                                <h2 class="h5 mb-3">Meeting Workspace</h2>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">Ã</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="col">
                                                                        <h2 class="h4">Views</h2>
                                                                    </div>
                                                                    <div class="col-3">
                                                                        <div class="form-group">
                                                                            <select class="custom-select" id="exampleFormControlSelect3">
                                                                                <option>15 days</option>
                                                                                <option>30 days</option>
                                                                                <option>60 days</option>
                                                                                <option>90 days</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="ct-chart-statistics-2 ct-golden-section ct-series-b"></div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-sm btn-secondary">Go to Dashboard</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col text-right">
                                                <div class="btn-group">
                                                    <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <span class="icon icon-sm">
                                                            <span class="fas fa-ellipsis-h icon-secondary"></span>
                                                        </span>
                                                        <span class="sr-only">Toggle Dropdown</span>
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="./edit-item.html"><span class="fas fa-edit mr-2"></span>
                                                            Edit Item</a>
                                                        <a class="dropdown-item text-success" href="#"><span class="fas fa-plus mr-2"
                                                                aria-hidden="true"></span>
                                                            Publish</a>
                                                            <a class="dropdown-item" data-toggle="modal" data-target="#modal-notification-2"><span class="fas fa-chart-line mr-2"></span>Statistics</a>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="../single-space.html">
                                            <h2 class="h5">Meeting Workspace</h2>
                                        </a>
                                        <div class="col d-flex pl-0">
                                            <span class="text-danger font-small mr-3"><span class="fas fa-times-circle mr-2"></span>Disabled</span>
                                            <span class="text-muted font-small mr-3"><span class="fas fa-eye mr-2"></span>3880</span>
                                            <span class="text-muted font-small mr-3"><span class="far fa-heart mr-2"></span>30</span>
                                            <a class="font-small text-dark" href="./messages.html"><span class="fas fa-envelope mr-2"></span>80</a>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <div class="col-12 col-sm-10 col-md-6 col-lg-12">
                                <div class="card border-light mb-4">
                                   <div class="row no-gutters align-items-center">
                                      <div class="col-12 col-lg-6 col-xl-4">
                                         <a href="../single-space.html">
                                         <img src="${pageContext.request.contextPath}/resources/assets/img/private-office.jpg" alt="private office" class="card-img p-2 rounded-xl">
                                         </a>
                                      </div>
                                      <div class="col-12 col-lg-6 col-xl-8">
                                         <div class="card-body py-lg-0">
                                            <div class="d-flex no-gutters align-items-center mb-3">
                                                <div class="col text-left">
                                                    <ul class="list-group mb-0">
                                                        <li class="list-group-item small p-0"><span class="fas fa-medal text-tertiary mr-2"></span>Promoted until: 12 June</li>
                                                    </ul>
                                                    <div class="modal fade bd-example-modal-lg" id="modal-notification-3" tabindex="-1" role="dialog" aria-labelledby="modal-notification" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                            <div class="modal-content bg-white px-0">
                                                                <div class="modal-header">
                                                                    <h2 class="h5 mb-3">Private Office</h2>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">Ã</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="col">
                                                                            <h2 class="h4">Views</h2>
                                                                        </div>
                                                                        <div class="col-3">
                                                                            <div class="form-group">
                                                                                <select class="custom-select" id="exampleFormControlSelect4">
                                                                                    <option>15 days</option>
                                                                                    <option>30 days</option>
                                                                                    <option>60 days</option>
                                                                                    <option>90 days</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="ct-chart-statistics-3 ct-golden-section ct-series-c"></div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-sm btn-secondary">Go to Dashboard</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col text-right">
                                                    <div class="btn-group">
                                                        <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <span class="icon icon-sm">
                                                                <span class="fas fa-ellipsis-h icon-secondary"></span>
                                                            </span>
                                                            <span class="sr-only">Toggle Dropdown</span>
                                                        </button>
                                                        <div class="dropdown-menu">
                                                            <a class="dropdown-item" href="./edit-item.html"><span class="fas fa-edit mr-2"></span>
                                                                Edit Item</a>
                                                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"
                                                                    aria-hidden="true"></span>
                                                                Disable</a>
                                                                <a class="dropdown-item" data-toggle="modal" data-target="#modal-notification-3"><span class="fas fa-chart-line mr-2"></span>Statistics</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="../single-space.html">
                                               <h2 class="h5">Pivate Workspace</h2>
                                            </a>
                                            <ul class="list-group mb-3">
                                                <li class="list-group-item small p-0"><span class="fas fa-medal text-tertiary mr-2"></span>Promoted until: 12 June</li>
                                            </ul>
                                            <div class="col d-flex pl-0">
                                                <span class="text-success font-small mr-3"><span class="fas fa-check-circle mr-2"></span>Active</span>
                                                <span class="text-muted font-small mr-3"><span class="fas fa-eye mr-2"></span>680</span>
                                                <span class="text-muted font-small mr-3"><span class="far fa-heart mr-2"></span>10</span>
                                                <a class="font-small text-dark" href="./messages.html"><span class="fas fa-envelope mr-2"></span>8</a>
                                            </div>
                                         </div>
                                      </div>
                                   </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-10 col-md-6 col-lg-12">
                                <div class="card border-light mb-4">
                                   <div class="row no-gutters align-items-center">
                                      <div class="col-12 col-lg-6 col-xl-4">
                                         <a href="<c:url value='/class/detail'/>">
                                         <img src="${pageContext.request.contextPath}/resources/assets/img/meeting-office.jpg" alt="private office" class="card-img p-2 rounded-xl">
                                         </a>
                                      </div>
                                      <div class="col-12 col-lg-6 col-xl-8">
                                         <div class="card-body py-lg-0">
                                            <div class="d-flex no-gutters align-items-center mb-3">
                                                <div class="col text-left">
                                                    <ul class="list-group mb-0">
                                                        <li class="list-group-item small p-0"><span class="fas fa-medal text-tertiary mr-2"></span>Promoted until: 12 June</li>
                                                    </ul>
                                                    <div class="modal fade bd-example-modal-lg" id="modal-notification-4" tabindex="-1" role="dialog" aria-labelledby="modal-notification" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                            <div class="modal-content bg-white px-0">
                                                                <div class="modal-header">
                                                                    <h2 class="h5 mb-3">Collaborative Workspace</h2>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">Ã</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="col">
                                                                            <h2 class="h4">Views</h2>
                                                                        </div>
                                                                        <div class="col-3">
                                                                            <div class="form-group">
                                                                                <select class="custom-select" id="exampleFormControlSelect1">
                                                                                    <option>15 days</option>
                                                                                    <option>30 days</option>
                                                                                    <option>60 days</option>
                                                                                    <option>90 days</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="ct-chart-statistics-4 ct-golden-section ct-series-d"></div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-sm btn-secondary">Go to Dashboard</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col text-right">
                                                    <div class="btn-group">
                                                        <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <span class="icon icon-sm">
                                                                <span class="fas fa-ellipsis-h icon-secondary"></span>
                                                            </span>
                                                            <span class="sr-only">Toggle Dropdown</span>
                                                        </button>
                                                        <div class="dropdown-menu">
                                                            <a class="dropdown-item" href="./edit-item.html"><span class="fas fa-edit mr-2"></span>
                                                                Edit Item</a>
                                                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"
                                                                    aria-hidden="true"></span>
                                                                Disable</a>
                                                            <a class="dropdown-item " data-toggle="modal" data-target="#modal-notification-4"><span class="fas fa-chart-line mr-2"></span>Statistics</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="../single-space.html">
                                               <h2 class="h5">Collaborative Workspace</h2>
                                            </a>
                                            <ul class="list-group mb-3">
                                                <li class="list-group-item small p-0"><span class="fas fa-medal text-tertiary mr-2"></span>Promoted until: 12 June</li>
                                            </ul>
                                            <div class="col d-flex pl-0">
                                                <span class="text-success font-small mr-3"><span class="fas fa-check-circle mr-2"></span>Active</span>
                                                <span class="text-muted font-small mr-3"><span class="fas fa-eye mr-2"></span>680</span>
                                                <span class="text-muted font-small mr-3"><span class="far fa-heart mr-2"></span>10</span>
                                                <a class="font-small text-dark" href="./messages.html"><span class="fas fa-envelope mr-2"></span>8</a>
                                            </div>
                                         </div>
                                      </div>
                                   </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center mt-5">
                                        <li class="page-item">
                                            <a class="page-link" href="#">Previous</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link" href="#">1</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">2</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">3</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">4</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">5</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
 <%@ include file="../inc/bottom.jsp" %>