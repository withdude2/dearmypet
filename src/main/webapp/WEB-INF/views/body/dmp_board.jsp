<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script  src="https://code.jquery.com/jquery-2.2.4.js"></script>
  
<script>
$(function(){
	
	
	
	
	 //삭제선택
	   	  $("#checkall").click(function(){
	        //클릭되었으면
	        if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=names]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=names]").prop("checked",false);
	        }
	    }) 
	    
	    
	   $('#pagination li>a').on('click',function(e){
			e.preventDefault();
			console.log('click');
			var targetPage=$(this).attr('id');
			 adminType=$('#select a').attr('class');
				
			 var form=$('#listform');
			
			$('#page').val(targetPage);
			$('#adminType').val(adminType);
			
 
		form.submit();
		 });

	   
	    //분류 선택
	   $('#select li>a').on('click',function(e){
		   console.log('click');
		  e.preventDefault();
		   var form=$('#listform');
			
			 
		   $('#select li').removeClass();	
		   $(this).parent().attr('class','active');
			var adminType=$(this).attr('class');		
	   		console.log('adminType'+adminType);
			$('#adminType').val(adminType);
			var form=$('#listform');
			form.submit();
 
		  
	   });
	
	  //선택삭제하기 
	   $('#delete').on('click',function(e){
		   console.log('click');
			  e.preventDefault();
			  adminType=$('#select li.active a').attr('class');
				console.log('adminType'+adminType);
				var form=$('#deleteform');
				$('#adminType2').val(adminType);
				console.log($('#adminType2').val());
		  form.submit();
	   
	});
	   
});
</script>
<div class="content-wrap">


	<main id="content" class="content" role="main">

	<div class="content-wrap">
		<!-- main page content. the place to put widgets in. usually consists of .row > .col-md-* > .widget.  -->
<h1 class="page-title">
	<span class="fw-semi-bold">전체 게시판 </span>
</h1>


<div class="row">

	<div class="col-md-2 col-lg-2">
		<a class="btn btn-danger btn-block" id="compose-btn" href="#">분류</a>

	<ul class="nav nav-pills nav-stacked nav-email-folders mt" 	id='select'>
			<li class='<c:out value="${pageVO.adminType==1 || adminType==1? 'active':''}" />'><a href="#" class='1'>  자유게시판</a></li>
			<li class='<c:out value="${pageVO.adminType==2 || adminType==2? 'active':''}" />'><a href="#" class='2'>  보호신고</a></li>
			<li class='<c:out value="${pageVO.adminType==3 || adminType==3? 'active':''}" />'><a href="#" class='3'>  실종신고</a></li>
			 </ul>
		
	</div>
	<div class="col-md-10">
		<section class="widget">
			<header>
				<div class="widget-controls">
					<a href="#"><i class="glyphicon glyphicon-cog"></i></a> <a
						data-widgster="close" href="#"><i
						class="glyphicon glyphicon-remove"></i></a>
				</div>
			</header>
			<div class="widget-body">
				<table class="table">
					<thead>
						<tr>
							<th class="hidden-xs">#</th>
							<th>id</th>
							<th>제목</th>
							<th class="hidden-xs">내용</th>
							<th class="hidden-xs">조회수</th>
							<th class="hidden-xs">Date</th>
							<th><input type="checkbox" id='checkall'></th>
						</tr>
			</thead>

			 	<form action="/admin/delete.dmp"  id="deleteform"  method='get'>
			<tbody>
					<c:forEach items='${list}' var='boardVO'>
					<tr>
						<td class="hidden-xs">${boardVO.mb_no }</td>
						 
						<td>${boardVO.mb_id}</td>
						<td class="width-150">
							<a href="#" data-toggle="modal" data-target="#${boardVO.mb_no}">${boardVO.mb_sub}</a>
						</td>
					 
						<td class="width-150">${boardVO.mb_con}</td>
						
						<td class="hidden-xs text-semi-muted">${boardVO.mb_count}</td>
						 <td class="hidden-xs text-semi-muted">${boardVO.mb_date }</td>
						<td class="hidden-xs text-semi-muted">	<input type="checkbox" name="names"  value='${boardVO.mb_no }'/>
						</td>
						
	
					</tr>
				 </c:forEach>
			
			</tbody>
					<input type='hidden' name='adminType' id='adminType2' value='1'>
				</form>
				 
				
			

			</table>
			<div class="clearfix">
				<div class="pull-right">
					<button class="btn btn-danger width-90 mb-xs"  id='delete'>
						삭제</button>

				</div>
			</div>

			<div class="clearfix mb-xs">
				
					<ul class="pagination pagination-sm widget-email-pagination" id='pagination'>
					
					<c:if test="${ pageVO.prev }">
						<li class="prev"><a href="#" id='${ pageVO.startPage-1}'><i class="fa fa-chevron-left"></i></a></li>
					
					</c:if>
				<c:forEach var='idx'  begin='${pageVO.startPage}' end='${pageVO.endPage}'>
					 
					<c:if test="${pageVO.page==idx}">
						<li class="active"><a href="#" id='${idx}'>${idx}</a></li>
					</c:if>

					<c:if test="${pageVO.page!=idx}">
					<li><a href="#"  id='${idx}'>${idx}</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${pageVO.next && pageVO.endPage > 0 }">
				<li class="next"><a href="#" id='${pageVO.endPage+1}'><i class="fa fa-chevron-right"></i></a></li>
					</c:if>
					</ul>
				</div>
			</div>
						

			 <form action="/admin/board.dmp"  id="listform" method='get'>
						
				<input type='hidden' name='page'  id='page' value='1'>
				<input type='hidden' name='adminType'  id='adminType' value='1'>
				
			</form>
			 		
			
		</div>
		</div>
			</section>
		</div>
	</div>


	</main>
</div>














