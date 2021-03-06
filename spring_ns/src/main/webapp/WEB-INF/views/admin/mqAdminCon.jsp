<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqContent  -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/>  
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-info text-center pt-3 mb-5">회원님 문의 내역</h1>
					
						<div class="form-group">
							<label for="mq_title">제목</label><input type="text" class="form-control" value="${ vo1.mq_title}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_content">내용</label><input type="text" class="form-control" value="${ vo1.mq_content}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_date">작성일</label><input type="text" class="form-control" value="${vo1.mq_date}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_reply">답변</label><input type="text" class="form-control" value="${vo1.mq_reply}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_state">답변상태</label>
							<input type="text" class="form-control" value="${vo1.mq_state}" readonly="readonly"  >
							<button type="button" class="btn btn-primary mt-3" data-toggle="modal" data-target="#exampleModal">답변달기</button>
						</div>
						</div>
						<button class="btn btn-primary mt-3" onclick="location.href='${cp }/' " style="margin-left: 600px;">홈으로</button>
					</div>
				</div>
			
<!-- 운영자 답변달기 -->
		<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">회원 문의 답변</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form role="form" method="post" action="${cp}/swMem/mqReply" >
					<input type="hidden" name="mq_num" value="${vo1.mq_num }">
					<div class="form-group">
						<label for="mq_reply">운영자 답변</label>
						<textarea rows="5" cols="63" name="mq_reply" style="resize: none;"></textarea>
					</div>	
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">답변하기</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>		
				</form>
			</div>
		</div>
	</div>
</div>
