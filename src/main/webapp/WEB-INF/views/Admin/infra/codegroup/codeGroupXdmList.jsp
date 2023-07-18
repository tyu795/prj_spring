<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
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
                    <h2 class="tableLabel">공통코드 그룹 관리</h2>
                    <div class="addBox" onclick="location.href='/codeGroupXdmForm'">
                        <h3 class="tableSubLabel">공통코드 그룹 추가</h3>
                        <span class="material-symbols-outlined">add</span></a>
                    </div>
                </div>
                <form name="search">
                    <div class="searchBox">
                       <!--  <select name="optCodeGroupName">
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
                            <th>코드이름</th>
                            <th></th>
                            <th>삭제여부</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:choose>
                            <c:when test="${fn:length(list) eq 0}">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><h4 id="nodata">There is no data!</h4></td>
                                    <td></td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${list}" var="list" varStatus="status">
                                    <tr>
                                        <td><c:out value="${list.seq}"></c:out></td>
                                        <td><c:out value="${list.name}"></c:out></td>
                                        <td>
                                            <button class="detailBtn" onclick="location.href='/codeGroupXdmForm?seq=<c:out value = '${list.seq}'/>'">
                                                수정
                                            </button>
                                        </td>
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