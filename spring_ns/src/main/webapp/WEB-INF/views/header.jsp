<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header.jsp -->

<script type="text/javascript">
	function lengthcheck(){
    	if(document.sh.keyword.value.length<2){
       		alert("검색값을 2글자이상 입력해주세요~");
       	return false;
    	}else{
     	return true;
   		}
	}
</script>
<style>
	ul li{margin: 0px;  }
	ul li a{margin: 0px; }
 #navi{color:black;}	
</style>

<nav class="navbar navbar-expand-lg  border-bottom  navbar-dark " style="background-color: #F2F2F2;">

	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon">NangMan</span>
	</button>
	<div class="collapse navbar-collapse mx-auto" id="navbarColor01">	
	<!-- brand/logo -->
		<a  class="navbar-brand"href="${cp}/"><img src="${cp }/resources/maincss/images/logo/logoTop.png" alt="logo images"  ></a>
		
	<!-- Links -->
	        <ul class="nav navbar-nav mr-auto "  id="navi">
				<li class="nav-item "><a class="nav-link active " href="#" style="font-size: 1.5em; color:black;">공지사항</a></li>
				<li class="nav-item"><a class="nav-link" href="#"  style="font-size: 1.5em; color:black;">낭만매거진</a></li>
				<li class="nav-item"><a class="nav-link" href="#"  style="font-size: 1.5em; color:black;">낭만스토리</a></li>
			</ul>
		<c:choose>	
			<c:when test="${empty sessionScope.m_phone}">
					<div class="col-lg-2 col-sm-4 col-md-1 ">
						<div class="header__right d-flex justify-content-end"  >
							<div class="log__in " >
								<a class="accountbox-trigger btn btn-block btn-lg btn-danger"  href="#" style="width:150px; height: 50px;">
									<i class ="fas fa-child" style="color: white; "> Sign In</i></a>
							</div>
						</div>
				</div>
			</c:when>
			<c:otherwise>
			<div class="col-lg-1 col-sm-3 col-md-1 mr-2 ">
				<a class="btn btn-block btn-lg btn-danger "  href="#" style="width:150px; height: 60px;"><i class ="fas fa-map-marked-alt "><br> 최근 본 맛집</i></a>
			</div>
			<div class="col-lg-1 col-sm-3 col-md-1 mr-2 ">
				<a class="btn btn-block btn-lg btn-danger "  href="${cp}/swMem/mypage?m_phone=${m_phone}" style="width:150px; height: 60px;"><i class ="fas fa-address-card"><br> MyHOME</i></a>
			</div>		
			<div class="col-lg-1 col-sm-3 col-md-1 justify-content-end"  >
				 <a class="btn btn-block btn-lg btn-danger"  href="${cp}/memLogout" style="width:150px; height: 60px;"><i class ="fas fa-power-off"><br> 로그아웃</i></a>
			</div>
			</c:otherwise>
		</c:choose>
		</div>
</nav>

<!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
		<div class="col-md-2 ml-5" style="float: left; " >
			<div class="logo">
				<a href="${cp}/"><img src="${cp }/resources/maincss/images/logo/logo.png" alt="logo images" ></a>
			</div>
		</div>

        <div class="col-md-6 col-lg-15 col-xl-7 text-right">
          <form action="${cp }/searchList" name="sh" method="post" onsubmit="return lengthcheck()">
            <div class="form-row"  style="width: 800px; padding: 20px; position: relative; left: -230px;">
              <div class="col-lg-9.5 col-md-9 mb-2 mb-md-0">
                <input type="text" class="form-control form-control-lg" placeholder="지역이나 식당명 또는 음식명으로 맛집을 검색하세요." name="keyword" autofocus>
              </div>
              <div class=" col-md-offset-3">
                <button type="submit" class="btn btn-block btn-lg btn-danger"><i class="fa fa-compass">검색하세요!</i></button>
              </div>
            </div>
          </form>
        </div>
</nav>

