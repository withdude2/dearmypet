<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<body>

	<div class="wrapper">
		<!--=== Breadcrumbs v1 ===-->
		<div class="breadcrumbs-v1 no-padding">
			<img src="assets/img/banner_2.gif" />
		</div>
		<!--=== End Breadcrumbs v1 ===-->
		<!--=== div 991px 이하일때 나오는 배너 ===-->
		<div class="sm-banner">
			<h4>길잃은 아이</h4>
			<h1>보호중 입니다.</h1>
		</div>

		<!--=== Blog Posts ===-->
		<div class="container content-md">
			<div>
				<button class="btn-u btn-right">글쓰기</button>
			</div>
			<!-- News v3 -->

			<div class="row margin-bottom-20">
				<div class="col-sm-5 sm-margin-bottom-20">
					<div class="carousel slide" data-ride="carousel" id="blog-carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#blog-carousel" data-slide-to="0"
								class="active rounded-x"></li>
							<li data-target="#blog-carousel" data-slide-to="1"
								class="rounded-x"></li>
							<li data-target="#blog-carousel" data-slide-to="2"
								class="rounded-x"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="assets/img/1.gif" alt="">
							</div>
							<div class="item">
								<img src="assets/img/2.gif" alt="">
							</div>
							<div class="item">
								<img src="assets/img/3.gif" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="news-v3">
						<ul class="list-inline posted-info">
							<li>5</li>
							<li>작성자</li>
							<li>Posted January 24, 2015</li>
						</ul>

						<h2 class="title-h2">
							<a href="#" data-toggle="modal" data-target="#myModal">가족을 찾아요!</a>
							<ul class="post-shares">
								<li><a href="#"> <i class="rounded-x icon-speech"></i>
										<span>5</span>
								</a></li>
							</ul>
						</h2>
						<p>Nullam elementum tincidunt massa, a pulvinar leo ultricies
							ut. Ut fringilla lectus tellus, imperdiet molestie est volutpat
							at. Sed viverra cursus nibh, sed consectetur ipsum sollicitudin
							sed. Cras erat est, euismod id congue sed, sollicitudin sed odio.
							Nullam non metus in mi rhoncus efficitur...</p>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button aria-hidden="true" data-dismiss="modal" class="close"
										type="button">×</button>
									<h4 id="myModalLabel1" class="modal-title">가족을 찾아요</h4>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-3">
											<img src="https://dummyimage.com/150x150/000/fff" />
										</div>
										<div class="table-responsive col-md-9">
											<table class="table table-bordered board-table">
												<tr>
													<td>종류</td>
													<td class="board-td-margin">개</td>
												</tr>
												<tr>
													<td>품종</td>
													<td class="board-td-margin">슈나우져</td>
												</tr>
												<tr>
													<td>이름</td>
													<td class="board-td-margin">멍멍이</td>
												</tr>
												<tr>
													<td>추정나이</td>
													<td class="board-td-margin">2살</td>
												</tr>
												<tr>
													<td>성별</td>
													<td class="board-td-margin">암컷</td>
												</tr>
												<tr>
													<td>중성화수술여부</td>
													<td class="board-td-margin">Yes</td>
												</tr>

											</table>
										</div>
									</div>
									<hr>
									<h4>보호하게된 경위</h4>
									<p>Cras mattis consectetur purus sit amet fermentum. Cras
										justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
										leo risus, porta ac consectetur ac, vestibulum at eros.</p>
									<p>Praesent commodo cursus magna, vel scelerisque nisl
										consectetur et. Vivamus sagittis lacus vel augue laoreet
										rutrum faucibus dolor auctor.</p>
									<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
										commodo cursus magna, vel scelerisque nisl consectetur et.
										Donec sed odio dui. Donec ullamcorper nulla non metus auctor
										fringilla.</p>
									<p>Cras mattis consectetur purus sit amet fermentum. Cras
										justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
										leo risus, porta ac consectetur ac, vestibulum at eros.</p>
									<p>Praesent commodo cursus magna, vel scelerisque nisl
										consectetur et. Vivamus sagittis lacus vel augue laoreet
										rutrum faucibus dolor auctor.</p>
									<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
										commodo cursus magna, vel scelerisque nisl consectetur et.
										Donec sed odio dui. Donec ullamcorper nulla non metus auctor
										fringilla.</p>
									<p>Cras mattis consectetur purus sit amet fermentum. Cras
										justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
										leo risus, porta ac consectetur ac, vestibulum at eros.</p>
									<p>Praesent commodo cursus magna, vel scelerisque nisl
										consectetur et. Vivamus sagittis lacus vel augue laoreet
										rutrum faucibus dolor auctor.</p>
								</div>
								<div class="modal-footer">
									<button class="btn-u" type="button">글수정</button>
									<button class="btn-u" type="button">글삭제</button>
									<button data-dismiss="modal" class="btn-u btn-u-default"
										type="button">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- End Modal -->
				</div>
				<!--/end row-->
			</div>
			<!-- End News v3 -->
			<!-- News v3 -->

			<div class="row margin-bottom-20">
				<div class="col-sm-5 sm-margin-bottom-20">
					<div class="carousel slide" data-ride="carousel"
						id="blog-carousel-1">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#blog-carousel-1" data-slide-to="0"
								class="active rounded-x"></li>
							<li data-target="#blog-carousel-1" data-slide-to="1"
								class="rounded-x"></li>
							<li data-target="#blog-carousel-1" data-slide-to="2"
								class="rounded-x"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="assets/img/main/img19.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img3.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img24.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="news-v3">
						<ul class="list-inline posted-info">
							<li>4</li>
							<li>작성자</li>
							<li>Posted January 24, 2015</li>
						</ul>

						<h2 class="title-h2">
							<a href="#" data-toggle="modal" data-target="#myModal">게시글제목</a>
							<ul class="post-shares">
								<li><a href="#"> <i class="rounded-x icon-speech"></i>
										<span>5</span>
								</a></li>
							</ul>
						</h2>
						<p>Nullam elementum tincidunt massa, a pulvinar leo ultricies
							ut. Ut fringilla lectus tellus, imperdiet molestie est volutpat
							at. Sed viverra cursus nibh, sed consectetur ipsum sollicitudin
							sed. Cras erat est, euismod id congue sed, sollicitudin sed odio.
							Nullam non metus in mi rhoncus efficitur...</p>
					</div>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button aria-hidden="true" data-dismiss="modal" class="close"
									type="button">×</button>
								<h4 id="myModalLabel1" class="modal-title">게시글제목</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-3">
										<img src="https://dummyimage.com/150x150/000/fff" />
									</div>
									<div class="table-responsive col-md-9">
										<table class="table table-bordered board-table">
											<tr>
												<td>종류</td>
												<td class="board-td-margin">개</td>
											</tr>
											<tr>
												<td>품종</td>
												<td class="board-td-margin">슈나우져</td>
											</tr>
											<tr>
												<td>이름</td>
												<td class="board-td-margin">이리온</td>
											</tr>
											<tr>
												<td>추정나이</td>
												<td class="board-td-margin">2살</td>
											</tr>
											<tr>
												<td>성별</td>
												<td class="board-td-margin">암컷</td>
											</tr>
											<tr>
												<td>중성화수술여부</td>
												<td class="board-td-margin">Yes</td>
											</tr>

										</table>
									</div>
								</div>
								<hr>
								<h4>보호하게된 경위</h4>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
							</div>
							<div class="modal-footer">
									<button class="btn-u" type="button">글수정</button>
									<button class="btn-u" type="button">글삭제</button>
									<button data-dismiss="modal" class="btn-u btn-u-default"
										type="button">Close</button>
								</div>
						</div>
					</div>
				</div>
				<!-- End Modal -->
			</div>
			<!--/end row-->
			<!-- End News v3 -->
			<!-- News v3 -->

			<div class="row margin-bottom-20">
				<div class="col-sm-5 sm-margin-bottom-20">
					<div class="carousel slide" data-ride="carousel"
						id="blog-carousel-2">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#blog-carousel-2" data-slide-to="0"
								class="active rounded-x"></li>
							<li data-target="#blog-carousel-2" data-slide-to="1"
								class="rounded-x"></li>
							<li data-target="#blog-carousel-2" data-slide-to="2"
								class="rounded-x"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="assets/img/main/img19.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img3.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img24.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="news-v3">
						<ul class="list-inline posted-info">
							<li>3</li>
							<li>작성자</li>
							<li>Posted January 24, 2015</li>
						</ul>

						<h2 class="title-h2">
							<a href="#" data-toggle="modal" data-target="#myModal">게시글제목</a>
							<ul class="post-shares">
								<li><a href="#"> <i class="rounded-x icon-speech"></i>
										<span>5</span>
								</a></li>
							</ul>
						</h2>
						<p>Nullam elementum tincidunt massa, a pulvinar leo ultricies
							ut. Ut fringilla lectus tellus, imperdiet molestie est volutpat
							at. Sed viverra cursus nibh, sed consectetur ipsum sollicitudin
							sed. Cras erat est, euismod id congue sed, sollicitudin sed odio.
							Nullam non metus in mi rhoncus efficitur...</p>
					</div>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button aria-hidden="true" data-dismiss="modal" class="close"
									type="button">×</button>
								<h4 id="myModalLabel1" class="modal-title">게시글제목</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-3">
										<img src="https://dummyimage.com/150x150/000/fff" />
									</div>
									<div class="table-responsive col-md-9">
										<table class="table table-bordered board-table">
											<tr>
												<td>종류</td>
												<td class="board-td-margin">개</td>
											</tr>
											<tr>
												<td>품종</td>
												<td class="board-td-margin">슈나우져</td>
											</tr>
											<tr>
												<td>이름</td>
												<td class="board-td-margin">이리온</td>
											</tr>
											<tr>
												<td>추정나이</td>
												<td class="board-td-margin">2살</td>
											</tr>
											<tr>
												<td>성별</td>
												<td class="board-td-margin">암컷</td>
											</tr>
											<tr>
												<td>중성화수술여부</td>
												<td class="board-td-margin">Yes</td>
											</tr>

										</table>
									</div>
								</div>
								<hr>
								<h4>보호하게된 경위</h4>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
							</div>
							<div class="modal-footer">
									<button class="btn-u" type="button">글수정</button>
									<button class="btn-u" type="button">글삭제</button>
									<button data-dismiss="modal" class="btn-u btn-u-default"
										type="button">Close</button>
								</div>
						</div>
					</div>
				</div>
				<!-- End Modal -->
			</div>
			<!--/end row-->
			<!-- End News v3 -->
			<!-- News v3 -->

			<div class="row margin-bottom-20">
				<div class="col-sm-5 sm-margin-bottom-20">
					<div class="carousel slide" data-ride="carousel"
						id="blog-carousel-3">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#blog-carousel-3" data-slide-to="0"
								class="active rounded-x"></li>
							<li data-target="#blog-carousel-3" data-slide-to="1"
								class="rounded-x"></li>
							<li data-target="#blog-carousel-3" data-slide-to="2"
								class="rounded-x"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="assets/img/main/img19.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img3.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img24.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="news-v3">
						<ul class="list-inline posted-info">
							<li>2</li>
							<li>작성자</li>
							<li>Posted January 24, 2015</li>
						</ul>

						<h2 class="title-h2">
							<a href="#" data-toggle="modal" data-target="#myModal">게시글제목</a>
							<ul class="post-shares">
								<li><a href="#"> <i class="rounded-x icon-speech"></i>
										<span>5</span>
								</a></li>
							</ul>
						</h2>
						<p>Nullam elementum tincidunt massa, a pulvinar leo ultricies
							ut. Ut fringilla lectus tellus, imperdiet molestie est volutpat
							at. Sed viverra cursus nibh, sed consectetur ipsum sollicitudin
							sed. Cras erat est, euismod id congue sed, sollicitudin sed odio.
							Nullam non metus in mi rhoncus efficitur...</p>
					</div>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button aria-hidden="true" data-dismiss="modal" class="close"
									type="button">×</button>
								<h4 id="myModalLabel1" class="modal-title">게시글제목</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-3">
										<img src="https://dummyimage.com/150x150/000/fff" />
									</div>
									<div class="table-responsive col-md-9">
										<table class="table table-bordered board-table">
											<tr>
												<td>종류</td>
												<td class="board-td-margin">개</td>
											</tr>
											<tr>
												<td>품종</td>
												<td class="board-td-margin">슈나우져</td>
											</tr>
											<tr>
												<td>이름</td>
												<td class="board-td-margin">이리온</td>
											</tr>
											<tr>
												<td>추정나이</td>
												<td class="board-td-margin">2살</td>
											</tr>
											<tr>
												<td>성별</td>
												<td class="board-td-margin">암컷</td>
											</tr>
											<tr>
												<td>중성화수술여부</td>
												<td class="board-td-margin">Yes</td>
											</tr>

										</table>
									</div>
								</div>
								<hr>
								<h4>보호하게된 경위</h4>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
							</div>
							<div class="modal-footer">
									<button class="btn-u" type="button">글수정</button>
									<button class="btn-u" type="button">글삭제</button>
									<button data-dismiss="modal" class="btn-u btn-u-default"
										type="button">Close</button>
								</div>
						</div>
					</div>
				</div>
				<!-- End Modal -->
			</div>
			<!--/end row-->
			<!-- News v3 -->

			<div class="row margin-bottom-20">
				<div class="col-sm-5 sm-margin-bottom-20">
					<div class="carousel slide" data-ride="carousel"
						id="blog-carousel-4">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#blog-carousel-4" data-slide-to="0"
								class="active rounded-x"></li>
							<li data-target="#blog-carousel-4" data-slide-to="1"
								class="rounded-x"></li>
							<li data-target="#blog-carousel-4" data-slide-to="2"
								class="rounded-x"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="assets/img/main/img19.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img3.jpg" alt="">
							</div>
							<div class="item">
								<img src="assets/img/main/img24.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="news-v3">
						<ul class="list-inline posted-info">
							<li>1</li>
							<li>작성자</li>
							<li>Posted January 24, 2015</li>
						</ul>

						<h2 class="title-h2">
							<a href="#" data-toggle="modal" data-target="#myModal">게시글제목</a>
							<ul class="post-shares">
								<li><a href="#"> <i class="rounded-x icon-speech"></i>
										<span>5</span>
								</a></li>
							</ul>
						</h2>
						<p>Nullam elementum tincidunt massa, a pulvinar leo ultricies
							ut. Ut fringilla lectus tellus, imperdiet molestie est volutpat
							at. Sed viverra cursus nibh, sed consectetur ipsum sollicitudin
							sed. Cras erat est, euismod id congue sed, sollicitudin sed odio.
							Nullam non metus in mi rhoncus efficitur...</p>
					</div>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button aria-hidden="true" data-dismiss="modal" class="close"
									type="button">×</button>
								<h4 id="myModalLabel1" class="modal-title">게시글제목</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-3">
										<img src="https://dummyimage.com/150x150/000/fff" />
									</div>
									<div class="table-responsive col-md-9">
										<table class="table table-bordered board-table">
											<tr>
												<td>종류</td>
												<td class="board-td-margin">개</td>
											</tr>
											<tr>
												<td>품종</td>
												<td class="board-td-margin">슈나우져</td>
											</tr>
											<tr>
												<td>이름</td>
												<td class="board-td-margin">이리온</td>
											</tr>
											<tr>
												<td>추정나이</td>
												<td class="board-td-margin">2살</td>
											</tr>
											<tr>
												<td>성별</td>
												<td class="board-td-margin">암컷</td>
											</tr>
											<tr>
												<td>중성화수술여부</td>
												<td class="board-td-margin">Yes</td>
											</tr>

										</table>
									</div>
								</div>
								<hr>
								<h4>보호하게된 경위</h4>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
									commodo cursus magna, vel scelerisque nisl consectetur et.
									Donec sed odio dui. Donec ullamcorper nulla non metus auctor
									fringilla.</p>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras
									justo odio, dapibus ac facilisis in, egestas eget quam. Morbi
									leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum
									faucibus dolor auctor.</p>
							</div>
							<div class="modal-footer">
								<button data-dismiss="modal" class="btn-u btn-u-default"
									type="button">Close</button>
								<button class="btn-u" type="button">Save changes</button>
							</div>
						</div>
					</div>
				</div>
				<!-- End Modal -->
			</div>
			<!--/end row-->

			<!--Pagination-->
			<div class="text-center">
				<ul class="pagination">
					<li><a href="#">«</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">»</a></li>
				</ul>
			</div>
			<!--End Pagination-->

						<!--=== End Blog Posts ===-->
		<div class="search_select">
			<form action="#" id="sky-form4" class="sky-form">
				<fieldset>
					<legend class="hidden">검색폼</legend>
					<div>
						<label class="select"> <select name="search">
								<option value="1">작성자</option>
								<option value="2">본문</option>
								<option value="3">전체</option>
						</label>
					</div>
					<div>
						<label class="input"> <input type="text" name="" placeholder="검색어를 입력해주세요"/>
					</div>
				</fieldset>
			</form>
		</div>
		</div>
	</div>
	<!--/wrapper-->
	