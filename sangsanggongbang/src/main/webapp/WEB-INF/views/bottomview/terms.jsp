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
<section
	class="section-header bg-primary text-white pb-9 pb-lg-12 mb-4 mb-lg-6">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-3">
					<span class="font-weight-bold">이용약관</span>
				</h1>
				<p class="lead">Terms of Use</p>
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
						<a href="#panel-what-is-pixel" data-target="#panel-what-is-pixel"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false"
							aria-controls="panel-what-is-pixel"> <span
							class="icon-title h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">제1조 (목적)</span>
						</span> <span class="icon"><i class="fas fa-plus"></i></span>
						</a>
						<div class="collapse" id="panel-what-is-pixel">
							<div class="pt-3">
								<p>이 약관은 주식회사 상상공방(이하 “회사”라 함)가 운영하는 컴퓨터 등 정보통신설비를 이용하여 용역
									등을 거래할 수 있도록 설정하여 제공하는 가상의 영업장(이하 “사이트”라 함)을 통하여 제공하는 인터넷 전자상거래
									관련 서비스(이하 “서비스”라 함)와 관련하여 회사와 늘찬의 권리, 의무, 책임사항을 규정함을 목적으로 합니다.
									또한 본 약관은 유무선 PC통신, 스마트폰(아이폰, 안드로이드폰 등) 어플리케이션 및 모바일 웹 등을 이용하는
									전자상거래 등에 대해서도 그 성질에 반하지 않는 한 준용됩니다.</p>
								<!-- <p>Read more about <a href="./terms.html">terms of service</a>.</p> -->
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-soft mb-0">
						<a href="#panel-clients" data-target="#panel-clients"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-clients">
							<span class="icon-title h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">제2조 (용어의 정의)</span></span> <span class="icon"><i
								class="fas fa-plus"></i></span>
						</a>
						<div class="collapse" id="panel-clients">
							<div class="pt-3">
								<p>
									이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br> 1. 회사가 운영하는 사이트(향후 추가되거나
									변경될 수 있음): <br> sangsanggongbang.co.kr. 외 회사에서 공지하고 서비스를
									제공하는 매체로서 기타 웹사이트 및 모바일 어플리케이션 및 모바일 웹 등을 포함합니다. <br>2.
									서비스: 회사가 운영하는 사이트를 통하여 늘찬(이하에서 정의됨) 상호간에 액티비티 등(이하에서 정의됨)의 거래가
									이루어질 수 있도록 사이버 거래장소를 온라인으로 제공하는 중개 서비스 및 관련 부가서비스 일체와,
									액티비티(이하에서 정의됨)의 결제가 안전하고 편리하게 이루어질 수 있는 결제대금 보호서비스를 말합니다. <br>3.
									늘찬: 회사에 개인정보를 제공하여 늘찬 등록을 한 자(이하 “늘찬”이라 함)로서, 회사의 정보를 지속적으로
									제공받으며, 이 약관에 따라 회사와 서비스 이용계약을 체결한 자를 말하며, 이하에서 정의되는 이용자와 늘솜를
									통칭합니다. <br>4. 액티비티 등: 늘찬 간에 거래되는 상품 또는 용역(교육, 활동, 강습, 행사)
									또는 회사가 제공하는 상품 등을 총칭합니다. <br>5. 늘솜: 영리의 목적 여부를 불문하고 사이트에서
									액티비티 등을 판매하거나 판매하고자 하는 늘찬(이하 “늘찬”이라 함)을 의미합니다. <br>6. 이용자:
									사이트에서 액티비티 등을 이용하거나 이용하고자 하는 늘찬을 의미합니다. <br>7. 에너지: 이용자가
									유상으로 결제하여 충전하거나, 회사로부터 적립 받아 사이트에서 상품 구매, 서비스 이용 등에 사용할 수 있는
									전자적 지급수단을 말합니다 이 약관에서 정의되지 않은 용어는 관련법령이 정하는 바에 따르며, 그 외에는 일반적인
									상거래 관행에 의합니다.
								</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-soft mb-0">
						<a href="#panel-demo" data-target="#panel-demo"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-demo">
							<span class="icon-title h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">제3조 (약관의 명시, 효력과 개정)</span></span> <span
							class="icon"><i class="fas fa-plus"></i></span>
						</a>
						<div class="collapse" id="panel-demo">
							<div class="pt-3">
								<p>
									1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등과 함께
									늘찬이 확인할 수 있도록 사이트 초기 서비스 화면(전면)에 게시합니다. 다만, 이 약관의 구체적 내용은 연결화면을
									통하여 볼 수 있습니다. <br>2. 회사는 약관의 규제에 관한 법률, 전자문서 및 전자거래기본법,
									전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률,
									전자금융거래법, 위치정보의 보호 및 이용 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수
									있습니다. <br>3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께
									사이트 초기화면에 최소 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 늘찬의 권리, 의무에 중대한
									영향을 주는 변경이 이루어질 경우에는 적용일자 30일 이전부터 공지합니다. <br>4. 제3항에 따라
									공지된 적용일자 이후에 늘찬이 회사의 서비스를 계속 이용하는 경우에는 개정된 약관에 동의하는 것으로 간주합니다.
									개정된 약관에 동의하지 아니하는 늘찬은 언제든지 자유롭게 서비스 이용계약을 해지할 수 있습니다. <br>5.
									이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 관련법령 또는 상관례에 따릅니다.
								</p>

							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-soft mb-0">
						<a href="#panel-money-back" data-target="#panel-money-back"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false"
							aria-controls="panel-money-back"> <span
							class="icon-title h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">제4조 (이용계약의 성립)</span></span> <span
							class="icon"><i class="fas fa-plus"></i></span>
						</a>
						<div class="collapse" id="panel-money-back">
							<div class="pt-3">
								<p>
									1. 이용계약은 늘찬의 약관 동의, 이용신청, 회사의 승낙에 의하여 성립합니다.<br> 2. 이용계약은
									관련법령에 의거 만14세 미만의 늘찬 가입이 제한됩니다.
								</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-soft mb-0">
						<a href="#panel-updates" data-target="#panel-updates"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-updates">
							<span class="icon-title h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">제5조 (이용신청 및 승낙)</span></span> <span
							class="icon"><i class="fas fa-plus"></i></span>
						</a>
						<div class="collapse" id="panel-updates">
							<div class="pt-3">
								<p>1. 늘찬은 회사가 정한 가입 양식에 따라 늘찬정보를 기입한 후 가입 의사를 표시함으로써 이용계약을 신청합니다.