<!-- Login Form  모달창 -->
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
                
             <!-- 로그인 -->   
                <div class="accountbox__inner tab-content" id="myTabContent" >
                    <div class="accountbox__login tab-pane fade show active" id="log" role="tabpanel" aria-labelledby="log-tab">
                        <form action="${cp }/memLogin"  method="post" >
                            <div class="single-input">
                                <input class="cr-round--lg" type="text"  name="m_phone"  placeholder="전화번호를 입력하세요."  required autofocus
                                   oninvalid="this.setCustomValidity('[ 전화번호 ] 를 입력하셔야합니다.')" onchange="this.setCustomValidity('')">
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="password"  name="m_pwd"  placeholder="비밀번호를 입력하세요."  required
                                    oninvalid="this.setCustomValidity('[ 비밀번호 ] 를 입력하셔야합니다.')" onchange="this.setCustomValidity('')">
                            </div>
                            <div class="single-input">
                                <button type="submit" class="food__btn"><span>Go</span></button>
                            </div>
                          </form> 
                           
                  <!--  회원 전화번호나 비밀번호찾기 -->        
                            <div class="accountbox-login__others">
                                <h6><a href="${cp }/swMem/findPhone">전화번호 찾기</a> | <a href="${cp }/swMem/find">비밀번호 찾기</a></h6>
                            </div>
                    </div>
                    
               <!-- 회원가입 창 -->
                    <div class="accountbox__register tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <form action="${cp }/memInsert" method="post" onsubmit="return validate();">
                            <div class="single-input">
                                <input class="cr-round--lg"  type="text"  name="m_phone"  placeholder="전화번호( -빼고 적어주세요.)"  id="m_phone"  autofocus>
                            </div>
                             <div class="single-input">
                                <input class="cr-round--lg"  type="text"  name="m_name" placeholder="이름"  id="m_name"  >
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="email" name="m_mail" placeholder="이메일"  id="m_mail"  >
                            </div>
                            <div class="single-input">
                                <input class="cr-round--lg" type="password"  name="m_pwd"  placeholder="비밀번호"  id="m_pwd"  >
                            </div>               
                            <div class="single-input">
                                <button type="submit" class="food__btn" ><span>Sign Up</span></button>
                            </div>
                        </form>
                    </div>
                    <span class="accountbox-close-button"><i class="zmdi zmdi-close"></i></span>
                </div>
            </div>
        </div>
<!-- //Login Form -->


<script type="text/javascript">
	//비밀번호는 영문+숫자 8자이상

	function validate() {
		var getPhone = RegExp(/^[0-9]{10,11}$/);
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		var getName = RegExp(/^[가-힣]+$/);
		var getPwd = RegExp(/^[a-zA-Z0-9]{8,16}$/);

		//전화번호 유효성검사
		if($("#m_phone").val()==""){
			alert("전화번호는 꼭 ' - '  제외하고 적어주세요.");
			$("#m_phone").focus();
			return false;
		}
		if (!getPhone.test($("#m_phone").val())) {
			alert("전화번호는 숫자만 적어주세요.");
			$("#m_phone").val("");
			$("#m_phone").focus();
			return false;
		}

		//이름 유효성검사
		if($("#m_name").val()==""){
			alert("이름을 적어주세요.");
			$("#m_name").focus();
			return false;
		}
		if (!getName.test($("#m_name").val())) {
			alert("이름은 한글로 적어주세요.");
			$("#m_name").val("");
			$("#m_name").focus();
			return false;
		}
	
		//이메일이름 유효성검사
		if($("#m_mail").val()==""){
			alert("이메일을 적어주세요.");
			$("#m_mail").focus();
			return false;
		}
		if (!getMail.test($("#m_mail").val())) {
			alert("이메일 형식에 맞게 적어주세요.");
			$("#m_mail").val("");
			$("#m_mail").focus();
			return false;
		}

		//비밀번호 유효성검사
		if($("#m_pwd").val()==""){
			alert("비밀번호를 적어주세요.");
			$("#m_pwd").focus();
			return false;
		}
		if (!getPwd.test($("#m_pwd").val())) {
			alert("비밀번호는 8자이상 영어와 숫자로 적어주세요.");
			$("#m_pwd").val("");
			$("#m_pwd").focus();
			return false;
		}
		 return true;	
	}
</script>

