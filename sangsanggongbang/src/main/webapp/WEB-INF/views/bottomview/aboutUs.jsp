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
	class="section section-header bg-primary overlay-primary text-white pb-8 pb-lg-10"
	data-background="../assets/img/team-hero.jpg">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 text-center">
				<h1 class="display-2 mb-4">Working alone is bad</h1>
				<p class="lead mb-4 text-muted">Our vision is for every business
					to have the right workspace to attract amazing people and build a
					brilliant reputation.</p>
				<a href="#" class="btn btn-secondary mr-3">What we do <span
					class="ml-2"><span class="fas fa-arrow-right"></span></span></a>
			</div>
		</div>
	</div>
	<figure
		class="position-absolute bottom-0 left-0 w-100 d-none d-md-block mb-n2">
		<svg class="fill-white" enable-background="new 0 0 1504 131.3"
			viewBox="0 0 1504 131.3" xmlns="http://www.w3.org/2000/svg">
			<path
				d="m877.8 85c139.5 24.4 348 33.5 632.2-48.2-.2 32.5-.3 65-.5 97.4-505.9 0-1011.6 0-1517.5 0 0-33.3 0-66.7 0-100.1 54.2-11.4 129.5-23.9 220-28.2 91-4.3 173.6 1 307.4 18.6 183.2 24.2 295.2 49.4 358.4 60.5z" /></svg>
	</figure>
</section>
<!-- End of Hero section -->
<!-- Section -->
<section class="section section-lg">
	<div class="container">
		<div class="row">
			<div class="col-md-4 pr-lg-4">
				<h2 class="display-2 font-weight-light mb-5">
					Let's share few things <span class="font-weight-bold">about
						us.</span>
				</h2>
			</div>
			<div class="col-md-4">
				<p class="lead">
					<span class="font-weight-bold">Spaces</span> is the largest, real
					time network for office space. The Spaces Network transforms the
					entire commercial real estate process by connecting growing teams
					and professionals looking for space, directly with venue partners,
					space providers, real estate professionals and service providers.
				</p>
			</div>
			<div class="col-md-4">
				<p class="lead">
					Individuals and teams from <span class="font-weight-bold">105,
						000</span> businesses in <span class="font-weight-bold">900</span> cities
					have connected to the Spaces network to solve their office needs.
				</p>
				<img class="mt-4" src="../assets/img/signature.svg" alt="signature"
					width="100">
			</div>
		</div>
	</div>
</section>
<!-- End of section -->
<!-- Section -->
<section class="section section-lg pt-0">
	<div class="container">
		<div class="row d-none d-md-block">
			<div class="col">
				<div class="card card-body bg-soft p-0 p-lg-3">
					<div class="card-group bg-soft">
						<div class="card mb-0 bg-soft">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-users"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">3</span>M+
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Users</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-city"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">13</span>K
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Spaces</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-map-marker-alt"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">120</span>
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Locations</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-globe-americas"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">15</span>
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Countries</p>
							</div>
						</div>
					</div>
					<div class="card-group">
						<div class="card mb-0 border-top bg-soft rounded-0">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-ticket-alt"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="text-dark mr-1">24/7</span>
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Customer Service</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-top border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-dollar-sign"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">192</span>$
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Average Cost</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-top border-left">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-award"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">10</span>
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Awards</p>
							</div>
						</div>
						<div class="card mb-0 bg-soft border-top border-left rounded-0">
							<div class="card-body text-center">
								<div class="icon icon-primary">
									<span class="fas fa-users"></span>
								</div>
								<!-- Heading -->
								<h3 class="font-weight-normal mt-3 mb-0">
									<span class="counter text-dark mr-1">300</span>
								</h3>
								<!-- Text -->
								<p class="text-muted mb-0">Peoples Join Everyday</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row d-md-none">
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="card border-light p-4">
					<div class="card-body">
						<h2 class="display-2 mb-2">98%</h2>
						<span>Average satisfaction rating received in the past year</span>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="card border-light p-4">
					<div class="card-body">
						<h2 class="display-2 mb-2">24/7</h2>
						<span>Our support team is a quick chat or email away — 24
							hours a day</span>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="card border-light p-4">
					<div class="card-body">
						<h2 class="display-2 mb-2">220M</h2>
						<span>Data points on spaces and cities distilled down to
							find the perfect match.</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End of section -->
