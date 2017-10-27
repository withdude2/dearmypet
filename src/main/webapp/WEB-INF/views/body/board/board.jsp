<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>

	$(function() {

		$('.pagination li a').on('click', function(e) {
			e.preventDefault();
			var targetPage = $(this).attr('id');
			var form = $('#sky-form4');
			$('#page').val(targetPage);
			form.attr('method', 'get');
			form.submit();
		});
	 
		$('#delete').on('click',function(e) {
					console.log('click');
					e.preventDefault();
					location.href = '/board/delete.dmp?mb_no='
							+ $('.modal.fade.in').attr('id');
		});

		$('#reply').on('click', function(e) {
			console.log('click');
			e.preventDefault();
			var replyPage=1;
		
			var mb_no = $('.modal.fade.in').attr('id')
 
			console.log('mb_no'+ mb_no);
			var str='';
			$.ajax({

				type : "post",
				url : "/reply/" + mb_no + "/reply.jsn",
				data : {
					page:replyPage
				},
				 
				success : function(data) {
						var str='';
					
						var vo;
					for (i in data.replylist) {
					
						console.log('replylis data[i]='+data.replylist[i]);
						listvo=data.replylist[i];
						
						
			 str += '<li> 아이디:' + listvo.re_id +' 내용:'+listvo.re_id+'</li>'
					}
					str = str + '</ul><ul  class="pagination" id="replypaging">';
					if(data.pageVO.prev){
						str+='<li><a href="#" class="'+(data.pageVO.startPage-1)+'"><span aria-hidden="true"> &lsaquo;</span></a></li>';
						}
					
					 
					 
							console.log(' pre='+data.pageVO.prev);

							console.log(' start='+data.pageVO.startPage);

							console.log(' end='+data.pageVO.endPage);
							
							pageVO=data.pageVO[i]
									
							for(var index=1; index<=data.pageVO.endPage ;index++){
								
							if(index==data.pageVO.page){
								str+='<li><a href="#" class="'+index+'">'+ index+'</a></li>';
							}
							if(index!=data.pageVO.page){
								str+='<li><a  href="#" class="'+index+'">'+ index+'</a></li>';
							}
						
						
				
				 
						
						if(data.pageVO.next && data.pageVO.endPage > 0 ){
							str+='<li><a href="#" aria-label="Next" class="'+(data.pageVO.endPage+1)+'"> <span aria-hidden="true">&rsaquo;</span></a></li>';
							}
				 
						}
					 
					
					console.log(str);
					$('.board .board-reply').empty();
					
					
					$('.board .board-reply').append(str);
	
					
				}
			});
		
		});
		
		
		
 	$('#replyadd').on('click', function(e) {
			console.log('click');
			var writer=$('#replywriter').val();
			var content=$('#replycon').val();
			var mb_no = $('.modal.fade.in').attr('id');
			
			$.ajax({

				type : "post",
				url : "/reply/add.jsn",
				data : {
					mb_no:mb_no,
					re_id:writer,
					re_con:content
				},
				 
				success : function(data) {
						var str='';
					
						var vo;
					for (i in data.replylist) {
					
						console.log('replylis data[i]='+data.replylist[i]);
						listvo=data.replylist[i];
						
						
			 str += '<li> 아이디:' + listvo.re_id +' 내용:'+listvo.re_id+'</li>'
					}
					str = str + '</ul><ul  class="pagination" id="replypaging">';
					if(data.pageVO.prev){
						str+='<li><a href="#" class="'+(data.pageVO.startPage-1)+'"><span aria-hidden="true"> &lsaquo;</span></a></li>';
						}
					
					 
					 
							console.log(' pre='+data.pageVO.prev);

							console.log(' start='+data.pageVO.startPage);

							console.log(' end='+data.pageVO.endPage);
							
							pageVO=data.pageVO[i]
									
							for(var index=1; index<=data.pageVO.endPage ;index++){
								
							if(index==data.pageVO.page){
								str+='<li><a href="#" class="'+index+'">'+ index+'</a></li>';
							}
							if(index!=data.pageVO.page){
								str+='<li><a  href="#" class="'+index+'">'+ index+'</a></li>';
							}
						
						
				
				 
						
						if(data.pageVO.next && data.pageVO.endPage > 0 ){
							str+='<li><a href="#" aria-label="Next" class="'+(data.pageVO.endPage+1)+'"> <span aria-hidden="true">&rsaquo;</span></a></li>';
							}
				 
						}
					 
					
					console.log(str);
				$('.board .board-reply').empty();
					
					
					$('.board .board-reply').append(str);
	
					
		}
					});
		 	});
		
  
			$(document).on('click','#replypaging li a',function(e) {
				
				console.log('text');
				e.preventDefault();
				var page=$(this).attr('class');
				var mb_no = $('.modal.fade.in').attr('id');
				
				$.ajax({

					type : "post",
					url : "/reply/" + mb_no + "/reply.jsn",
					data : {
						page:page
					},
					 
					success : function(data) {
							var str='';
						
							var vo;
						for (i in data.replylist) {
						
							console.log('replylis data[i]='+data.replylist[i]);
							listvo=data.replylist[i];
							
							
				 str += '<li> 아이디:' + listvo.re_id +' 내용:'+listvo.re_id+'</li>'
						}
						str =  str + '</ul><ul  class="pagination" id="replypaging">';
						if(data.pageVO.prev){
							str+='<li><a href="#" class="'+(data.pageVO.startPage-1)+'"><span aria-hidden="true"> &lsaquo;</span></a></li>';
							}
						
						 
						 
								console.log(' pre='+data.pageVO.prev);

								console.log(' start='+data.pageVO.startPage);

								console.log(' end='+data.pageVO.endPage);
								
								pageVO=data.pageVO[i]
										
								for(var index=1; index<=data.pageVO.endPage ;index++){
									
								if(index==data.pageVO.page){
									str+='<li><a href="#" class="'+index+'">'+ index+'</a></li>';
								}
								if(index!=data.pageVO.page){
									str+='<li><a  href="#" class="'+index+'">'+ index+'</a></li>';
								}
							
							
					
					 
							
							if(data.pageVO.next && data.pageVO.endPage > 0 ){
								str+='<li><a href="#" aria-label="Next" class="'+(data.pageVO.endPage+1)+'"> <span aria-hidden="true">&rsaquo;</span></a></li>';
								}
					 
							}
							 
								
								console.log(str);
								$('.board .board-reply').empty();
								
								
								$('.board .board-reply').append(str);
				
								
						}
								});
					 	});
					
		});
	 
