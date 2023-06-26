<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>codeGroupList</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="/WEB-INF/views/app/xdmin/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>
<form name="formList" >
	<select class="main_form" aria-label="Default select example">
          <option selected>검색구분</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
        <input name= "shKeyword" type="text" placeholder="검색어"
        class="search_box main_form">
        <div id="button_wrap">
          <!-- <a href="#" class="search">
              <i class="fa-solid fa-magnifying-glass" style="color: #050505;"></i> 
          </a>
          <a href="#" class="re">
            <i class="fa-solid fa-rotate-right" style="color: #ffffff;"></i>
          </a> -->
        </div>
        
        <button type="button" id="btn">Primary</button>
      
    </form>

  <script>

	$("#btn").on("click", function(){
		console.log("aslksalk");
		$("form[name=formList]").attr("method", "get");
		$("form[name=formList]").attr("action", "/codeGroupList");
		
		// alert("sdfsdf");
	});
	
    </script>
</body>
</html>


<br>


<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>   <%-- ${list} 자바에서 넘겨준 객체 이름 --%>  <!-- var="list" jstl 블럭에서 사용할 변수 이름 -->
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq}"></c:out>
			<a href="/codeGroupForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a><br>
		</c:forEach>
	</c:otherwise>
</c:choose>
	  	


 
