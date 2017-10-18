<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<div class="content-wrap">
		<main id="content" class="content" role="main">
			<h1 class="page-title">
				<span class="fw-semi-bold">단체회원</span>
			</h1>
			<section class="widget">
				<div class="widget-body">
					<h3>
						Stripped <span class="fw-semi-bold">Table</span>
					</h3>
					<p>
						Each row is highlighted. You will never lost there. Just
						<code>.table-striped</code>
						it.
					</p>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>
									<div class="checkbox">
										<input id="checkbox1" type="checkbox" data-check-all> <label
											for="checkbox1"></label>
									</div>
								</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Info</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="checkbox">
										<input id="checkbox2" type="checkbox"> <label
											for="checkbox2"></label>
									</div>
								</td>
								<td>Mark</td>
								<td>Otto</td>
								<td><span class="label label-danger">Online</span></td>
							</tr>
							<tr>
								<td>
									<div class="checkbox">
										<input id="checkbox3" type="checkbox"> <label
											for="checkbox3"></label>
									</div>
								</td>
								<td>Jacob <span class="label label-warning text-gray-dark">ALERT!</span></td>
								<td>Thornton</td>
								<td><span class="label bg-gray-light">Away</span></td>
							</tr>
							<tr>
								<td>
									<div class="checkbox">
										<input id="checkbox4" type="checkbox"> <label
											for="checkbox4"></label>
									</div>
								</td>
								<td>Larry</td>
								<td>the Bird</td>
								<td><span class="label label-danger">Construct</span></td>
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
			</section>
		</main>
	</div>
</div>