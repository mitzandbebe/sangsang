<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../inc/top_host.jsp" %>

 <section class="section section-header bg-primary overlay-primary text-white pb-8 pb-lg-10" data-background="${pageContext.request.contextPath }/resources/assets/img/hostInfoDefault.jpg" style="background-color: #679093; background-repeat:no-repeat; background-size: cover;">
            <div class="container">
               <div class="row justify-content-center">
                  <div class="col-12 col-md-12 text-center">
                        <h1 class="display-2 mb-4">늘솜님의 재능을 공유하고 수익을 창출하세요!</h1>
                        <p class="lead mb-4 text-muted">상상공방은 원데이 클래스 매칭을 통해 취미활동의 다양화와 재능 공유를 통한 수익창출을 목표로 하고 있습니다.</p>
                        
                        <p class="text-center" style="margin-top: 300px">
                        	<span>이미 상상공방 계정이 있습니다.</span>
                            <a href="<c:url value='/host/hostLogin'/>" class="btn btn-primary animate-up-2" >로그인 후 늘솜 지원하기<span class="ml-2"><span class="fas fa-arrow-right"></span></span></a>
                            <span style="margin-left: 100px">상상공방이 처음이시라면</span>
                            <a href="<c:url value='/host/hostRegister'/>" class="btn btn-primary animate-up-2" >늘솜 계정생성하기<span class="ml-2"><span class="fas fa-arrow-right"></span></span></a>
                        </p>
                        <p class="text-center">
                        	
                        </p>
                    </div>
               </div>
            </div>
            <figure class="position-absolute bottom-0 left-0 w-100 d-none d-md-block mb-n2">
                <svg class="fill-white" enable-background="new 0 0 1504 131.3" viewBox="0 0 1504 131.3" xmlns="http://www.w3.org/2000/svg"><path d="m877.8 85c139.5 24.4 348 33.5 632.2-48.2-.2 32.5-.3 65-.5 97.4-505.9 0-1011.6 0-1517.5 0 0-33.3 0-66.7 0-100.1 54.2-11.4 129.5-23.9 220-28.2 91-4.3 173.6 1 307.4 18.6 183.2 24.2 295.2 49.4 358.4 60.5z"/></svg>
            </figure>
        </section>
        <!-- End of Hero section -->
        <!-- Section -->
        <section class="section section-lg">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 pr-lg-4">
                        <h2 class="display-2 font-weight-light mb-5">상상공방의<br> <span class="font-weight-bold">늘솜</span>에 지원<br>하신다면?</h2>
                    </div>
                    <div class="col-md-7">
                        <p class="lead"><span class="font-weight-bold">상상공방</span>은 원데이 클래스 매칭의 허브로서 , 늘솜님들의 재능을 <br>수익으로 창출할 수 있는 기회를 제공합니다. 타 사이트 대비 가장 <br>저렴한 수수료 책정으로 늘솜님들의 수익을 극대화하고자 하며, 이를 <br>통해 많은 원데이 클래스 개설의 기회를 늘리고 늘찬님들의 
                        취미활동이 더욱 다양화될 수 있도록 노력하고 있습니다. <br>
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- End of section -->
        <!-- Section -->
        <section class="section section-lg pt-0">
        	<div class="col-12 col-md-12 text-center">
	            <h2><span class="font-weight-bold">늘솜회원으로 수익을 창출하려면 </span></h2>
            </div>
            <div class="container">
                <div class="row d-none d-md-block">
                    <div class="col">
                        <div class="card card-body bg-soft p-0 p-lg-3">
                            <div class="card-group bg-soft">
                                <div class="card mb-0 bg-soft">
                                    <div class="card-body text-center">
                                        <div class="icon icon-primary">
                                            <span class="fas fa-user-check"></span>
                                        </div>
                                        <!-- Heading -->
                                        <h3 class="font-weight-normal mt-3 mb-0">
                                            <span class="counter text-dark mr-1">늘솜</span>지원하기
                                        </h3>
                                        <!-- Text -->
                                        <p class="text-muted mb-0">
                                            간단한 정보입력으로 <br>늘솜회원이 되어보세요.
                                        </p>
                                    </div>
                                </div>
                                <div class="icon icon-primary">
                                	<span class="fas fa-angle-double-right"></span>
                                </div>
                                <div class="card mb-0 bg-soft border-left">
                                    <div class="card-body text-center">
                                        <div class="icon icon-primary">
                                            <span class="fas fa-chalkboard-teacher"></span>
                                        </div>
                                        <!-- Heading -->
                                        <h3 class="font-weight-normal mt-3 mb-0">
                                            <span class="counter text-dark mr-1">클래스</span> 개설
                                        </h3>
                                        <!-- Text -->
                                        <p class="text-muted mb-0">
                                            수익을 창출할 클래스를<br> 개설하세요.
                                        </p>
                                    </div>
                                </div>
                                <div class="icon icon-primary">
                                	<span class="fas fa-angle-double-right"></span>
                                </div>
                                <div class="card mb-0 bg-soft border-left">
                                    <div class="card-body text-center">
                                        <div class="icon icon-primary">
                                            <span class="fas fa-hiking"></span>
                                        </div>
                                        <!-- Heading -->
                                        <h3 class="font-weight-normal mt-3 mb-0">
                                            <span class="counter text-dark mr-1">클래스 진행</span>
                                        </h3>
                                        <!-- Text -->
                                        <p class="text-muted mb-0">
                                            늘찬님들과 함께 클래스를 진행하세요.
                                        </p>
                                    </div>
                                </div>
                                <div class="icon icon-primary">
                                	<span class="fas fa-angle-double-right"></span>
                                </div>
                                <div class="card mb-0 bg-soft border-left">
                                    <div class="card-body text-center">
                                        <div class="icon icon-primary">
                                            <span class="fas fa-coins"></span>
                                        </div>
                                        <!-- Heading -->
                                        <h3 class="font-weight-normal mt-3 mb-0">
                                            <span class="counter text-dark mr-1">정산 신청</span>
                                        </h3>
                                        <!-- Text -->
                                        <p class="text-muted mb-0">
                                            진행이 완료된 클래스를<br>
                                            정산신청하세요.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </section>
                <section>
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
                    <div class="col-12 col-md-12 text-left">
	            		<h2><span class="font-weight-bold">늘솜회원 FAQ </span></h2>
            		</div>
                        <!--Accordion-->
                        <div class="accordion" id="accordionExample1" >
                            <div class="card card-sm card-body border-light mb-0">
                                <a href="#panel-1" data-target="#panel-1" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-1">
                                    <span class="h6 mb-0 font-weight-bold">클래스를 개설하려면 무엇이 필요한가요?</span>
                                    <span class="icon"><span class="fas fa-plus"></span></span>
                                </a>
                                <div class="collapse" id="panel-1">
                                    <div class="pt-3">
                                        <p class="mb-0">
                                            클래스를 개설하기 위해서는 클래스 진행장소(야외활동의 클래스인 경우 또한 정확한 장소정보 필요), 정산금액을 입금받을 본인 명의의 계좌가 필요합니다.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-light mb-0">
                                <a href="#panel-2" data-target="#panel-2" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-1">
                                    <span class="h6 mb-0 font-weight-bold">클래스의 신청은 어떻게 이뤄지나요?</span>
                                    <span class="icon"><span class="fas fa-plus"></span></span>
                                </a>
                                <div class="collapse" id="panel-2">
                                    <div class="pt-3">
                                        <p class="mb-0">
                                            클래스는 늘솜회원님이 개설한 클래스의 날짜와 카테고리 별로 홈페이지에 노출되며, 늘찬 회원님들의 개별적인 신청을 통해 이뤄집니다. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card-sm card-body border-light">
                                <a href="#panel-3" data-target="#panel-3" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-1">
                                    <span class="h6 mb-0 font-weight-bold">정산신청은 어떻게 하나요?</span>
                                    <span class="icon"><span class="fas fa-plus"></span></span>
                                </a>
                                <div class="collapse" id="panel-3">
                                    <div class="pt-3">
                                        <p class="mb-0">
                                            클래스의 진행이 완료되신 후, 정산신청을 하시게 되면 계정 생성 당시 입력하신 계좌로 정산금액이 입금되게 됩니다. 단, 늘찬 회원님들의 지속적인 신고(전문성 부족, 클래스의 일방적인 취소 등)가
                                            접수된 경우 해당 클래스의 정산은 취소됩니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End of Accordion-->
                        <p class="text-center">
                            <span>이미 상상공방 계정이 있습니다.</span>
                            <a href="<c:url value='/host/hostLogin'/>" class="btn btn-primary animate-up-2" >로그인 후 늘솜 지원하기<span class="ml-2"><span class="fas fa-arrow-right"></span></span></a>
                            <span style="margin-left: 100px">상상공방이 처음이시라면</span>
                            <a href="<c:url value='/host/hostRegister'/>" class="btn btn-primary animate-up-2" >늘솜 계정생성하기<span class="ml-2"><span class="fas fa-arrow-right"></span></span></a>
                        </p>
                    </div>
                </div>
            
        </section>
<%@ include file="../inc/bottom_host.jsp" %>