<br>2. 회사는 다음 각 호에 해당하는 이용신청에 대하여는 이를 승낙하지 아니하거나 사후에 이용계약을 해지할 수 있습니다.
<br>(1)	이미 가입된 늘찬과 이메일 주소가 동일한 경우
<br>(2)	타인의 명의 내지 개인정보를 도용하거나, 등록 내용에 허위, 기재누락, 오기가 있는 경우
<br>(3)	회사에 의하여 이용계약이 해지된 날로부터 3개월 이내에 재이용을 신청하는 경우
<br>(4)	이 약관에 의하여 이전에 늘찬자격을 상실한 적이 있는 경우(늘찬자격 상실 후 3개월이 경과한 자로서 회사의 늘찬 재이용 승낙을 얻은 경우에는 예외)
<br>(5)	부정한 용도 또는 영리를 추구할 목적으로 본 서비스를 이용하고자 하는 경우
<br>(6)	이 약관 또는 관련 법령을 위반한 경우
<br>(7)	이전에 동일∙유사한 아이디 또는 다른 아이디를 통하여 부정한 사용을 한 이력이 있거나 의심되는 경우
<br>(8)	관련법령에 위배되거나 사회의 안녕질서 혹은 미풍양속을 저해할 수 있는 목적으로 신청한 경우
<br>(9)	회사의 서비스 운영에 따른 설비에 여유가 없거나, 기술 상 지장이 발생하였거나 발생할 가능성이 있는 경우
<br>(10)	만14세 미만의 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 이용신청을 하는 경우
<br>(11)	늘찬이 회사나 다른 늘찬, 기타 타인의 권리나 명예, 신용, 기타 정당한 이익을 침해하는 행위를 한 경우
<br>(12)	회사가 제공하는 각 약관 내지 관련 법령에 위배되거나 위배될 가능성이 있는 부당한 이용신청임이 확인된 경우
<br>(13)	기타 늘찬과의 계속적 거래관계를 지속하기 어렵다고 합리적으로 판단되는 경우
<br>3. 전항 제5호에 따라 부정한 용도 또는 영리를 추구할 목적으로 본 서비스를 이용하였거나, 제7호에 따라 부정한 사용을 한 이력이 있는 경우 해당 위반사유가 발생한 시점에 제7조 제1항에 따른 해지의 의사표시가 있었던 것으로 보아 계약이 자동종료 됩니다.
</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-soft mb-0">
						<a href="#panel-support" data-target="#panel-support"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-support">
							<span class="icon-title h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">제6조 (늘찬정보의 수정)</span></span> <span
							class="icon"><i class="fas fa-plus"></i></span>
						</a>
						<div class="collapse" id="panel-support">
							<div class="pt-3">
								<p class="mb-0">늘찬은 이용신청 시 작성한 이용신청 사항에 변경이 있는 경우, 온라인으로 개인정보를 수정하거나 이메일, 전화, 팩스 등의 방법으로 회사에 그 변경사항을 알려야 합니다. 이를 알리지 않아 발생하는 불이익에 대한 모든 책임은 늘찬에게 있으며, 회사는 이에 대한 책임을 지지 않습니다.
