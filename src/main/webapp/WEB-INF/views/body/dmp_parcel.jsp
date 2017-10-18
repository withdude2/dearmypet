<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<div class="content-wrap">
		<!-- main page content. the place to put widgets in. usually consists of .row > .col-md-* > .widget.  -->
		<main id="content" class="content" role="main">
			<h1 class="page-title">
				<span class="fw-semi-bold">분양 관리</span>
			</h1>
	
			<section class="widget">
	
				<div class="widget-body">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>관리번호</th>
									<th>회원아이디</th>
									<th>게시물번호</th>
									<th>회원아이디</th>
									<th>동물번호</th>
									<th>분양완료일</th>
	
	
								</tr>
	
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Mark</td>
									<td>Otto</td>
									<td><a href="#">ottoto@example.com</a></td>
									<td><span class="badge bg-gray-lighter text-gray">Pending</span></td>
								</tr>
								<tr>
									<td>2</td>
									<td>Jacob</td>
									<td>Thornton</td>
									<td><a href="#">fat.thor@example.com</a></td>
									<td><span class="badge bg-gray-lighter text-gray-light">Unconfirmed</span></td>
								</tr>
								<tr>
									<td>3</td>
									<td>Larry</td>
									<td>the Bird</td>
									<td><a href="#">larry@example.com</a></td>
									<td><span class="badge bg-gray-lighter text-gray">New</span></td>
								</tr>
	
							</tbody>
						</table>
	
						<div class="clearfix">
							<div class="pull-right">
								<button class="btn btn-danger width-90 mb-xs" role="button">
									삭제</button>
								<button class="btn btn-inverse width-90 mb-xs" role="button">
									추가</button>
	
							</div>
						</div>
	
						<div class="clearfix mb-xs">
							<a class="btn btn-default btn-sm width-50 pull-left hide"
								id="back-btn" href="inbox.html"> <i
								class="fa fa-angle-left fa-lg"></i>
							</a>
							<div class="pull-left" id="folder-stats">
								<p class="widget-email-count">Showing 1 - 10 of 96 messages</p>
								<ul class="pagination pagination-sm widget-email-pagination">
									<li class="prev disabled"><a href="#"><i
											class="fa fa-chevron-left"></i></a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li class="next"><a href="#"><i
											class="fa fa-chevron-right"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>

		</main>
	</div>
</div>


<!-- page specific libs -->
<script src="${initParam.rootPath}/vendor/underscore/underscore-min.js"></script>
<script src="${initParam.rootPath}/vendor/backbone/backbone.js"></script>
<script src="${initParam.rootPath}/vendor/backbone.paginator/lib/backbone.paginator.min.js"></script>
<script src="${initParam.rootPath}/vendor/backgrid/lib/backgrid.js"></script>
<script src="${initParam.rootPath}/vendor/backgrid-paginator/backgrid-paginator.js"></script>
<script src="${initParam.rootPath}/vendor/datatables/media/js/jquery.dataTables.js"></script>
<script src="${initParam.rootPath}/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

<!-- page specific js -->
<script src="${initParam.rootPath}/ajax/js/tables-dynamic.js"></script>
