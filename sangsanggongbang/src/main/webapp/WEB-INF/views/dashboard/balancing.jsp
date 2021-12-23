<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"  %>

        <div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                    
                    <div class="col-12 col-md-4 d-none d-lg-block">
    <!-- Navigation -->
    <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
                <img src="${pageContext.request.contextPath}/resources/assets/img/team/profile-picture-4.jpg" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">Neil Sims</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
                <a href="./account.html" class="d-flex list-group-item list-group-item-action ">Overview <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./settings.html" class="d-flex list-group-item list-group-item-action ">Settings<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./my-items.html" class="d-flex list-group-item list-group-item-action ">My Items<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./security.html" class="d-flex list-group-item list-group-item-action ">Security<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./billing.html" class="d-flex list-group-item list-group-item-action  active " style="font-weight: bold;">결제내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./messages.html" class="d-flex list-group-item list-group-item-action  border-0">Messages<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
            </div>
        </div>
    </div>
</div>
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
                               <div class="card border-light text-center py-4 mb-4">
                                  <div class="card-body">
                                        <h2 class="display-4 mb-3">Spaces<span class="pixel-pro-badge subscription-badge bg-secondary font-weight-bolder text-white">PRO</span></h2>
                                        <p class="my-4">Next payment of <span class="font-weight-bold">$36 (yearly)</span> occurs on August 13, 2020.</p>
                                        <a class="btn btn-sm btn-dark" href="#">Cancel subscription</a>
                                  </div>
                               </div>
                                <form action="#" method="post" class="card border-light p-3 mb-4">
                                    <div class="card-header border-light p-3 mb-4 mb-md-0">
                                        <h3 class="h5 mb-0">Billing details</h3> 
                                    </div>
                                    <div class="card-body p-0 p-md-4">
                                        <div class="row justify-content-center">
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputEmail1">Email address *</label>
                                                    <input type="email" class="form-control" placeholder="example@company.com" id="cartInputEmail1" aria-describedby="cartInputEmail1" required>
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!--Form-->
                                                <div class="form-group">
                                                    <label class="my-1 mr-2" for="cartFormCustomSelectPref1">Country</label>
                                                    <select class="custom-select my-1 mr-sm-2" id="cartFormCustomSelectPref1">
                                                        <option selected>Choose...</option>
                                                        <option value="1">United States</option>
                                                        <option value="2">Germany</option>
                                                        <option value="3">Canada</option>
                                                    </select>
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputAdress1">Adress</label>
                                                    <input type="text" placeholder="Texas" class="form-control" id="cartInputAdress1" aria-describedby="cartInputAdress1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputCity1">City</label>
                                                    <input type="text" placeholder="Dallas" class="form-control" id="cartInputCity1" aria-describedby="cartInputCity1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputZip1">Zip/Postal code</label>
                                                    <input type="number" placeholder="123456" class="form-control" id="cartInputZip1" aria-describedby="cartInputZip1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputCompany1">Company Name *</label>
                                                    <input type="text" placeholder="Company LLC" class="form-control" id="cartInputCompany1" aria-describedby="cartInputCompany1" required>
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputVAT1">VAT ID</label>
                                                    <input type="number" placeholder="NL232142" class="form-control" id="cartInputVAT1" aria-describedby="cartInputVAT1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <!-- Form -->
                                                <div class="form-group mb-4">
                                                    <label for="cartInputPhone1">Phone Number</label>
                                                    <input type="number" placeholder="+(12)345 6789" class="form-control" id="cartInputPhone1" aria-describedby="cartInputPhone1">
                                                </div>
                                                <!-- End of Form -->
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary btn-dark mt-2 animate-up-2" type="submit">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form action="#" method="post" class="card border-light p-3 mb-4">
                                    <div class="card-header border-light p-3 mb-4 mb-md-0">
                                        <h3 class="h5 mb-0">Card details</h3> 
                                    </div>
                                    <div class="card-body p-0 p-md-4">
                                        <div class="row justify-content-center">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label class="form-label" for="cardNameLabel"><span class="small text-dark">(Full name as displayed on card)</span></label>
                                                    <div class="input-group mb-4">
                                                        <input class="form-control" id="cardNameLabel" placeholder="Name on Card *" type="text" required=""> </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="cardNumberLabel">Card Number <span class="text-danger">*</span></label>
                                                    <div class="input-group mb-4">
                                                        <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-credit-card"></span></span> </div>
                                                        <input class="form-control" id="cardNumberLabel" placeholder="0000 0000 0000 0000" type="number" required=""> </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                    <label for="cardCVCLabel">CVC <span class="text-danger">*</span></label>
                                                    <input class="form-control" id="cardCVCLabel" placeholder="CVC" type="number" required=""> </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                    <label for="cardExpiryLabel">Card Expiry <span class="text-danger">*</span></label>
                                                    <div class="input-group mb-4">
                                                        <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-calendar-alt"></span></span> </div>
                                                        <input class="form-control" id="cardExpiryLabel" placeholder="MM / YY" type="number" required=""> </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary btn-dark mt-2 animate-up-2" type="submit">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </form> 
                                <div class="card card-body bg-white border-light p-0 p-md-4">
                                    <div class="card-header border-bottom p-3">
                                        <h3 class="h5">Order History</h3>
                                        <p class="small pr-lg-10">This is a list of devices that have logged into your account. Revoke any sessions that you do not recognize.</p>
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