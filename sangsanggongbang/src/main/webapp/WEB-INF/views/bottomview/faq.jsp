<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 탑 넣기 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/new_top_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/new_top_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:otherwise>
</c:choose>
<!-- 탑 완료 -->
<!-- Hero -->
        <section class="section-header bg-primary text-white pb-9 pb-lg-12 mb-4 mb-lg-6">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 text-center">
                        <h1 class="display-2 mb-3"><span class="font-weight-bold">자주 묻는 질문</span></h1>
                        <p class="lead">Frequently asked questions</p>
                    </div>
                </div>
            </div>
            <div class="pattern bottom"></div>
        </section>
        <div class="section section-lg pt-0">
            <div class="container mt-n8 mt-lg-n12 z-2">
                <div class="row justify-content-center">
                    <div class="col col-md-10">
                        <!--Accordion-->
                        <div class="accordion border-light">
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-what-is-pixel" data-target="#panel-what-is-pixel" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-what-is-pixel">
                                    <span class="icon-title h6 mb-0 font-weight-bold">
                                    <span class="font-weight-bold">상상공방(SSGB)이란?</span>
                                    </span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-what-is-pixel">
                                    <div class="pt-3">
                                        <p>상상공방(SSGB)은 원데이 클래스를 모아놓은 플랫폼입니다. <br>
                                        사람들을 모아 공예 DIY, 베이킹, 쿠킹, 문화예술, 자기계발, 
                                        뷰티, 여행, 피트니스, 스포츠, 모임, 스토어, 온라인 등의<br> 
                                        원데이 클래스를 함께 즐기고 소통하며 더 행복한 삶을 살 수 있게 도와주는 서비스 플랫폼입니다.<br><br>
                                        인터넷 홈페이지에서 이용 가능합니다.<br><br>
                                        *인터넷 홈페이지 : http://localhost:9091/sangsanggongbang/index<br><br>
                                        상상공방을 통해 지친 일상 속에서 활력을 찾고 일상을 바꾸는 경험을 하시기를 응원합니다.
                                       </p>
                                        <!-- <p>Read more about <a href="./terms.html">terms of service</a>.</p> -->
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-clients" data-target="#panel-clients" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-clients">
                                    <span class="icon-title h6 mb-0 font-weight-bold">
                                    <span class="font-weight-bold">상상공방은 누가 진행하나요?</span></span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-clients">
                                    <div class="pt-3">
                                        <p>
                                        상상공방은 [늘솜]이 진행합니다.<br><br>
                                        상상공방의 [늘솜]은 상상공방을 통해 다양한 원데이 클래스를 진행하는 진행자입니다.<br><br>
                                        상상공방의 [늘솜]은 본인만이 가지고 있는 컨텐츠가 있나면 누구나 신청이 가능합니다.<br>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-demo" data-target="#panel-demo" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-demo">
                                    <span class="icon-title h6 mb-0 font-weight-bold"> 
                                    <span class="font-weight-bold">늘솜과 늘찬은 무엇인가요?</span></span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-demo">
                                    <div class="pt-3">
                                        <p>저희 상상공방은 플랫폼에 올라와 있는 프로그램들을 [상상 클래스] 이라고 칭하고 있습니다.<br><br>
                                        상상공방을 진행하시는 분들을 [늘솜], 참여하시는 분을 [늘찬]이라고 칭하고 있습니다.<br><br>
                                        <참고><br>
                                        - '늘솜'은 순우리말로 '늘 솜씨가 좋은'이라는 뜻이예요.<br>
                                        - '늘차다'라는 말은 '능란하고 재빠르다'는 의미의 형용사로 능력이 있으며 옹골차다는 뜻이에요.
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-money-back" data-target="#panel-money-back" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-money-back">
                                    <span class="icon-title h6 mb-0 font-weight-bold">
                                     <span class="font-weight-bold">비밀번호를 잊어버렸는데 어떻게 찾나요?</span></span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-money-back">
                                    <div class="pt-3">
                                        <p>- 카카오톡 계정 : 카카오톡으로 로그인하기를 통해 바로 연동 및 가입이 되므로 비밀번호를 설정하지 않습니다.<br><br>
											- 이메일 계정 : 로그인 화면에서 [비밀번호를 잊으셨나요?]를 클릭하신 후 가입하신 이메일 주소를 입력하시면 비밀번호를 재설정할 수 있는 이메일을 보내드립니다.<br><br><br>
											만약, 카카오톡 계정을 사용하실 수 없거나 가입하신 이메일 주소가 기억나지 않으시는 경우, 
											재 설정할 수 있는 링크에 오류가 발생한 경우에는 상상공방 고객센터로 문의 주시기 바랍니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-updates" data-target="#panel-updates" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-updates">
                                    <span class="icon-title h6 mb-0 font-weight-bold"> 
                                    <span class="font-weight-bold">회원 정보는 어떻게 변경하나요?</span></span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-updates">
                                    <div class="pt-3">
                                        <p>상단에 있는 [My Page]을 클릭하시면 프로필을 수정하실 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-support" data-target="#panel-support" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-support">
                                    <span class="icon-title h6 mb-0 font-weight-bold">
 									<span class="font-weight-bold">현장에서 결제할 수 있나요?</span></span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-support">
                                    <div class="pt-3">
                                        <p class="mb-0">상상공방은 홈페이지에서만 결제(신청)가 가능하며 현장에서는 결제가 불가합니다. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-soft mb-0">
                                <a href="#panel-copyright" data-target="#panel-copyright" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-copyright">
                                    <span class="icon-title h6 mb-0 font-weight-bold">
                                    <span class="font-weight-bold">이런 상상공방이 있었으면 좋겠어요!</span></span>
                                    <span class="icon"><i class="fas fa-plus"></i></span>
                                </a>
                                <div class="collapse" id="panel-copyright">
                                    <div class="pt-3">
                                        <p class="mb-0">오픈되었으면 하는 상상클래스에 대한 의견을 고객센터로 보내주세요!<br>
														늘찬님의 의견을 발 빠르게 반영하여 더욱더 알차고 재밌는 상상공방을 준비하겠습니다.<br><br>

														<a href="<c:url value='/bottomview/customerService'/>">>>>>>> 의견내러가기!!</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End of Accordion-->
                    </div>
                </div>
            </div>
        </div>
        <section class="section section-lg pt-0 line-bottom-light">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6 text-center px-4 mb-5">
                        <div class="icon icon-sm icon-shape icon-shape-secondary rounded mb-4">
                            <span class="fas fa-envelope-open-text"></span>
                        </div>
                        <h5 class="mb-3">Email us</h5>
                        <p class="px-5 px-sm-7 px-lg-0">
                            Email us for general queries,<br> including marketing and partnership<br> opportunities.                              
                        </p>
                        <a class="font-weight-bold text-primary" href="mailto:csb9762@gmail.com">csb9762@gmail.com</a>
                    </div>
                    <div class="col-12 col-lg-6 text-center px-4 mb-5">
                        <div class="icon icon-sm icon-shape icon-shape-secondary rounded mb-4">
                            <span class="fas fa-phone-volume"></span>
                        </div>
                        <h5 class="mb-3">Call us</h5>
                        <p class="px-5 px-sm-7 px-lg-0">
                            Call us,<br> to speak to a member of our team.<br>We are always happy to help you.                             
                        </p>
                        <a class="font-weight-bold text-primary" href="#">010-3673-0143</a>
                    </div>
                   <!--  <div class="col-12 col-lg-4 text-center px-4">
                        <div class="icon icon-sm icon-shape icon-shape-secondary rounded mb-4">
                            <span class="fab fa-slack"></span>
                        </div>
                        <h5 class="mb-3">Slack</h5>
                        <p class="px-5 px-sm-7 px-lg-0">
                            Join our Slack community to chat with us and hundreds of Dovetail users.                           
                        </p>
                        <a class="btn btn-sm btn-outline-primary" href="#">
                            Join our Slack
                            <span class="fas fa-long-arrow-alt-right ml-2"></span>
                        </a>
                    </div> -->
                </div>
            </div>
        </section>

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
<!-- 바텀 완료 -->
   