</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-soft mb-0">
						<a href="#panel-copyright" data-target="#panel-copyright"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false"
							aria-controls="panel-copyright"> <span
							class="icon-title h6 mb-0 font-weight-bold"> <span
								class="font-weight-bold">제7조 (이용계약의 종료)</span></span> <span
							class="icon"><i class="fas fa-plus"></i></span>
						</a>
						<div class="collapse" id="panel-copyright">
							<div class="pt-3">
								<p>1. 늘찬의 해지
<br>(1)	늘찬은 언제든지 회사에게 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다.
<br>(2)	이용계약은 회사가 늘찬의 해지의사를 받아 해지 처리하는 시점에 종료됩니다.
<br>(3)	본 항에 따라 해지를 한 늘찬은 이 약관이 정하는 늘찬가입절차와 관련조항에 위반되지 않는 경우 늘찬으로 다시 가입할 수 있습니다.
<br>2. 회사의 해지
<br>(1)	회사는 늘찬에게 제5조 2항에서 정하고 있는 이용계약의 해지사유가 있는 경우 늘찬과의 이용계약을 해지할 수 있습니다. 
<br>(2)	회사는 해당 늘찬에게 14일 이내의 기간을 정하여 사전에 해지사유에 대한 의견진술의 기회를 부여할 수 있습니다.
</p>
							</div>
						</div>
					</div>
				<div class="card card-sm card-body border-soft mb-0">
					<a href="#panel-copyright" data-target="#panel-copyright"
						class="accordion-panel-header" data-toggle="collapse"
						role="button" aria-expanded="false"
						aria-controls="panel-copyright"> <span
						class="icon-title h6 mb-0 font-weight-bold"> <span
							class="font-weight-bold">제8조 (이용제한 등)</span></span> <span
						class="icon"><i class="fas fa-plus"></i></span>
					</a>
					<div class="collapse" id="panel-copyright">
						<div class="pt-3">
							<p>1. 회사는 늘찬이 다음 각 호의 사유에 해당하는 경우 경고 조치를 통해 시정을 요구하고, 지체 없이 하자가 치유되지 않는 경우 늘솜에 대한 위반사항 게시, 일시정지 또는 영구이용정지 등으로 서비스의 이용을 단계적으로 제한할 수 있습니다. 다만, 아래 제3호 내지 제10호의 경우에는 회복할 수 없는 손해를 방지하기 위하여 늘찬에 대한 별도 경고 없이 즉시 일시정지 조치를 할 수 있으며, 중대한 범죄와 관련된다고 판단되는 경우 민형사상 조치와 함께 늘찬자격의 영구이용정지 조치를 통해 서비스 이용을 제한할 수 있습니다.
