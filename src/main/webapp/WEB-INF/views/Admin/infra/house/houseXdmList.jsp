<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="ko">
<%@include file="../../include/head.jsp"%>
<body>
<div>
    <%@include file="../../include/header.jsp"%>
    <main>
        <div class="mainBox">
            <div class="mainContainer">
            <%--FORM CONTENT STARTS FROM HERE!!--%>
            <%--FORM CONTENT STARTS FROM HERE!!--%>
                <div class="mainLabelBox">
                    <h2 class="tableLabel">숙박업체 관리</h2>
                    <div class="addBox" onclick="location.href='/houseXdmForm'">
                        <h3 class="tableSubLabel">숙박정보 추가</h3>
                        <span class="material-symbols-outlined">add</span></a>
                    </div>
                </div>
                <form name="search">
                    <div class="searchBox">
                        <!-- <select name="optCodeName">
                            <option value="">코드그룹</option>
                            <option value="3">결제수단</option>
                            <option value="32">성별</option>
                        </select> -->
                        <select name="optDelNy">
                            <option value="">삭제여부</option>
                            <option value="1">삭제</option>
                            <option value="0">미삭제</option>
                        </select>
                        <div class="inputBox">
                            <input id="srcGo" name="shKeyword" class="searchInput" type="text" value="<c:out value="${vo.shKeyword}"/>">
                            <span id="magGlass"class="material-symbols-outlined">search</span>
                        </div>
                    </div>
                </form>
                <div class="tableBox">
                    <table>
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>숙소이름</th>
                            <th>체크인 시간</th>
                            <th>체크아웃 시간</th>
                            <th>환불 규정</th>
                            <th>삭제여부</th>
                            <th></th>
                        </tr>
                        </thead>
                        
                        <div class="mb-3">
 							 <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
  							 <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
						</div>
                        
                        
                        <tbody>
                        <c:choose>
                            <c:when test="${fn:length(list) eq 0}">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><h4 id="nodata">There is no data!</h4></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${list}" var="list" varStatus="status">
                                    <tr>
                                        <td><c:out value="${list.seq}"></c:out></td>
                                        <td><c:out value="${list.room_name}"></c:out></td>
                                        <td><c:out value="${list.check_in_time}"></c:out></td>
                                        <td><c:out value="${list.check_out_time}"></c:out></td>
                                        <td><c:out value="${list.return_policy}"></c:out></td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${list.delNy eq '1'}">
                                                    Y
                                                </c:when>
                                                <c:otherwise>
                                                    N
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td><c:out value="${list.return_policy}"></c:out></td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                        </tbody>
                    </table>
                </div>
        <%--FORM CONTENT ENDS FROM HERE!!--%>
        <%--FORM CONTENT ENDS FROM HERE!!--%>
            </div>
        </div>
    </main>
</div>

</body>
</html>