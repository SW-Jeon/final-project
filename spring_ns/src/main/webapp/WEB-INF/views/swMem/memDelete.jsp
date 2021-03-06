<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- memDelete -->
<div class="mypage-wrap  mx-auto">
	<!-- mypage area -->
	<div class="mypage-area ">
		<!-- contents -->
		<div class="mypage-con ">
			<!-- 네비바 -->
			<jsp:include page="/WEB-INF/views/swMem/mypageNavi.jsp" />
			<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
				<h1 class="text-info text-center ">계정 탈퇴</h1>
				<h3 class="text-danger text-center mb-5">( 탈퇴를 신중하게 선택 바랍니다. )</h3>
				<img src="${cp }/resources/maincss/images/logo/secret.png" style="float: left; width: 25%;">
				<form role="form" method="post" action="${cp}/memDelete" style="width: 75%; float: right;">
					<div class="form-group">
						<label for="m_phone">전화번호</label><input type="text" class="form-control" name="m_phone" value="${vo.m_phone}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="m_name">이름</label><input type="text" class="form-control" name="m_name" value="${vo.m_name}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="m_mail">이메일</label><input type="email" class="form-control" name="m_mail" value="${vo.m_mail}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="m_pwd">비밀번호</label><input type="text" class="form-control" name="m_pwd">
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary">탈퇴하기</button>
						<button type="reset" class="btn btn-danger">취소</button>
					</div>
				</form>
			</section>
			<!-- //contents -->
		</div>
	</div>
</div>