<br>(1)	가입 신청 시 허위 내용을 등록한 경우
<br>(2)	물품 또는 서비스에 대한 대금 결제, 기타 서비스 이용과 관련하여 늘찬이 부담하는 채무를 기일에 이행하지 않는 경우
<br>(3)	타인의 서비스 이용을 방해하거나 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
<br>(4)	회사를 이용하여 법령과 이 약관이 금지하거나 공공질서, 미풍양속에 반하는 행위를 하는 경우
<br>(5)	늘찬이 구매한 물품을 고의로 훼손한 후 교환, 환불 등의 보상을 요구한 사실이 확인되는 경우
<br>(6)	늘찬이 물품 또는 서비스 구매 시 결제 정보를 임의로 조작하여 정상 결제가격보다 못 미치는 금액을 결제한 경우
<br>(7)	늘찬이 제15조의2 제5항, 제6항을 위반 한 경우
<br>(8)	늘찬이 회사 시스템이나 서비스를 경유하지 않고 직접 거래할 목적으로 늘찬 간에 개인정보, 연락처 등(전화번호, 이메일, 메신저, SNS ID 등을 포함하되 이에 한정되지 아니함)를 교환하거나, 늘솜의 액티비티 등 소개페이지, 게시판, 후기, 이미지/영상, 리뷰, 문의란 등에 위 개인정보, 연락처 등을 기재하거나 기재하도록 유도하는 경우
<br>(9)	이용자가 회사 시스템이나 서비스를 경유하지 않고 늘솜에게 액티비티 등의 대가를 직접 지급한 경우
<br>(10)	늘솜에게 액티비티 등과 관련 없거나 불쾌한 언어사용, 비정상적인 행위 등을 한 것에 대하여 신고가 접수된 경우
<br>(11)	고객센터 문의 및 전화 상담 내용이 욕설, 폭언, 성희롱, 반복 민원을 통한 업무방해 등에 해당하는 경우

<br>2. 회사는 전항에도 불구하고 저작권법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 여신전문금융업법 등 기타 현행법령을 위반한 명의도용 및 결제정보 도용, 불법 통신 및 해킹, 악성프로그램의 배포, 접속권한 초과, 신용카드 부정거래 등의 경우에 즉시 영구이용정지를 할 수 있습니다. 
<br>3. 늘찬은 본조에 따른 이용제한의 경우 고객센터를 통하여 소명자료를 구비하여 이의를 제기할 수 있습니다. 회사가 늘찬의 이의제기 및 소명이 충분하다고 판단하는 경우 서비스 이용을 즉시 재개할 수 있습니다.
<br>4. 본조에 따른 영구이용정지 시 제15조의 4 제1항에 의하여 적립된 에너지 및 기타 혜택 등도 모두 소멸되며, 회사는 이에 대해 별도로 보상하지 않습니다.
<br>5. 회사는 1년 이상 서비스를 이용하지 않는 늘찬의 개인정보를 별도로 분리 보관하여 관리하며, 구체적인 파기 등 절차에 대하여는 개인정보 보호법 등 해당 시점에 유효하게 적용되는 법령의 절차에 따릅니다.
							</p>
						</div>
					</div>
			</div>
			<div class="card card-sm card-body border-soft mb-0">
				<a href="#panel-copyright" data-target="#panel-copyright"
					class="accordion-panel-header" data-toggle="collapse" role="button"
					aria-expanded="false" aria-controls="panel-copyright"> <span
					class="icon-title h6 mb-0 font-weight-bold"> <span
						class="font-weight-bold">제9조 (늘찬의 이메일 및 비밀번호에 대한 의무)</span></span> <span
					class="icon"><i class="fas fa-plus"></i></span>
				</a>
				<div class="collapse" id="panel-copyright">
					<div class="pt-3">
						<p>1. 늘찬은 자신의 이메일과 비밀번호에 관한 관리책임이 있으며 이를 소홀히 하여 발생한 모든 민형〮사상의 책임은 회사의 고의 또는 중과실이 없는 한 늘찬 자신에게 있습니다. 늘찬은 자신의 이메일 및 비밀번호를 제3자에게 알려주어서는 안되며, 늘찬이 이메일과 비밀번호를 제3자에게 알려줌으로써 발생한 손해에 대해서 회사는 책임을 지지 않습니다. 이메일과 비밀번호가 늘찬의 의사에 반하여 유출되거나 기타의 사정으로 제3자가 사용하고 있음을 인지한 경우 즉시 비밀번호를 변경하여야 하고, 회사에 통보한 다음 회사의 안내를 따라야 합니다. 이를 소홀히 하여 발생한 모든 책임은 늘찬이 집니다.
