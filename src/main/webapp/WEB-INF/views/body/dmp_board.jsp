<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="content-wrap">
		<main id="content" class="content" role="main">

		<div class="content-wrap">
			<!-- main page content. the place to put widgets in. usually consists of .row > .col-md-* > .widget.  -->
			<h1 class="page-title">
				<span class="fw-semi-bold">전체 게시판</span>
			</h1>


			<div class="row">

				<div class="col-md-2 col-lg-2">
					<a class="btn btn-danger btn-block" id="compose-btn" href="#">분류</a>

					<ul class="nav nav-pills nav-stacked nav-email-folders mt"
						id="folders-list">
						<li class="active"><a href="inbox.html"> <span
								class="badge pull-right">2</span> 자유게시판
						</a></li>
						<li><a href="#">보호신고</a></li>
						<li><a href="#">실종신고</a></li>
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
										<th>image</th>
										<th>writer</th>
										<th class="hidden-xs">passwd</th>
										<th class="hidden-xs">content</th>
										<th class="hidden-xs">Date</th>
										<th><input type="checkbox"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="hidden-xs">1</td>
										<td><img class="img-rounded"
											src="demo/img/pictures/1.jpg" alt="" height="50"></td>
										<td>Palo Alto</td>
										<td class="hidden-xs">
											<p class="no-margin">
												<small> <span class="fw-semi-bold">Type:</span> <span
													class="text-semi-muted">&nbsp; JPEG</span>
												</small>
											</p>
											<p>
												<small> <span class="fw-semi-bold">Dimensions:</span>
													<span class="text-semi-muted">&nbsp; 200x150</span>
												</small>
											</p>
										</td>
										<td class="hidden-xs text-semi-muted">September 14, 2012
										</td>
										<td class="hidden-xs text-semi-muted">45.6 KB</td>
										<td class="width-150">
											<div class="progress progress-sm mt-xs js-progress-animate">
												<div class="progress-bar progress-bar-success"
													data-width="29%" style="width: 0;"></div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="hidden-xs">2</td>
										<td><img class="img-rounded"
											src="demo/img/pictures/2.jpg" alt="" height="50"></td>
										<td>The Sky</td>
										<td class="hidden-xs">
											<p class="no-margin">
												<small> <span class="fw-semi-bold">Type:</span> <span
													class="text-semi-muted">&nbsp; PSD</span>
												</small>
											</p>
											<p>
												<small> <span class="fw-semi-bold">Dimensions:</span>
													<span class="text-semi-muted">&nbsp; 2400x1455</span>
												</small>
											</p>
										</td>
										<td class="hidden-xs text-semi-muted">November 14, 2012</td>
										<td class="hidden-xs text-semi-muted">15.3 MB</td>
										<td class="width-150">
											<div class="progress progress-sm mt-xs js-progress-animate">
												<div class="progress-bar progress-bar-warning"
													data-width="33%" style="width: 0;"></div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="hidden-xs">3</td>
										<td><img class="img-rounded"
											src="demo/img/pictures/3.jpg" alt="" height="50"></td>
										<td>Down the road <br> <span
											class="label label-danger">INFO!</span>
										</td>
										<td class="hidden-xs">
											<p class="no-margin">
												<small> <span class="fw-semi-bold">Type:</span> <span
													class="text-semi-muted">&nbsp; JPEG</span>
												</small>
											</p>
											<p>
												<small> <span class="fw-semi-bold">Dimensions:</span>
													<span class="text-semi-muted">&nbsp; 200x150</span>
												</small>
											</p>
										</td>
										<td class="hidden-xs text-semi-muted">September 14, 2012
										</td>
										<td class="hidden-xs text-semi-muted">49.0 KB</td>
										<td class="width-150">
											<div class="progress progress-sm mt-xs js-progress-animate">
												<div class="progress-bar progress-bar-gray" data-width="38%"
													style="width: 0;"></div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="hidden-xs">4</td>
										<td><img class="img-rounded"
											src="demo/img/pictures/4.jpg" alt="" height="50"></td>
										<td>The Edge</td>
										<td class="hidden-xs">
											<p class="no-margin">
												<small> <span class="fw-semi-bold">Type:</span> <span
													class="text-semi-muted">&nbsp; PNG</span>
												</small>
											</p>
											<p>
												<small> <span class="fw-semi-bold">Dimensions:</span>
													<span class="text-semi-muted">&nbsp; 210x160</span>
												</small>
											</p>
										</td>
										<td class="hidden-xs text-semi-muted">September 15, 2012
										</td>
										<td class="hidden-xs text-semi-muted">69.1 KB</td>
										<td class="width-150">
											<div class="progress progress-sm mt-xs js-progress-animate">
												<div class="progress-bar progress-bar-danger"
													data-width="17%" style="width: 0;"></div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="hidden-xs">5</td>
										<td><img class="img-rounded"
											src="demo/img/pictures/11.jpg" alt="" height="50"></td>
										<td>Fortress</td>
										<td class="hidden-xs">
											<p class="no-margin">
												<small> <span class="fw-semi-bold">Type:</span> <span
													class="text-semi-muted">&nbsp; JPEG</span>
												</small>
											</p>
											<p>
												<small> <span class="fw-semi-bold">Dimensions:</span>
													<span class="text-semi-muted">&nbsp; 1452x1320</span>
												</small>
											</p>
										</td>
										<td class="hidden-xs text-semi-muted">October 1, 2012</td>
										<td class="hidden-xs text-semi-muted">2.3 MB</td>
										<td class="width-150">
											<div class="progress progress-sm mt-xs js-progress-animate">
												<div class="progress-bar" data-width="41%" style="width: 0;"></div>
											</div>
										</td>
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
			</div>
		</div>


		</main>
	</div>














 