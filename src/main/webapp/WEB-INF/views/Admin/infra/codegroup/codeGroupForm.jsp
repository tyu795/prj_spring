<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form name="form" method="post">
<input name="seq" value="<c:out value="${item.seq}"/>"> <br>
<input name="name" value="<c:out value="${item.name}"/>">
</form>

<button id="btn">저장</button>
<button id="btn2">삭제</button>
<button id="btn3">업데이트</button>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">

	$("#btn").on("click",function() {
		alert("sdfsdf");
	 // $("form[name=formList]").attr("method","get");
		$("form[name=form]").attr("action","/codeGroupUpdt").submit();
	});
	
	
	$("#btn2").on("click",function() {
		alert("sdlfkj");
		$("form[name=form]").attr("action","/codeGroupDelt").submit();
	});
	
	
	$("#btn3").on("click",function() {
		alert("sdlfkj");
		$("form[name=form]").attr("action","/codeGroupInsert").submit();
	});
	
	

</script>





