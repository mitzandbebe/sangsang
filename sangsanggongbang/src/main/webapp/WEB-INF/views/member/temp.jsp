<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
                <img src="../../assets/img/team/profile-picture-4.jpg" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">Neil Sims</h2>
        </div>
    </div>
</div>
<div class="col-12 d-lg-none">
    <div class="card bg-white border-light mb-4 mb-lg-5">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-10 d-flex">
                    <a href="./account.html" class="list-group-item list-group-item-action border-0 ">Overview</a>
                    <a href="./settings.html" class="list-group-item list-group-item-action border-0  active ">Settings</a>
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
                            <a href="./billing.html" class="list-group-item list-group-item-action border-0 ">Billing</a>
                            <a href="./messages.html" class="list-group-item list-group-item-action border-0 ">Messages</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-lg-8">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card card-body bg-white border-light mb-4">
                                    <h2 class="h5 mb-4">General information</h2>
                                    <form>
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
				                                    <label for="exampleInputIcon4">아이디(이메일)</label>
				                                    <div class="input-group mb-4">
				                                        <div class="input-group-prepend">
				                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
				                                        </div>
					                                        <input name="mId" readonly="readonly" class="form-control" id="exampleInputIcon4" type="text" aria-label="email adress" value="${cookie.ck_userid.value }">
					                                    </div>
					                                </div>
		                                            <div class="col-md-6 mb-3">
		                                                <div class="form-group">
		                                                    <label for="last_name">Last Name</label>
		                                                    <input class="form-control" id="last_name" type="text" placeholder="Neil">
		                                                </div>
		                                            </div>
                                        		</div>
                                        		<div class="row align-items-center">
	                                            	<div class="col-md-6 mb-3">
	                                                	<div class="form-group">
					                                        <label for="mName">이름</label>
					                                        <div class="input-group mb-4">
					                                            <input name ="mName" class="form-control" id="mName" placeholder="성명" type="text" required>
					                                        </div>
					                                    </div>
	                                            	</div>
		                                            <div class="col-md-6 mb-3">
		                                                <div class="form-group">
					                                        <label for="mName">닉네임</label>
					                                        <div class="input-group mb-4">
					                                            <input name ="mNickname" class="form-control" id="mNickname" placeholder="닉네임을 입력해주세요." type="text" required>
					                                        </div>
					                                    </div>
		                                            </div>
                                        		</div>
		                                        <div class="row">
		                                            <div class="col-md-6 mb-3">
		                                                <div class="form-group">
					                                        <label for="mName">핸드폰번호</label>
					                                        <div class="input-group mb-4">
					                                            <input name ="phone" class="form-control" id="phone" placeholder="휴대폰 번호를 입력해주세요.(-제외)" maxlength="11" type="text" style = "width: 50px" required>
					                                        </div>
					                                    </div>
		                                            </div>
		                                            <div class="col-md-6 mb-3">
		                                                <div class="form-group">
					                                        <label for="mName">생년월일</label>
					                                        <div class="input-group mb-4">
					                                            <input name ="mNickname" class="form-control" id="mNickname" placeholder="생년월일을 입력하세요.예)950720" type="text" required>
					                                        </div>
					                                    </div>
		                                            </div>
		                                        </div>
                                        		<h2 class="h5 my-4">주소</h2>
                                        		<div class="row">
                                            		<div class="col-sm-9 mb-3">
                                                		<div class="form-group">
					                                        <label for="mName">우편번호 &nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-sm btn-primary" onclick="kakaopost()" style="float: right;">우편번호 찾기</button></label>
					                                        <div class="input-group mb-4">
					                                           	<input name ="mZipcode" class="form-control" id="zipcode" readonly="readonly" placeholder="우편번호를 검색하세요." type="text" required>
					                                        </div>
					                                    </div>
                                            		</div>
                                            		<div class="col-sm-3 mb-3">
                                                		<div class="form-group">
					                                        <label for="mName">주소</label>
					                                        <div class="input-group mb-4">
					                                           <input name ="mAddress" class="form-control" id="address" readonly="readonly" placeholder="주소를 입력하세요." type="text" required>
					                                        </div>
					                                    </div>
                                            		</div>
                                            		<div class="col-sm-3 mb-3">
                                                		<div class="form-group">
					                                        <label for="mName">상세주소</label>
					                                        <div class="input-group mb-4">
					                                        	<input name ="mAddressDetail" class="form-control" id="addressDetail"  placeholder="상세주소를 입력하세요." type="text" required>
					                                        </div>
					                                    </div>
                                            		</div>
                                        		</div>
                                        <div class="mt-3">
                                            <button type="submit" class="btn btn-primary">Save All</button>
                                        </div>
                                       </div>
                                    </form>
                                </div>
                             </div>
						</div>
					</div>
				</div>
