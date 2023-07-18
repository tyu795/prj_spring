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
    <title>SomBNB</title>
    <link rel="stylesheet" href="resources/somBNB/css/SomBNB.css">
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <!-- 구글 나눔명조 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700&display=swap" rel="stylesheet">
    <!-- 구글 노토산스 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <!-- 스크립트 -->
    <script src="resources/somBNB/js/jquery-3.6.4.min.js"></script>
    <script src="resources/somBNB/js/SomBNB.js"></script>
    <!-- AOS 라이브러리 -->
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css"> 
  	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
    <header>
        <a href="#">
            <i class="fa-brands fa-airbnb"></i>
            <h1>SomBNB</h1>
        </a>
     	<a href="/signUpForm">
            <p>회원가입</p>
        </a>
        <c:choose>
     			<c:when test="${not empty sessionId }">
     				<a href="/usrMain" id="btnLogout">
		          	<p>로그아웃</p>
		     		</a>
              	<!-- <button type="button" class="btn btn-primary" id="btnLogout">LOGOUT</button> -->
              	</c:when>
              	<c:otherwise>
	              	<a href="/loginUserForm" id="btnLogin">
		          	<p>로그인</p>
		     		</a>
              		<!-- <button type="button" class="btn btn-primary" id="btnLogin">LOGIN</button>
              		<br> -->
              	</c:otherwise>
     	</c:choose>
    </header>
    <!-- <nav class="up" class="down">
        <div class="search">
        </div>
    </nav> -->
    <div id="main_slide">
        <ul>
            <li><img src="resources/somBNB/img/slider1.jpg" alt="메인1"></li>
            <li><img src="resources/somBNB/img/slider2.jpg" alt="메인2"></li>
            <li><img src="resources/somBNB/img/slider3.jpg" alt="메인3"></li>
        </ul>
    </div>
    <div id="wrap">
        <div class="text" data-aos="fade-right" data-aos-offset="200" data-aos-easing="ease-out-cubic" data-aos-duration="700">
            <h2>쉼,<br></h2>
            <h2>공간</h2>
        </div>
        <a href="resources/somBNB/Gyeongju_1.html" class="figure" data-aos="zoom-out" data-aos-duration="700" target="_blank">
            <img src="resources/somBNB/img/Gyeongju/Gyeongju1_1.webp" alt="경주1">
            <h2>석등있는집</h2>
            <h3>경상북도, 경주</h3>
            <p>168,000원/ 박</p>
            <div class="fa">
                <i class="fa-solid fa-star"></i>
                <p>4.86</p>
            </div>
        </a>
        <a href="resources/somBNB/Gyeongju_2.html" class="figure" data-aos="zoom-out" data-aos-duration="700" target="_blank">
            <img src="resources/somBNB/img/Gyeongju/Gyeongju2_1.webp" alt="경주2">
            <h2>한옥스테이 여여-</h2>
            <h3>경상북도, 경주</h3>
            <p>218,500원/ 박</p>
            <div class="fa">
                <i class="fa-solid fa-star"></i>
                <p>4.93</p>
            </div>
        </a>
        <a href="#" class="figure" data-aos="zoom-out" data-aos-duration="700" target="_blank">
            <img src="resources/somBNB/img/jeonju/jeonju1_1.webp" alt="전주1">
            <h2>한옥스테이 “화응(花應)”</h2>
            <h3>전라북도, 전주</h3>
            <p>240,000원/ 박</p>
            <div class="fa">
                <i class="fa-solid fa-star"></i>
                <p>4.9</p>
            </div>
        </a>
        <a href="#" class="figure" data-aos="zoom-out" data-aos-duration="700" target="_blank">
            <img src="resources/somBNB/img/jeonju/jeonju2_1.webp" alt="전주2">
            <h2>한애[韓愛]</h2>
            <h3>전라북도, 전주</h3>
            <p>220,000원/ 박</p>
            <div class="fa">
                <i class="fa-solid fa-star"></i>
                <p>4.95</p>
            </div>
        </a>
        <a href="#" class="figure" data-aos="zoom-out" data-aos-duration="700" target="_blank">
            <img src="resources/somBNB/img/jeju/jeju1_1.webp" alt="제주1">
            <h2>함덕 ‘구옥이즈’</h2>
            <h3>제주도, 제주시 구좌읍</h3>
            <p>144,000원/ 박</p>
            <div class="fa">
                <i class="fa-solid fa-star"></i>
                <p>4.98</p>
            </div>
        </a>
        <a href="#" class="figure" data-aos="zoom-out" data-aos-duration="700" target="_blank">
            <img src="resources/somBNB/img/jeju/jeju2_1.webp" alt="제주2">
            <h2>뿌라비다 : Puravida</h2>
            <h3>제주도, 제주시 용담동</h3>
            <p>160,000원/ 박</p>
            <div class="fa">
                <i class="fa-solid fa-star"></i>
                <p>4.89</p>
            </div>
        </a>
    </div>
    
    
   
    <footer id="footer">
        <p>Copyright ⓒ 2023 SomBNB  All rights reserved.</p>
    </footer>

    <script>
    
        AOS.init();
        
        
        $("#btnLogout").on("click", function(){
			$.ajax({
	    		async: true 
	    		,cache: false
	    		,type: "post"
	    		/* ,dataType:"json" */
	    		,url: "/logoutProc"
	    		/* ,data : $("#formLogin").serialize() */
	    		,data : { }
	    		,success: function(response) {
	    				location.href = "/usrMain";
	    		}
	    		
	    		,error : function(jqXHR, textStatus, errorThrown){
	    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	    		}
	    	});
		});
        
    </script>
</body>
</html>
