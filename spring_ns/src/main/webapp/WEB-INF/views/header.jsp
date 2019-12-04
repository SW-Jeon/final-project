<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header.jsp -->
	 <!-- Navigation -->
	<nav class="navbar navbar-light bg-light static-top">
		<div class="container">
			<div class="col-lg-7 col-sm-4 col-md-8 order-1 order-lg-1">
				<div class="logo">
					<a href="${cp}/"> <img src="${cp }/resources/images/logo/nmsk.png" alt="logo images"style="width: 300px; height: 300px;"></a>
				</div>
			</div>
			<div class="col-lg-100 col-sm-4 col-md-4 order-1 order-lg-3">
					<div class="header__right d-flex justify-content-end">
						<div class="log__in">
							<div class="col-12 col-md-30">
								<a class="accountbox-trigger btn btn-block btn-lg btn-danger" href="#"><i class ="zmdizmdi-account-o">Sign In!</i></a>
							</div>
						</div>
					</div>
			</div>
		</div>	
	</nav>

	<!-- Masthead -->
  <div class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5">Build a landing page for your business or project and generate more leads!</h1>
        </div>
        <div class="col-md-50 col-lg-10 col-xl-7 mx-auto">
          <form action="${cp }/findlist" method="post">
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
                <input type="text" class="form-control form-control-lg" placeholder="Search..." name="addr">
              </div>
              <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary">검색하세요!</button>
              </div>
            </div>
          </form>
        </div>
      </div>
	</div>
  </div>
  
   <!-- Login Form -->
        <div class="accountbox-wrapper">
            <div class="accountbox text-left">
                <ul class="nav accountbox__filters" id="myTab" role="tablist">
                    <li>
                        <a class="active" id="log-tab" data-toggle="tab" href="#log" role="tab" aria-controls="log" aria-selected="true">로그인</a>
                    </li>
                    <li>
                        <a id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">회원가입</a>
                    </li>
                </ul>
                <div class="accountbox__inner tab-content" id="myTabContent">
                    <div class="accountbox__login tab-pane fade show active" id="log" role="tabpanel" aria-labelledby="log-tab">
                        <form action="${cp }/login"  method="post">
                            <div class="single-input">
                                <input class="cr-round--lg" type="text" placeholder="Email">
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="password" placeholder="Password">
                            </div>
                            <div class="single-input">
                                <button type="submit" class="food__btn"><span>Go</span></button>
                            </div>
                            <div class="accountbox-login__others">
                                <h6><a href="#">비밀번호 찾기</a></h6>
                                <div class="social-icons">
                                    <ul>
                                        <li class="facebook"><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                                        <li class="twitter"><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                                        <li class="google"><a href="https://www.google.com/"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="accountbox__register tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <form action="${cp }/insert" method="post">
                            <div class="single-input">
                                <input class="cr-round--lg"  type="text"  name="m_phone"  placeholder="전화번호" required="required">
                            </div>
                             <div class="single-input">
                                <input class="cr-round--lg"  type="text"  name="m_name" placeholder="이름" required="required">
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="email" name="m_mail" placeholder="이메일" required="required">
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="password"  name="m_pwd"  placeholder="Password" required="required">
                            </div>               
                          
                            <div class="single-input">
                                <button type="submit" class="food__btn"><span>Sign Up</span></button>
                            </div>
                        </form>
                    </div>
                    <span class="accountbox-close-button"><i class="zmdi zmdi-close"></i></span>
                </div>
            </div>
        </div>
        <!-- //Login Form -->