<br>2. 늘찬은 자신의 이메일 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
<br>3. 늘찬이 자신의 이메일 및 비밀번호를 도난 당하거나 제3자가 이용하고 있음을 인지한 경우에는 즉시 회사에 통보하고, 회사의 조치가 있는 경우에는 그에 따라야 합니다.
<br>4. 늘찬이 제3항에 따른 통지를 하지 않거나 회사의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 늘찬에게 있습니다.
</p>
					</div>
				</div>
			</div>
		<div class="card card-sm card-body border-soft mb-0">
			<a href="#panel-copyright" data-target="#panel-copyright"
				class="accordion-panel-header" data-toggle="collapse" role="button"
				aria-expanded="false" aria-controls="panel-copyright"> <span
				class="icon-title h6 mb-0 font-weight-bold"> <span
					class="font-weight-bold">제10조 (늘찬의 의무)</span></span> <span
				class="icon"><i class="fas fa-plus"></i></span>
			</a>
			<div class="collapse" id="panel-copyright">
				<div class="pt-3">
					<p>
1. 늘찬은 관계법령, 이 약관의 규정, 이용안내 등 회사가 통지하는 사항을 준수하여야 하며, 기타 타인의 권익을 침해하거나, 회사 업무에 방해되는 행위를 하여서는 안됩니다.
<br>2. 늘찬은 서비스 이용과 관련하여 다음 각 호의 행위를 하여서는 안됩니다.
<br>(1)	이용계약 신청 또는 이용정보 변경 시 허위내용의 등록
<br>(2)	회사의 서비스에 게시된 정보 또는 늘찬이 서비스를 이용하여 얻은 정보를 회사의 사전 승낙 없이 영리 또는 비영리의 목적으로 복제, 출판, 방송 등에 사용하거나 제3자에게 제공하는 행위
<br>(3)	회사가 게시한 정보의 허가 받지 않은 변경
<br>(4)	회사가 제공하는 서비스 및 사이트를 이용하여 본인 또는 제3자를 홍보하거나, 홍보할 기회를 제공하는 행위
<br>(5)	회사가 제공하는 서비스 및 사이트를 이용하여 본인을 홍보하거나 제3자의 홍보를 대행하는 등의 방법으로 금전을 수수하는 행위
<br>(6)	서비스를 이용할 권리를 양도하고 이를 대가로 금전을 수수하는 행위
<br>(7)	회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시
<br>(8)	정보통신망법 등 관련 법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 등)을 전송하거나 게시 및 관련 사이트를 링크하는 행위
<br>(9)	회사 및 기타 제3자의 저작권 등 지적 재산권에 대한 침해
<br>(10)	회사 및 기타 제3자의 명예를 손상시키거나, 신용을 훼손하는 행위 또는 업무를 방해하는 행위
<br>(11)	다른 늘찬의 아이디 및 비밀번호를 도용하여 서비스를 이용하는 행위
<br>(12)	회사에서 물품이나 서비스를 이용하는 대가로 타인의 계좌번호, 신용카드 등의 결제정보를 허락 없이 이용하는 행위
<br>(13)	정크메일, 스팸메일, 행운의 편지, 광고메일, 외설 또는 폭력적인 메시지, 동영상, 음성 등이 담긴 메일을 보내는 행위
<br>(14)	청소년보호법에서 규정하는 청소년유해매체물을 게시(링크 포함)하는 행위
<br>(15)	외설 또는 폭력적인 메시지, 동영상, 음성 기타 공공질서, 미풍양속에 반하는 정보, 문장, 도형, 동영상, 음성 등 사이트에 공개, 게시 또는 다른 늘찬 또는 제3자에게 유포하는 행위
<br>(16)	회사의 직원이나 서비스의 관리자로 가장, 사칭하거나 타인의 명의를 도용하여 글을 게시하거나 메일을 발송하는 행위
<br>(17)	컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하는 자료를 게시하거나 메일로 발송하는 행위
<br>(18)	스토킹, 욕설, 채팅글 도배 등 다른 늘찬의 서비스 이용을 방해하는 행위
<br>(19)	다른 늘찬의 개인정보를 동의 없이 수집, 저장, 공개, 유포하는 행위
<br>(20)	불특정 다수의 늘찬을 대상으로 하여 광고 또는 선전물을 게시하거나 관련 사이트를 링크하는 행위
<br>(21)	특정 재화 또는 서비스를 실제 구매 또는 사용하지 않았음에도 불구하고 마치 구매 또는 사용한 듯한 외관을 보이면서 회사의 사이트나 기타 매체를 통해 통상의 비판범위를 초과하여 관련 재화/서비스의 품질을 폄하하거나 회사를 비난하는 행위
<br>(22)	회사의 명예나 신용을 훼손하는 행위
<br>(23)	늘찬의 의무 불이행
<br>(24)	현행 법령, 회사가 제공하는 서비스에 대한 약관 기타 서비스 이용에 관한 규정 및 회사 방침(사이트 공지사항 포함)에 위반하는 행위
					</p>
				</div>
		</div>
	</div>
	<div class="card card-sm card-body border-soft mb-0">
		<a href="#panel-copyright" data-target="#panel-copyright"
			class="accordion-panel-header" data-toggle="collapse" role="button"
			aria-expanded="false" aria-controls="panel-copyright"> <span
			class="icon-title h6 mb-0 font-weight-bold"> <span
				class="font-weight-bold">제11조 (회사의 의무)</span></span> <span
			class="icon"><i class="fas fa-plus"></i></span>
		</a>
		<div class="collapse" id="panel-copyright">
			<div class="pt-3">
				<p>1. 회사는 관련법령과 이 약관이 금지하거나 공공질서, 미풍양속에 반하는 행위를 하지 않으며, 이 약관이 정하는 바에 따라 지속적이고 안정적으로 서비스를 제공하기 위하여 최선을 다하여야 합니다.