<section class="section section-lg pt-0">
	<div class="container">
		<div class="row justify-content-center mb-5 mb-lg-6">
			<div class="col-12 col-md-8 text-center">
				<h2>
					<span class="font-weight-bold">Global</span> Experts & Offices
				</h2>
				<p class="lead mt-4">Our globally distributed team allows us to
					maintain operational efficiency and provide 24/7 customer service
					while working toward a shared goal.</p>
			</div>
		</div>
		<div class="row mb-5 mb-lg-7">
			<div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="card border-light">
					<img src="../assets/img/team/profile-picture-1.jpg"
						class="card-img-top rounded-top" alt="Joseph Portrait">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">Joseph Garth</h3>
						<span class="card-subtitle text-gray font-weight-normal">Founder</span>
						<p class="card-text my-3">Some quick example text to build on
							the card title and make up the bulk of the card's content.</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="#" target="_blank"
								aria-label="facebook social link" class="icon-facebook mr-3">
									<span class="fab fa-facebook-f"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="twitter social link" class="icon-twitter mr-3">
									<span class="fab fa-twitter"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="slack social link" class="icon-slack mr-3"> <span
									class="fab fa-slack-hash"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="dribbble social link" class="icon-dribbble mr-3">
									<span class="fab fa-dribbble"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="card border-light">
					<img src="../assets/img/team/profile-picture-2.jpg"
						class="card-img-top rounded-top" alt="Bonnie portrait">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">Bonnie Green</h3>
						<span class="card-subtitle text-gray font-weight-normal">Agent</span>
						<p class="card-text my-3">Some quick example text to build on
							the card title and make up the bulk of the card's content.</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="#" target="_blank"
								aria-label="facebook social link" class="icon-facebook mr-3">
									<span class="fab fa-facebook-f"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="twitter social link" class="icon-twitter mr-3">
									<span class="fab fa-twitter"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="slack social link" class="icon-slack mr-3"> <span
									class="fab fa-slack-hash"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="dribbble social link" class="icon-dribbble mr-3">
									<span class="fab fa-dribbble"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
				<div class="card border-light">
					<img src="../assets/img/team/profile-picture-3.jpg"
						class="card-img-top rounded-top" alt="Jose Avatar">
					<div class="card-body">
						<h3 class="h4 card-title mb-2">Jose Leos</h3>
						<span class="card-subtitle text-gray font-weight-normal">Marketing</span>
						<p class="card-text my-3">Some quick example text to build on
							the card title and make up the bulk of the card's content.</p>
						<ul class="list-unstyled d-flex mt-3 mb-0">
							<li><a href="#" target="_blank"
								aria-label="facebook social link" class="icon-facebook mr-3">
									<span class="fab fa-facebook-f"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="twitter social link" class="icon-twitter mr-3">
									<span class="fab fa-twitter"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="slack social link" class="icon-slack mr-3"> <span
									class="fab fa-slack-hash"></span>
							</a></li>
							<li><a href="#" target="_blank"
								aria-label="dribbble social link" class="icon-dribbble mr-3">
									<span class="fab fa-dribbble"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-5 mb-lg-6">
			<div class="col text-center">
				<h3 class="mb-5">You can find us here</h3>
				<iframe class="map rounded" id="gmap_canvas"
					src="https://maps.google.com/maps?q=san%20francisco&t=&z=8&ie=UTF8&iwloc=&output=embed"></iframe>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-12 col-lg-8">
				<!--Accordion-->
				<div class="accordion" id="accordionExample1">
					<div class="card card-sm card-body border-light mb-0">
						<a href="#panel-1" data-target="#panel-1"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-1">
							<span class="h6 mb-0 font-weight-bold">I’m looking for a
								space…</span> <span class="icon"><span class="fas fa-plus"></span></span>
						</a>
						<div class="collapse" id="panel-1">
							<div class="pt-3">
								<p class="mb-0">At Themesberg, our mission has always been
									focused on bringing openness and transparency to the design
									process. We've always believed that by providing a space where
									designers can share ongoing work not only empowers them to make
									better products, it also helps them grow. We're proud to be a
									part of creating a more open culture and to continue building a
									product that supports this vision.</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-light mb-0">
						<a href="#panel-2" data-target="#panel-2"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-1">
							<span class="h6 mb-0 font-weight-bold">How does it work?</span> <span
							class="icon"><span class="fas fa-plus"></span></span>
						</a>
						<div class="collapse" id="panel-2">
							<div class="pt-3">
								<p class="mb-0">At Themesberg, our mission has always been
									focused on bringing openness and transparency to the design
									process. We've always believed that by providing a space where
									designers can share ongoing work not only empowers them to make
									better products, it also helps them grow. We're proud to be a
									part of creating a more open culture and to continue building a
									product that supports this vision.</p>
							</div>
						</div>
					</div>
					<div class="card card-sm card-body border-light">
						<a href="#panel-3" data-target="#panel-3"
							class="accordion-panel-header" data-toggle="collapse"
							role="button" aria-expanded="false" aria-controls="panel-1">
							<span class="h6 mb-0 font-weight-bold">Licenses</span> <span
							class="icon"><span class="fas fa-plus"></span></span>
						</a>
						<div class="collapse" id="panel-3">
							<div class="pt-3">
								<p class="mb-0">At Themesberg, our mission has always been
									focused on bringing openness and transparency to the design
									process. We've always believed that by providing a space where
									designers can share ongoing work not only empowers them to make
									better products, it also helps them grow. We're proud to be a
									part of creating a more open culture and to continue building a
									product that supports this vision.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of Accordion-->
				<p class="text-center mb-4 mt-6">Would you like to work with us?</p>
				<p class="text-center">
					<a href="./contact.html" class="btn btn-primary animate-up-2">Contact
						us.</a>
				</p>
			</div>
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