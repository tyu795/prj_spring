<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
<br>aaa : <c:out value="${items }"/>
<br>aaa : <c:out value="${fn:length(items) }"/>
<hr>
<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.YYYY }"/>
	<br><c:out value="${item.MM }"/>	
	<br><c:out value="${item.KIT_PROD_QTY }"/>	
	<br><c:out value="${item.KIT_EXPRT_QTY }"/>	
	<br><c:out value="${item.KIT_STOCK_QTY }"/>	
</c:forEach>