<br>2. 회사는 늘찬이 안전하게 서비스를 이용할 수 있도록 늘찬의 개인정보(신용정보 포함) 보호를 위한 보안 시스템을 갖추어야 하며 개인정보 처리방침을 공시하고 준수합니다.
<br>3. 회사는 관련법령이 정한 의무사항을 준수합니다.
				</p>
			</div>
		</div>
	</div>
</div>
<div class="card card-sm card-body border-soft mb-0">
	<a href="#panel-copyright" data-target="#panel-copyright"
		class="accordion-panel-header" data-toggle="collapse" role="button"
		aria-expanded="false" aria-controls="panel-copyright"> <span
		class="icon-title h6 mb-0 font-weight-bold"> <span
			class="font-weight-bold">제12조 (회사가 제공하는 서비스에 대한 약관 및 이용조건)</span></span> <span
		class="icon"><i class="fas fa-plus"></i></span>
	</a>
	<div class="collapse" id="panel-copyright">
		<div class="pt-3">
			<p>1. 회사는 통신판매중개자로서 늘찬 상호간의 거래를 위한 온라인 거래장소를 제공할 뿐이므로 물품을 판매하거나 구매하고자 하는 늘찬을 대리하지 않습니다. 또한, 회사의 어떠한 행위도 전문가 또는 의뢰인을 대리하는 행위로 간주되지 않습니다.
<br>2. 회사는 중개서비스를 통하여 이루어지는 늘찬간의 판매 및 구매와 관련하여 판매의사 또는 구매의사의 존부 및 진정성, 등록물품의 품질, 완전성, 안전성, 적법성 및 타인의 권리에 대한 비침해성, 늘찬이 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 등 일체에 대하여 보증하지 아니하며, 이와 관련한 일체의 위험과 책임은 해당 늘찬이 부담해야 합니다.
<br>3. 회사는 늘솜가 게재하는 서비스설명 등의 제반 정보를 통제하거나 제한하지 않습니다. 다만, 회사는 늘찬이 게재한 정보의 내용이 타인의 명예, 권리를 침해하거나 법규정을 위반한다고 판단하는 경우에는 이를 삭제할 수 있고, 판매취소, 판매중지, 기타 필요한 조치를 취할 수 있으며, 늘솜는 자신이 의도한 판매효과의 미흡 등을 이유로 회사에 어떠한 책임도 물을 수 없습니다.
			</p>
		</div>
	</div>
