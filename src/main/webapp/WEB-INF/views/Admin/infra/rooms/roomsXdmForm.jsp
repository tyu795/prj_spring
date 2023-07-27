<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
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

    <%--WHEN SEQ IS NULL--%>
    <%--WHEN SEQ IS NULL--%>
    <%--WHEN SEQ IS NULL--%>
    <%--WHEN SEQ IS NULL--%>
                <c:choose>
                 <c:when test="${empty item.seq }">
                    <div class="mainLabelBox">
                        <h2 class="tableLabel">숙박정보 추가</h2>
                        <div class="addBox" onclick="location.href='/roomsXdmList'">
                           <h3 class="tableSubLabel">숙박정보 목록</h3>
                            <span id="back2list" class="material-symbols-outlined">clear_all</span>
                        </div>
                    </div>
                        <div class="tableBox_form">
                            <table>
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>숙소이름</th>
                                        <th>체크인</th>
                                        <th>체크아웃</th>
                                        <th>환불규정</th>
                                        <th>삭제여부</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <form name="insertForm">
                                            <td></td>
                                            <td><input name="room_name" class="searchInput_form" value="<c:out value="${item.room_name}"></c:out>"></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <select name="delNy">
                                                    <option value="0" <c:if test="${item.delNy == 0}">selected</c:if>>N</option>
                                                    <option value="1" <c:if test="${item.delNy == 1}">selected</c:if>>Y</option>
                                                </select>
                                            </td>
                                            <td><button class="insertBtn btn">생성</button></td>
                                        </form>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                            <%--WHEN SEQ IS NULL--%>
                            <%--WHEN SEQ IS NULL--%>
                            <%--WHEN SEQ IS NULL--%>
                            <%--WHEN SEQ IS NULL--%>



                            <%--WHEN SEQ IS NOT NULL--%>
                            <%--WHEN SEQ IS NOT NULL--%>
                            <%--WHEN SEQ IS NOT NULL--%>
                            <%--WHEN SEQ IS NOT NULL--%>
                            <%--WHEN SEQ IS NOT NULL--%>
                                </c:when>
                                <c:otherwise>
                                <div class="mainLabelBox">
                                    <h2 class="tableLabel">숙박정보 수정</h2>
                                    <div class="addBox" onclick="location.href='/roomsXdmList'">
                                        <h3 class="tableSubLabel">숙박정보 목록</h3>
                                        <span id="back2list" class="material-symbols-outlined">clear_all</span>
                                    </div>
                                </div>
                                <div class="tableBox_form">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                        	<th>숙소이름</th>
                                        	<th>체크인</th>
                                        	<th>체크아웃</th>
                                        	<th>환불규정</th>
                                        	<th>삭제여부</th>
                                        	<th></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <form name="updateForm">
                                                <td><input readonly class="searchInput_formSeq" name="seq" value="<c:out value="${item.seq}"></c:out>"/></td>
                                                <td><input name="room_name" class="searchInput_form" value="<c:out value="${item.room_name}"></c:out>"></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <select name="delNy">
                                                        <option value="0" <c:if test="${item.delNy == 0}">selected</c:if>>N</option>
                                                        <option value="1" <c:if test="${item.delNy == 1}">selected</c:if>>Y</option>
                                                    </select>
                                                </td>
                                                <td><button class="updateBtn btn">수정</button></td>
                                                <td><button class="deleteBtn btn">삭제</button></td>
                                            </form>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </c:otherwise>
                    </c:choose>
                    <%--WHEN SEQ IS NOT NULL--%>
                    <%--WHEN SEQ IS NOT NULL--%>
                    <%--WHEN SEQ IS NOT NULL--%>
                    <%--WHEN SEQ IS NOT NULL--%>
                    <%--WHEN SEQ IS NOT NULL--%>

<%--FORM CONTENT ENDS FROM HERE!!--%>
<%--FORM CONTENT ENDS FROM HERE!!--%>
                </div>
            </div>
        </main>
    </div>
<%--script code--%>
    <script>
        /*수정 버튼 이벤트*/
        $(".updateBtn").on("click",function(){
            $("form[name=updateForm]").attr("action","/roomsUpdt").submit();
        });
        /*생성버튼 이벤트*/
        $(".insertBtn").on("click",function(){
            $("form[name=insertForm]").attr("action","/roomsInst").submit();
        });
        /*삭제버튼 이벤트*/
        $(".deleteBtn").on("click",function(){
            $("form[name=updateForm]").attr("action","/roomsDele").submit();
        });

    </script>
<%--script code--%>
</body>
</html>