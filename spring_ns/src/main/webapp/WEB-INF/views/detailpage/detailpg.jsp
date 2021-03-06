<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#tag {
	margin: auto;
	width: 100px;
	height: 450px;
	left: 1800px;
	top: 300px;
	position: absolute;
	text-align: center;
	z-index: 999;
}

#tag div {
	width: 100px;
	height: 25%;
}

#top {
	
}

#main {
	
}

#main1 {
	
}

#footer {
	
}

#imageinfo ul div li img {
	width: 360px;
	height: 400px;
	margin: 0px;
	display: inline-block;
}

#imageinfo ul div li {
	position: absolute;
	list-style: none;
	width: 370px;
	padding: 0px;
	margin: 0px;
}

table {
	border-collapse: separate;
	border-spacing: 0 15px;
	width: 600px;
}

table tr th { text-align: center;  font-weight: 400;}

table tr td { text-align: center; font-size:1.2em; font-weight: bolder;}

#return {
	position: relative;
	top: 150px;
	z-index: 1;
	border: none;
}

#next {
	position: relative;
	left: 1340px;
	top: 150px;
	z-index: 1;
}
</style>
<script>
window.addEventListener('scroll',function(e){
	var sc=window.scrollY;
	if(sc>=250){
		var tag=document.getElementById("tag"); 
		var ttop=tag.style.top;
		
		tag.style.top=ttop+"px";
		tag.style.position="fixed";
	}
});
</script>
<div>
	<input type="hidden" value="${name }" name="">
	<div style="width: 1870px; height: 400px; position: relative; left: 5px; overflow: hidden;">
		<!-- <input type="button" id="return" onclick="behind()"> -->
		<a href="javascript:behind()"><img src="${cp }/resources/images/test/button1.png" id="return"></a> 
		<a href="javascript:next()"><img src="${cp }/resources/images/test/button2.png" id="next"></a>
		<div style="width: 1430px; height: 400px; left: 0px; position: relative; overflow: hidden" id="imageinfo">
			<ul style="padding: 0px;">
			<c:forEach var="im" items="${list1 }">
			
					<div style="left: 200px;">
						<li style="margin-left: 10px" name="lili">
							<img src="${cp }/resources/maincss/images/test/${im.p_pic }">
						</li>
					</div>
				
			</c:forEach>
			</ul>
		</div>
	</div>
	<h1 class="text-dark text-center mb-3 mt-3">${name }</h1>
	<br>
	<div id="map" style="left: 53%; width: 600px; height: 500px;  position: relative; max-width: 100%;"></div>

	<div style="margin-top: -500px; margin-bottom: 100px; margin-left: 100px; padding:0px; position: relative; width: 700px; max-width: 100%;">

		<table style="color: black;">
			<c:forEach var="vo" items="${list }">
				<tr>
					<th >카테고리</th>
					<td>${vo.d_kind }</td>
				</tr>
				<tr>
					<th>가게번호</th>
					<td>${vo.d_phone }</td>
				</tr>
				<tr>
					<th>가게 주소</th>
					<td>${vo.d_addr }</td>
				</tr>

				<tr>
					<th>메뉴</th>

					<td><c:forEach var="me" items="${list2 }">${me.me_name } : ${me.me_pay }원<br>
						</c:forEach></td>
				<tr>

					<th>주차여부</th>
					<td>${vo.d_park }</td>
				</tr>
				<tr>
					<th>휴업일</th>
					<td>${vo.d_holi }</td>
				</tr>
				<tr>
					<th>영업시간</th>
					<td>${vo.d_time }</td>
				</tr>
				<input type="hidden" value="${vo.d_addr }" id="addr">
				<input type="hidden" value="${vo.d_sname }" id="name">
				<input type="hidden" value="${vo.d_num }" id="dnum">


			</c:forEach>
		</table>
		<input type="hidden" value="${phone }" id="mphone">
	</div>
	<hr>
	<c:forEach var="vo3" items="${list3}">
					<div class="container-fluid" style="margin-left: 100px;">
					<div class="row">
					<div class="col-md-2" style="text-align: center;">
					<img src="${cp }/resources/maincss/images/logo/logo.png"  style="width: 200px;height: 150px;">	<br>
							<c:choose>
								<c:when test="${ vo3.r_score==1 }">
									<img src="${cp}/resources/score/star1.png" >
								</c:when>
								<c:when test="${ vo3.r_score==2 }">
									<img src="${cp}/resources/score/star2.png">
								</c:when>
								<c:when test="${ vo3.r_score==3 }">
									<img src="${cp}/resources/score/star3.png">
								</c:when>
								<c:when test="${ vo3.r_score==4 }">
									<img src="${cp}/resources/score/star4.png">
								</c:when>
								<c:when test="${ vo3.r_score==5 }">
									<img src="${cp}/resources/score/star5.png">
								</c:when>
							</c:choose>					
						</div>			
						<div class="col-md-10" style="margin-top: 30px;">
							${vo3.r_regdate}<br>
							${vo3.r_content }<br><br>
							<img src="${cp}/resources/upload/${vo3.r_pic }" width="100px" height="100px">
						</div>
						
					</div>
					<br>
				</div>
			</c:forEach>
			
	<div id="tag" style="cursor: pointer;">

		
		<c:choose>
			<c:when test="${empty sessionScope.m_phone }">
			<div id="top">
				<a class="modal-trigger" href="#" data-toggle="modal" data-target="#Modal">
					<img title="블로그보러가기" style="width: 100px; height: 100px;" src="${cp }/resources/images/test/blog.png">낭만스토리
				</a>
			</div>
				<div id="main">
					<a class="modal-trigger" href="#" data-toggle="modal" data-target="#Modal"> 
						<img title="찜하기" style="width: 100px; height: 100px;" src="${cp }/resources/images/test/zzim.png">낭만찜
					</a>
				</div>
				<div id="main1">
			<c:forEach var="vo" items="${list }">
			<a class="modal-trigger" href="#" data-toggle="modal" data-target="#Modal">
				<img title="리뷰쓰러가기" style="width: 100px; height: 100px;"src="${cp }/resources/images/test/review.png">낭만리뷰
			</a>
			</c:forEach>
			</div>
			
			<div id="foot">
			<a class="modal-trigger" href="#" data-toggle="modal" data-target="#Modal">
			<img style="width: 100px; height: 100px;"
				src="${cp }/resources/images/test/report.png">신고하기
			</a>
			</div>
			
			</c:when>
			<c:otherwise>
			
				<div id="top">
				<a href="${cp}/blogproinsertpage ">
					<img title="블로그보러가기" style="width: 100px; height: 100px;" src="${cp }/resources/images/test/blog.png">낭만스토리
				</a>
				
			</div>
				<div id="main" onclick="zzim()">
					<img title="찜하기" style="width: 100px; height: 100px;" src="${cp }/resources/images/test/zzim.png">낭만 찜
				</div>
				<div id="main1">
			<c:forEach var="vo" items="${list }">
				<a href="${cp }/pj/review?d_num=${vo.d_num}"><img title="리뷰쓰러가기" style="width: 100px; height: 100px;"src="${cp }/resources/images/test/review.png"></a>낭만리뷰
			</c:forEach>
			</div>
			<div id="foot" ><!--onclick="report()"  -->
				<a class="modal-trigger" href="#" data-toggle="modal" data-target="#reModal">
					<img style="width: 100px; height: 100px;"src="${cp }/resources/images/test/report.png">신고하기
				</a>
			</div>
			</c:otherwise>
		</c:choose>
	</div>
	
	<!-- 신고하기  모달창 -->
	<div class="modal fade" id="reModal" tabindex="-1" role="dialog" aria-labelledby="reModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="reModalLabel">신고</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="#" method="post" role="form">
						<input type="hidden" value="admin" name="a_id">
						<input type="hidden" value="${dnum }" name="d_num">
						<input type="hidden" value="${phone }" name="m_phone">
						<div class="form-group">
							<label for="re_title">제목</label> <input class="form-control"type="text" name="re_title" placeholder="제목을 입력하세요." required
								autofocus oninvalid="this.setCustomValidity('[ 제목 ] 을 입력하셔야합니다..')" onchange="this.setCustomValidity('')">
						</div>
						<div class="form-group">
							<label for="re_category">신고유형</label>
							<input type="radio"  value="위치다름" name="re_category"   > 위치다름
							<input type="radio"  value="위생불량" name="re_category" class="ml-3"  > 위생불량
							<input type="radio"  value="불친절" name="re_category"  class="ml-3"> 불친절
						</div>
						<div class="form-group">
							<label for="re_content">내용</label> <input class="form-control" type="text" name="re_content" placeholder="내용을 입력하세요." required	
							    oninvalid="this.setCustomValidity('[ 내용 ] 을 입력하셔야합니다..')" onchange="this.setCustomValidity('')">
						</div>
						<div class="form-group text-center" >
							<button type="submit"  class="btn btn-primary" onclick="okok()">신고하기</button>
							<button type="reset"class="btn btn-danger">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--신고하기 -->

	<!-- Login Form  모달창 -->
	<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="ModalLabel">로그인</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="${cp }/swMem/memLogin" method="post" role="form">
						<input type="hidden" value="${name }" name="name">
						<div class="form-group">
							<label for="m_phone">전화번호</label> <input class="form-control"type="text" name="m_phone" placeholder="전화번호를 입력하세요." required
								autofocus oninvalid="this.setCustomValidity('[ 전화번호 ] 를 입력하셔야합니다..')" onchange="this.setCustomValidity('')">
						</div>
						<div class="form-group">
							<label for="m_pwd">비밀번호</label> <input class="form-control" type="password" name="m_pwd" placeholder="비밀번호를 입력하세요." required	oninvalid="this.setCustomValidity('[ 비밀번호 ] 를 입력하셔야합니다..')"
								onchange="this.setCustomValidity('')">
						</div>
						<div class="form-group">
							<button type="submit" class="food__btn">
								<span>Go</span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //Login Form -->

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=088923eb526168e58ebc5d418c534e8b&libraries=services"></script>
	<script>
	var x=(window.screen.width/2)-(200/2);
	var y=(window.screen.height/2)-(200/2);
	function okok() {
		self.close();
		window.open('${cp}/infoclose','_blank','status=no,height=200,width=500,left='+x+',top='+y);
	}
	function zzim() {
			var d_num=parseInt(document.getElementById("dnum").value);
			var m_phone=document.getElementById("mphone").value;
			var win;
				win=window.open('${cp}/zzimOk?d_num='+d_num+'&m_phone='+m_phone,'_blank','width=200,height=200,left='+x+',top='+y);	
			}
		//var scroll=window.scrollY;
		//alert(scroll);
		
		//if(scroll>218){
		//	var tag=document.getElementById("tag");
		//	tag.style.position="fixed";
		//}
		var dnum=document.getElementById("dnum").value;
		var x=(window.screen.width/2)-(200/2);
		var y=(window.screen.height/2)-(200/2);
		function report(){
			var kk;
			kk=window.open('${cp}/report?dnum='+dnum,'_blank','width=500,height=500,left='+x+',top='+y);
			kk.focus();
		}
		var imageinfo = document.getElementById("imageinfo");
		var n = 370;
		var imgs = parseInt(imageinfo.style.left) - n;
		var lili = document.getElementsByName("lili");
		
		for (var i = 0; i < lili.length; i++) {	
			//var k = parseInt(lili[i].style.left)  370;
			var k = i*370;
			lili[i].style.left = k + "px";
		}
		
		
		function next() {
			
			for (var i = 0; i < lili.length; i++) {	
				var k = parseInt(lili[i].style.left)+ 370;
				//var k = i*370;
				lili[i].style.left = k + "px";
				if(k>2190){
					lili[i].style.left=10+"px";
				}

			}
		}
		function behind() {
			//var k=parseInt(imageinfo.style.left)-370;
			//alert(k);
			//imageinfo.style.left=k+"px";
			//if(k<-740){
			//imageinfo.style.left=1900+"px";

			//}
			
			//alert(lili[0].style.left);
			for (var i = 0; i < lili.length; i++) {	
			var k = parseInt(lili[i].style.left)- 370;
			//var k = i*370;
			lili[i].style.left = k + "px";
			if(k<-740){
				lili[i].style.left=1450+"px";
			}

		}
			
		}
		var mapOption;
		var map;
		var addr = document.getElementById("addr").value;
		var name = document.getElementById("name").value;

		var g = addr;
		// 지도 만들기
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667),
			level : 3
		};
		var mapContainer = document.getElementById("map");
		map = new kakao.maps.Map(mapContainer, mapOption);
		var imageSrc = "${cp}/resources/maincss/images/logo/111.png", imageSize = new kakao.maps.Size(
				66, 69), imageOption = {
			offset : new kakao.maps.Point(27, 69)
		};
		// 주소로 좌표변환 객체 생성
		var geocoder = new kakao.maps.services.Geocoder();
		// 주소로 좌표를 검색

		geocoder.addressSearch(g,function(result, status) {

							if (status === kakao.maps.services.Status.OK) {
								var markerImage = new kakao.maps.MarkerImage(
										imageSrc, imageSize, imageOption), markerPosition = new kakao.maps.LatLng(
										result[0].y, result[0].x);
								map.setCenter(markerPosition);

								// 받은 좌표값으로 마커 생성
								var marker = new kakao.maps.Marker({
									map : map,
									position : markerPosition,
									image : markerImage,
									clickable : true

								});

								var moinfo = '<div style="width:200px;text-align:center;padding:0;"><p style="font-size:30px;color:black;">'
										+ name
										+ "</P><br>  주소:"
										+ addr
										+ '</div>';
								var infowindow = new kakao.maps.InfoWindow({

									content : moinfo

								});

								kakao.maps.event.addListener(marker,
										'mouseover', function() {

											infowindow.open(map, marker);

											//location.href="${cp}/";
										});
								kakao.maps.event.addListener(marker,
										'mouseout', function() {

											infowindow.close();
											//location.href="${cp}/";
										});

							}
						});
	</script>
</div>