</div>

<div class="card card-sm card-body border-soft mb-0">
	<a href="#panel-copyright" data-target="#panel-copyright"
		class="accordion-panel-header" data-toggle="collapse" role="button"
		aria-expanded="false" aria-controls="panel-copyright"> <span
		class="icon-title h6 mb-0 font-weight-bold"> <span
			class="font-weight-bold">제12조의2 (사용후기의 작성 등)</span></span> <span
		class="icon"><i class="fas fa-plus"></i></span>
	</a>
	<div class="collapse" id="panel-copyright">
		<div class="pt-3">
			<p>1. 회사는 늘찬에게 서비스의 사용 또는 경험 후 의견(이하 “사용후기”)을 작성해 줄 것을 요청할 수 있습니다. 이 경우 사용후기는 실제 사용한 늘찬에 한하여 해당 서비스에 대하여 작성할 수 있으며, 공개를 원칙으로 합니다. 단, 늘찬이 자신이 사용한 서비스에 대한 사용후기를 게시하였다가 삭제한 경우에는, 동일 서비스를 다시 이용하지 않는 한 재차 사용후기를 작성할 수 없습니다.
<br>2. 전항의 사용후기 및 서비스 이용에 대한 만족도 평가 등은 전적으로 평가당사자인 각 늘찬의 책임 하에 이루어지며, 회사는 늘찬이 게재한 사용후기, 평가, 사진 등을 포함한 정보, 자료, 사실의 신뢰도 또는 정확성에 대하여 책임지지 않습니다. 
<br>3. 늘찬이 작성한 사용후기가 타인의 권리를 침해하거나 법령에 위반되거나 그러한 가능성이 있어(저작권법 등 지식재산권 침해의 경우를 포함하되 이에 한정되지 아니함), 이를 이유로 늘찬 간 또는 늘찬과 제3자 간 분쟁이 발생하는 경우 이와 관련된 일체의 책임은 해당 사용후기를 등록한 늘찬에게 있으며, 회사는 이에 대하여 원칙적으로 관여하지 아니하며 관련된 법적 책임에서 면책됩니다.
<br>4. 늘찬이 작성한 사용후기가 다음 각항에 해당한다고 판단되는 경우 회사는 이를 사전통지 없이 삭제 또는 30일 이내의 범위에서 블라인드 조치할 수 있으며, 이로 관련된 어떠한 책임도 지지 않습니다.
<br>(1)	금전 또는 기타의 보상을 받거나 받기로 약정하고 그 대가로 사용후기나 만족도 평가가 이루어진 경우
<br>(2)	사용후기와 만족도 평가의 목적과 취지에 반하거나 이용한 서비스와 관련이 없는 경우
<br>(3)	정당한 권한 없이 타인의 권리(지식재산권, 개인정보, 명예, 신용 등)을 침해하는 경우
<br>(4)	다른 사람에게 성적 수치심을 주거나 혐오감, 불쾌감을 유발하는 경우
<br>(5)	범죄행위에 이용되거나 직, 간접적으로 연관된 경우
<br>(6)	정보통신기기의 오작동 또는 정상적 운영에 방해를 주는 악성코드, 데이터, 바이러스 등을 포함하는 경우
<br>(7)	기타 관계 법령에 위배되거나 사회상규에 반하는 경우
<br>5. 전항에도 불구하고 회사는 단순히 서비스에 대한 불만 내지 늘솜에게 불리한 내용이 포함되었다는 이유만으로 사용후기를 삭제할 수 없습니다.
			</p>
		</div>
	</div>
</div>

