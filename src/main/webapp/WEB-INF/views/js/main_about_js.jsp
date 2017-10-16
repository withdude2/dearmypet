<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<script type="text/javascript" src="${initParam.rootPath}/assets/plugins/jquery-appear.js"></script>
	<script type="text/javascript" src="${initParam.rootPath}/assets/plugins/jquery.parallax.js"></script>
	<script type="text/javascript" src="${initParam.rootPath}/assets/plugins/counter/waypoints.min.js"></script>
	<script type="text/javascript" src="${initParam.rootPath}/assets/plugins/counter/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="${initParam.rootPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>

	<!-- JS Page Level -->
	<script type="text/javascript" src="${initParam.rootPath}/assets/js/plugins/progress-bar.js"></script>
	<script type="text/javascript" src="${initParam.rootPath}/assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			App.initCounter();
			App.initParallaxBg();
			OwlCarousel.initOwlCarousel();
			ProgressBar.initProgressBarVertical();
		});
	</script>
<!--[if lt IE 9]>
    <script src="${initParam.rootPath}/assets/plugins/respond.js"></script>
    <script src="${initParam.rootPath}/assets/plugins/html5shiv.js"></script>
    <script src="${initParam.rootPath}/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->