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
                        <!-- 폼 -->
                           <form class="row g-4" name="insertForm" method="post" enctype="multipart/form-data">
							    <div class="row mb-3">
							        <div class="col-md-4">
							            <label for="roomName" class="form-label">숙소 이름</label>
							            <input type="text" class="form-control" id="roomName" name="room_name">
							        </div>
							        <div class="mb-3">
									  <label for="exampleFormControlTextarea1" class="form-label">숙소 소개</label>
									  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name = "room_description"></textarea>
									</div>
							    </div>
							    
							    <div class="row mb-3">
							        <div class="col-md-2">
							            <label for="roomPrice" class="form-label">가격</label>
							            <input type="text" class="form-control" id="roomPrice" name="room_price">
							        </div>
							        
							        <div class="col-md-2">
							            <label for="host" class="form-label">호스트</label>
							            <input type="text" class="form-control" id="host" name="host">
							        </div>
							        
							        <div class="col-md-6">
							            <label for="roomAddress" class="form-label">주소</label>
							            <input type="text" class="form-control" id="roomAddress" name="room_address">
							        </div>
							    </div>
							    
							    <div class="row mb-3">
							        <div class="col-md-4">
							            <label for="room_amenities" class="form-label">편의시설</label>
							            <input type="text" class="form-control" id="room_amenities" name="room_amenities">
							        </div>
									<div class="col-md-2">
							            <label for="return_policy" class="form-label">환불규정</label>
							            <input type="text" class="form-control" id="return_policy" name="return_policy">
							        </div>
							    </div>
							    
							    <div class="col-md-5 md-3">
							        
							                <%--ROOM Thumbnail --%>
							                <%--ROOM Thumbnail --%>
							            <div class="col-sm-6 mt-3 mt-sm-0">
							                <c:set var="type" value="2"/>      <!-- #-> -->
							                <c:set var="name" value="uploadImg"/>      <!-- #-> -->
							                <input type="hidden" id="<c:out value="${name}"/>Type" name="<c:out value="${name}"/>Type" value="<c:out value="${type}"/>"/>
							                <input type="hidden" id="<c:out value="${name}"/>MaxNumber" name="<c:out value="${name}"/>MaxNumber" value="0"/>
							                <input type="hidden" id="<c:out value="${name}"/>DeleteSeq" name="<c:out value="${name}"/>DeleteSeq"/>
							                <input type="hidden" id="<c:out value="${name}"/>DeletePathFile" name="<c:out value="${name}"/>DeletePathFile"/>
							                <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
							                <input class="form-control form-control-sm" id="<c:out value="${name}"/>" name="<c:out value="${name}"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name}"/>', <c:out value="${type}"/>, 0, 1, 0, 0, 1);">
							                <div id="<c:out value="${name}"/>Preview" class="addScroll">
							                    <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							                        <c:if test="${listUploaded.type eq type}">
							                            <div id="imgDiv_<c:out value="${type}"/>_<c:out value="${listUploaded.sort}"/>" style="display: inline-block; height: 95px;">
							                                <img src="<c:out value="${listUploaded.path}"/><c:out value="${listUploaded.uuidName}"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type}"/>, <c:out value="${listUploaded. sort }"/>);">
							                                <div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name}"/>', <c:out value="${type}"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq}"/>, '<c:out value="${listUploaded.path}"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
							                            </div>
							                        </c:if>
							                    </c:forEach>
							                </div>
							            </div>
						                <%--ROOM Thumbnail --%>
						                <%--ROOM Thumbnail --%>
						                
								    </div>
								   
								    <%--SUBMIT BUTTON--%>
								    <%--SUBMIT BUTTON--%>
							    <div class="col-12 justify-content-md-center">
							        <button class="insertBtn btn btn-success btn-lg" >생성</button>
							    </div>
							</form>
							<!-- 폼 -->    
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
                                                <td><input type="text" readonly class="searchInput_formSeq" name="seq" value="<c:out value="${item.seq}"></c:out>"/></td>
                                                <td><input type="text" name="room_name" class="searchInput_form" value="<c:out value="${item.room_name}"></c:out>"></td>
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