<div class="card card-sm card-body border-soft mb-0">
	<a href="#panel-copyright" data-target="#panel-copyright"
		class="accordion-panel-header" data-toggle="collapse" role="button"
		aria-expanded="false" aria-controls="panel-copyright"> <span
		class="icon-title h6 mb-0 font-weight-bold"> <span
			class="font-weight-bold">제12조의3 (사용후기의 이용 등)</span></span> <span
		class="icon"><i class="fas fa-plus"></i></span>
	</a>
	<div class="collapse" id="panel-copyright">
		<div class="pt-3">
			<p>1. 회사는 제12조의2에 따른 사용후기 작성 당시 당해 늘찬이 명시적인 반대의 의사를 통보하지 않는 한 게시, 전달, 공유 등의 목적으로 서비스와 관련된 목적 범위 내에서 사용후기를 무상으로 사용(사이트 등에 대한 복제, 배포, 전시 등 지식재산권 관련 법령에 따른 사용방법을 포함함)할 수 있으며, 늘찬은 이에 동의한 것으로 봅니다.
<br>2. 전항의 경우 늘찬은 명시적인 반대의 의사를 통보하지 않는 한 회사로 하여금 사용 목적에 따라 본질적인 내용에 변경을 가하지 않는 범위 내에서 사용후기를 일부 수정, 편집하여 사용할 수 있는 권한(이용후기들을 해당 이용 서비스 페이지와 별도의 페이지로 편집하여 게시하는 경우를 포함함)을 부여한 것으로 봅니다.
<br>3. 본조 제1항, 제2항에도 불구하고 당해 늘찬은 언제든지 고객센터를 통해 관련 법령이 허용하는 범위 내에서 자신이 작성한 본조의 사용후기 및 편집물에 대한 삭제, 블라인드 등의 조치를 요청할 수 있습니다.
			</p>
		</div>
	</div>
</div>
<div class="card card-sm card-body border-soft mb-0">
	<a href="#panel-copyright" data-target="#panel-copyright"
		class="accordion-panel-header" data-toggle="collapse" role="button"
		aria-expanded="false" aria-controls="panel-copyright"> <span
		class="icon-title h6 mb-0 font-weight-bold"> <span
			class="font-weight-bold">제13조 (서비스 이용시간)</span></span> <span
		class="icon"><i class="fas fa-plus"></i></span>
	</a>
	<div class="collapse" id="panel-copyright">
		<div class="pt-3">
			<p>서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기점검 등의 필요로 회사가 정한 날 또는 시간은 제외됩니다.
			</p>
		</div>
	</div>
</div>
<div class="card card-sm card-body border-soft mb-0">
	<a href="#panel-copyright" data-target="#panel-copyright"
		class="accordion-panel-header" data-toggle="collapse" role="button"
		aria-expanded="false" aria-controls="panel-copyright"> <span
		class="icon-title h6 mb-0 font-weight-bold"> <span
			class="font-weight-bold">제14조 (서비스 제공의 중지)</span></span> <span
		class="icon"><i class="fas fa-plus"></i></span>
	</a>
	<div class="collapse" id="panel-copyright">
		<div class="pt-3">
			<p>1. 회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.
<br>(1)	서비스용 하드웨어, 소프트웨어 등의 보수, 정기 및 비상 점검의 경우
<br>(2)	전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우
<br>(3)	기타 불가항력적 사유가 있는 경우
<br>2. 회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.
			</p>
		</div>
	</div>
</div>
<div class="card card-sm card-body border-soft mb-0">
	<a href="#panel-copyright" data-target="#panel-copyright"
		class="accordion-panel-header" data-toggle="collapse" role="button"
		aria-expanded="false" aria-controls="panel-copyright"> <span
		class="icon-title h6 mb-0 font-weight-bold"> <span
			class="font-weight-bold">제15조 (사용 가능한 결제 수단)</span></span> <span
		class="icon"><i class="fas fa-plus"></i></span>
	</a>
	<div class="collapse" id="panel-copyright">
		<div class="pt-3">
			<p>늘찬은 회사가 운영하는 사이트에서 이루어지는 물품 또는 서비스 거래에 대한 대금 지급방법을 다음 각 호의 하나로 할 수 있습니다.
<br>1. 신용카드
<br>2. 실시간 계좌이체
<br>3. 휴대폰 결제
<br>4. 에너지
<br>5. 기타 회사가 지정하는 지급 수단</p>
		</div>
	</div>
</div>
</div>
</div>
</div>
</div>

<!--End of Accordion-->


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
