<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${initParam.rootPath}/assets/plugins/masonry/jquery.masonry.min.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${initParam.rootPath}/assets/js/pages/blog-masonry.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        });
</script>
	<!--[if lt IE 9]>
    <script src="${initParam.rootPath}/assets/plugins/respond.js"></script>
    <script src="${initParam.rootPath}/assets/plugins/html5shiv.js"></script>
    <script src="${initParam.rootPath}/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->