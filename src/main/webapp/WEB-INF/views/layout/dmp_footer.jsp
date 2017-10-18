<%@page import="java.nio.charset.CodingErrorAction"%>
<%@page import="org.apache.catalina.util.URLEncoder"%>
<%@page import="java.net.URL"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- common libraries. required for every page-->
<script src="${initParam.rootPath}/vendor/jquery/dist/jquery.min.js"></script>
<script src="${initParam.rootPath}/vendor/jquery-pjax/jquery.pjax.js"></script>
<script src="${initParam.rootPath}/vendor/bootstrap-sass/assets/javascripts/bootstrap/transition.js"></script>
<script src="${initParam.rootPath}/vendor/bootstrap-sass/assets/javascripts/bootstrap/collapse.js"></script>
<script src="${initParam.rootPath}/vendor/bootstrap-sass/assets/javascripts/bootstrap/dropdown.js"></script>
<script src="${initParam.rootPath}/vendor/bootstrap-sass/assets/javascripts/bootstrap/button.js"></script>
<script src="${initParam.rootPath}/vendor/bootstrap-sass/assets/javascripts/bootstrap/tooltip.js"></script>
<script src="${initParam.rootPath}/vendor/bootstrap-sass/assets/javascripts/bootstrap/alert.js"></script>
<script src="${initParam.rootPath}/vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${initParam.rootPath}/vendor/widgster/widgster.js"></script>
<script src="${initParam.rootPath}/vendor/pace.js/pace.min.js"></script>
<script src="${initParam.rootPath}/vendor/jquery-touchswipe/jquery.touchSwipe.js"></script>

<!-- common app js -->
<script src="${initParam.rootPath}/ajax/js/settings.js"></script>
<script src="${initParam.rootPath}/ajax/js/app.js"></script>