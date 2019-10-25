
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="tab/header.jsp"/>
<body id="page-top">


<!-- Header -->
<header class="masthead">
    <div class="container">
        <div class="intro-text">
            <div class="intro-lead-in"> GLOBAL INNOVATION <br>[ 맞춤형 계약-소송 관리시스템 ] </div>
            <%--<div class="intro-heading text-uppercase"> [ 맞춤형 계약-소송 관리시스템 ]</div>--%>
            <%--<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>--%>
        </div>
    </div>
</header>

<!-- Services -->
<section class="page-section" id="services">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">PRODUCT</h2>
                <h3 class="section-subheading text-muted">Service</h3>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
          </span>
                <h5 class="service-heading">JSocle</h5>
                <h4 class="service-heading">웹 프레임워크</h4>
                <p class="text-muted">코틀린(Kotlin) 언어 기반의 마이크로 웹 프레임워크로 스프링(Spring) 프레임워크를 대체할 프레임워크로 자리잡을 것입니다.</p>
                <a class="btn btn-service_heading btn-xl text-uppercase js-scroll-trigger" href="#services">자세히보기</a>
            </div>
            <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
          </span>
                <h5 class="service-heading">Contract System</h5>
                <h4 class="service-heading">맞춤형 계약시스템</h4>

                <p class="text-muted">B2B, B2C간의 모든 계약을 관리할 수 있는 서비스를 제공합니다. 이 서비스는 계약 당사자간의 불협화음을 부드럽게 조율할 수 있도록 지원해 줍니다.</p>
                <a class="btn btn-service_heading btn-xl text-uppercase js-scroll-trigger" href="#services">자세히보기</a>
            </div>
            <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
          </span>
                <h5 class="service-heading">Kotlin Everywhere</h5>
                <h4 class="service-heading">코틀린 에브리웨어</h4>
                <p class="text-muted">제이소클(JSocle)의 두 번째 버전으로 모바일(Mobile)과 웹(Web)을 동시에 개발할 때 유용하게 사용할 수 있는 기반 API인 코틀린 에브리웨어(Kotlin Everywhere)를 오픈소스로 제공하고 있습니다.
                                        이것은 SMS(Single Model Share)라는 새로운 개념의 아키텍처를 기반으로 합니다.</p>
                <a class="btn btn-service_heading btn-xl text-uppercase js-scroll-trigger" href="#services">자세히보기</a>
            </div>
        </div>
    </div>
</section>


<!-- About -->
<section class="page-section" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">기업연혁</h2>
                <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <ul class="timeline">
                    <li>
                        <div class="timeline-image">
                            <img class="rounded-circle img-fluid" src="<%=request.getContextPath()%>/resources/img/about/1.jpg" alt="">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <%--<h4>2013년 7월</h4>--%>
                                <h4 class="subheading">2013년 7월</h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">마인케이 설립</p>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <img class="rounded-circle img-fluid" src="<%=request.getContextPath()%>/resources/img/about/2.jpg" alt="">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <%--<h4>March 2011</h4>--%>
                                <h4 class="subheading">2013년 11월 </h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">(주)G-Soft [ 일본 나고야 ]와 협약 체결</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image">
                            <img class="rounded-circle img-fluid" src="<%=request.getContextPath()%>/resources/img/about/3.jpg" alt="">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <%--<h4>December 2012</h4>--%>
                                <h4 class="subheading">2015년 04월</h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">(주)링크비즈와 협약 체결 :
                                    <br>마이크로 웹 프레임워크 개발</p>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <img class="rounded-circle img-fluid" src="<%=request.getContextPath()%>/resources/img/about/4.jpg" alt="">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <%--<h4>July 2014</h4>--%>
                                <h4 class="subheading">2016년 04월</h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">법인 전환 : (주)마인케이</p>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>~ing</h4>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- Team -->
<section class="bg-light page-section" id="team">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">Our Amazing Team</h2>
                <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="<%=request.getContextPath()%>/resources/img/team/1.jpg" alt="">
                    <h4>Kim Seung Hyun</h4>
                    <p class="text-muted">representative</p>
                    <ul class="list-inline social-buttons">
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="<%=request.getContextPath()%>/resources/img/team/2.jpg" alt="">
                    <h4>Park Sung Min</h4>
                    <p class="text-muted">leader</p>
                    <ul class="list-inline social-buttons">
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="<%=request.getContextPath()%>/resources/img/team/3.jpg" alt="">
                    <h4>Lee Yong Hong </h4>
                    <p class="text-muted">responsibility</p>
                    <ul class="list-inline social-buttons">
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
            </div>
        </div>
    </div>
</section>

<!-- Clients -->
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <a href="#">
                    <img class="img-fluid d-block mx-auto" src="<%=request.getContextPath()%>/resources/img/logos/envato.jpg" alt="">
                </a>
            </div>
            <div class="col-md-3 col-sm-6">
                <a href="#">
                    <img class="img-fluid d-block mx-auto" src="<%=request.getContextPath()%>/resources/img/logos/designmodo.jpg" alt="">
                </a>
            </div>
            <div class="col-md-3 col-sm-6">
                <a href="#">
                    <img class="img-fluid d-block mx-auto" src="<%=request.getContextPath()%>/resources/img/logos/themeforest.jpg" alt="">
                </a>
            </div>
            <div class="col-md-3 col-sm-6">
                <a href="#">
                    <img class="img-fluid d-block mx-auto" src="<%=request.getContextPath()%>/resources/img/logos/creative-market.jpg" alt="">

                </a>
            </div>
        </div>
    </div>
</section>

<!-- Contact -->
<section class="page-section" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">Contact Us</h2>
                <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <form id="contactForm" name="sentMessage" novalidate="novalidate">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control" id="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <textarea class="form-control" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-lg-12 text-center">
                            <div id="success"></div>
                            <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Send Message</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="tab/footer.jsp"/>