</script>
<style>
	.update {
		border: none;
		border-right: 0px;
		border-top: 0px;
		boder-left: 0px;
		boder-bottom: 0px;
	}
	.replypaging{
	float:left;
	}
	
	
</style>

<!-- 	기본게시판 		-->
	<div class="wrapper">
		<!--=== Breadcrumbs v1 ===-->
		<div class="breadcrumbs-v1 no-padding">
			<img src="assets/img/banner_3.gif" />
		</div>
		<!--=== div 991px 이하일때 나오는 배너 ===-->
		<div class="sm-banner">
			<h4>저희 아이를</h4>
			<h1>찾아주세요</h1>
		</div>
		<!--=== Blog Posts ===-->
		<div class="container content-md"     >
			<div>
				<button class="btn-u btn-right"  data-toggle="modal"  data-target="#create">글쓰기</button>
			</div>
			 							<!-- News v3 -->
			<c:forEach items='${list}' var='boardVO'>
				<div class="row margin-bottom-20">
						<div class="news-v3">
							<ul class="list-inline posted-info">
								<li>${boardVO.mb_no}</li>
								<li>${boardVO.mb_id}</li>
								<li>Posted ${boardVO.mb_date}</li>
							</ul>
							<h2 class="title-h2">
								<a href="#" data-toggle="modal" data-target="#${boardVO.mb_no}">${boardVO.mb_sub}</a>
							</h2><p>${mb_con}</p>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="${boardVO.mb_no}" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button aria-hidden="true" data-dismiss="modal" class="close"
											type="button">×</button>
										<h4 id="myModalLabel1" class="modal-title">
											 ${boardVO.mb_sub} 
										</h4>
									</div>		
							    </div>
							    <div class="board-content">
									<hr>
									<h4>본문내용</h4>
									<p> ${boardVO.mb_con}</p>
								 </div>
								<div class="reply">
									<input type="text" id='replywriter' value='${sessionScope.id}'>	
									<input type="text" id='replycon'>	
								</div>
								<div class="board">
									<ul class="board-reply">
									</ul>
								</div>
							<div class="modal-footer">
								<button class="btn-u" type="button" id='reply'>댓글</button>
								<button class="btn-u" type="button" id='replyadd'>댓글추가</button>
								<button class="btn-u" type="submit" id='update'>글수정</button>
								<button class="btn-u" type="submit" id='delete'>글삭제</button>
								<button data-dismiss="modal" class="btn-u btn-u-default" type="button">Close</button>
							</div>
							</div>
							</div>
						<!-- End Modal -->
				</div>
				<!--/End News v3-->
			</c:forEach>
		 </div>
			<!-- Blog Posts -->
		 
			<!--Pagination-->
		<div class="text-center">
			<ul class="pagination">
			<c:if test="${ pageVO.prev }">
				<li><a href="/board/board.dmp${pageVO.makeSearch(pageVO.startPage-1)}"  id='${pageVO.startPage-1	}'>&laquo;</a></li>
			</c:if>
			<c:forEach var='idx'  begin='${pageVO.startPage}' end='${pageVO.endPage}'>
				 
				<c:if test="${pageVO.page==idx}">
					<li class="active"><a href="/board/board.dmp${pageVO.makeSearch(idx)}" id='${idx}'>${idx}</a></li>
				</c:if>

				<c:if test="${pageVO.page!=idx}">
				<li><a href="/board/board.dmp${pageVO.makeSearch(idx)}"  id='${idx}'>${idx}</a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pageVO.next && pageVO.endPage > 0 }">
				<li><a href="/board/board.dmp${pageVO.makeSearch(pageVO.endPage+1)}"  id='${pageVO.endPage+1}'>&raquo;</a></li>
			</c:if>
			</ul>
		</div>
			<!--End Pagination-->

						<!--=== End Blog Posts ===-->
	<form action="/board/board.dmp"  id="sky-form4" class="sky-form" method='get'>
		<div class="search_select">
				<fieldset>
					<legend class="hidden">검색폼</legend>
					<div>
						<label class="select"> 
