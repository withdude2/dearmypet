<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<script src="${initParam.rootPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script src="${initParam.rootPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
	<script src="${initParam.rootPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
	<script src="${initParam.rootPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="${initParam.rootPath}/assets/js/forms/reg.js"></script>
	<script type="text/javascript" src="${initParam.rootPath}/assets/js/forms/login.js"></script>
	<script type="text/javascript">

	    jQuery(document).ready(function() {
	        App.init();
	        RegForm.initRegForm();
	        LoginForm.initLoginForm();
	        });

	</script>
<!--[if lt IE 9]>
    <script src="${initParam.rootPath}/assets/plugins/respond.js"></script>
    <script src="${initParam.rootPath}/assets/plugins/html5shiv.js"></script>
    <script src="${initParam.rootPath}/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->