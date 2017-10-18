<%@page import="java.nio.charset.CodingErrorAction"%>
<%@page import="org.apache.catalina.util.URLEncoder"%>
<%@page import="java.net.URL"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<nav id="sidebar" class="sidebar" role="navigation">
		<div class="js-sidebar-content">
			<header class="logo hidden-xs">
				<a href="/main.dmp">&nbsp;Dear My Pet</a>
			</header>

			<ul class="sidebar-nav" id="first-nav"><!-- nav상단 -->
				<li><!-- an example of nested submenu. basic bootstrap collapse component -->
					<a class="collapsed" href="/dmp_board.dmp">
						<span class="icon"><i class="fa fa-columns"></i></span> 게시판
					</a>
				</li>
				<li>
					<a href="/dmp_reply.dmp">
						<span class="icon"><i class="fa fa-envelope"></i></span> 댓글
						<span class="label label-danger">7 </span> 
					</a> <!-- 확인하지 않은 게시물수  -->
				</li>
				<li>
					<a class="collapsed" href="#sidebar-extra" data-toggle="collapse" data-parent="#sidebar">
						<span class="icon"><i class="fa fa-leaf"></i></span> 입양 / 분양 <i class="toggle fa fa-angle-down"></i>
					</a>
					<ul id="sidebar-extra" class="collapse">
						<li><a href="/dmp_adoption.dmp">입양</a></li>
						<li><a href="/dmp_parcel.dmp">분양</a></li>
					</ul>
				</li>
			</ul>
			<ul class="sidebar-nav"><!-- nav중단 -->
				<li><!-- an example of nested submenu. basic bootstrap collapse component -->
					<a class="collapsed" href="#sidebar-forms" data-toggle="collapse" data-parent="#sidebar">
						<span class="icon"> <i class="fa fa-users"></i>
						</span> 사용자 <i class="toggle fa fa-angle-down"></i>
					</a>
					<ul id="sidebar-forms" class="collapse">
						<li><a href="/dmp_generalmember.dmp"> 일반회원</a></li>
						<li><a href="/dmp_groupmember.dmp">단체회원</a></li>
					</ul>
				</li>
				<li>
					<a href="/dmp_history.dmp">
						<span class="icon"><i class="glyphicon glyphicon-tree-conifer"></i></span> 히스토리
					</a>
				</li>
			</ul>
			<ul class="sidebar-nav"><!-- nav하단 -->
				<li>
					<a href="/dmp_protectanilist.dmp">
						<span class="icon"><i class="glyphicon glyphicon-th"></i></span> 보호동물 목록
					</a>
				</li>
				<li><!-- an example of nested submenu. basic bootstrap collapse component -->
					<a class="collapsed" href="/dmp_protectgrouplist.dmp">
						<span class="icon">
							<i class="fa fa-table"></i>
						</span> 보호단체 목록
					</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- 네비게이션 토글버튼 관련 -->
	<nav class="page-controls navbar navbar-default">
		<div class="container-fluid">
			<!-- .navbar-header contains links seen on xs & sm screens -->
			<div class="navbar-header">
				<ul class="nav navbar-nav">
					<li>
						<a class="hidden-sm hidden-xs" id="nav-state-toggle" href="#" title="Turn on/off sidebar collapsing" data-placement="bottom">
								<i class="fa fa-bars fa-lg"></i>
						</a>
						<a class="visible-sm visible-xs" id="nav-collapse-toggle" href="#" title="Show/hide sidebar" data-placement="bottom"> 
							<span class="rounded rounded-lg bg-gray text-white visible-xs">
								<i class="fa fa-bars fa-lg"></i>
							</span>
							<i class="fa fa-bars fa-lg hidden-xs"></i>
						</a>
					</li>
					<li class="ml-sm mr-n-xs hidden-xs">
						<a href="#">
							<i class="fa fa-refresh fa-lg"></i>
						</a>
					</li>
					<li class="ml-n-xs hidden-xs">
						<a href="#">
							<i class="fa fa-times fa-lg"></i>
						</a>
					</li>
				</ul>
				<!-- xs & sm screen logo -->
				<a class="navbar-brand visible-xs" href="index.html">
					<i class="fa fa-circle text-gray mr-n-sm"></i> 
					<i class="fa fa-circle text-warning"></i> &nbsp; sing &nbsp; 
					<i class="fa fa-circle text-warning mr-n-sm"></i> 
					<i class="fa fa-circle text-gray"></i>
				</a>
			</div>

			<!-- this part is hidden for xs screens -->
			<div class="collapse navbar-collapse">
				<!-- search form! link it to your search server -->
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<div class="input-group input-group-no-border">
							<span class="input-group-addon"> <i class="fa fa-search"></i>
							</span> <input class="form-control" type="text" placeholder="Search">
						</div>
					</div>
				</form>
			</div>
		</div>
	</nav>