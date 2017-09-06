<%@page import="java.nio.charset.CodingErrorAction"%>
<%@page import="org.apache.catalina.util.URLEncoder"%>
<%@page import="java.net.URL"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- footer start -->
	<footer class="">
		<div class="">
			/WEB-INF/views/layout/footer.jsp
		</div>
	</footer>
	<!-- footer end-->

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="${initParam.rootPath}/js/bootstrap.min.js"></script>

	<!--common script for all pages-->
	<script src="${initParam.rootPath}/js/common-scripts.js"></script>
	
<%String strCurrentUrl = request.getScheme() + "://dearmypet.net" +request.getAttribute("url");%>
	
	
	<script>
	   	
	    var orginUrl = "<%=strCurrentUrl%>";
	    var encodeUrl = encodeURIComponent(orginUrl);
	    
	
		var snsShare = {
				shareFb : function(){ //페이스북
				
					    window.open("http://www.facebook.com/sharer/sharer.php?u="+encodeUrl, 'shareOn2', "width=600, height=500, scrollbars=no");
				},
				shareTw : function(){ // 트위터
				    //https://twitter.com/intent/tweet?text=TEXT&url=PAGE_URL
				    window.open("https://twitter.com/intent/tweet?text="+jQuery("#og_title").attr("content")+"&url=<%=strCurrentUrl%>", "_blank","toolbar=0,status=0,width=626,height=436");
				},
				shareGp : function(){ // 구글 플러스
					window.open("https://plus.google.com/share?url=<%=strCurrentUrl%>", "sharer","toolbar=0,status=0,width=626,height=436");
				}				
			};
	</script>