<!--	검색조건 n:조건없음 , t: 제목 , c: 내용 , w:작성자 -->
						<select name="searchType">
							<option value='n'  <c:out value="${pageVO.searchType==null?'selected':''}" />>선택해주세요</option>
						 	<option value='t'  <c:out value="${pageVO.searchType eq 't' ?'selected':''}" />>제목</option>
						 	<option value='c'  <c:out value="${pageVO.searchType eq 'c' ?'selected':''}" />>내용</option>
						 	<option value='w'  <c:out value="${pageVO.searchType eq 'w' ?'selected':''}" />>작성자</option>
						 	<option value='tc' <c:out value="${pageVO.searchType eq 'tc' ?'selected':''}" />>제목+내용</option>
						 	<option value='cw' <c:out value="${pageVO.searchType eq 'cw' ?'selected':''}" />>내용+작성자</option>
						 	<option value='tcw' <c:out value="${pageVO.searchType eq 'tcw'? 'selected':''}" />>전체</option>
					 	</select>
						</label>
					</div>
					<div>
						<label class="input">
							<input id='search' type="text" name="keyword" placeholder="검색어를 입력해주세요"/>
						</label>
					</div>
				</fieldset>
		</div>	 
		<input type='hidden' name='page'  id='page' value='1'>
	</form>
			 		
			
	<!--글쓰기 Modal -->
	<form id='createForm' action='/board/register.dmp' method='post'>
		<div class="modal fade" id="create" tabindex="-1" role="dialog"	aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							type="button">×</button>
						<h4 id="myModalLabel1" class="modal-title">제목:<input  class='create' type="text" name="mb_sub" ></h4>
					</div>		
			    </div>
			    <div class="board-content">
					<hr>
					<h4>본문내용</h4>
					<p> 
					<p><textarea cols="60" rows="20"  class='create' name='mb_con' ></textarea></p>
				</div>
			 
				<input type='hidden' name='mb_con'/>
				<input type='hidden' name='mb_id' value='${sessionScope.id}'/>
				<input type='hidden' name='lg_no' value='1'/>
				<div class="modal-footer">
					<button class="btn-u btn-default" type="submit" id="finish">완료</button>
					<button data-dismiss="modal" class="btn-u btn-u-default" type="button">Close</button>
				</div>
			</div>
		</div>
	</form>	
</div>
 

