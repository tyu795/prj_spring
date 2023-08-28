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
    <title>
    	<c:out value="${item.room_name}"/>
    </title>
    <link rel="stylesheet" href="../../../../resources/somBNB/css/Gyeongju_1.css">
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
    <!-- 제이쿼리(데이트피커) -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <!-- 스크립트 -->
    <script src="../../../../resources/somBNB/js/sub.js"></script>
    <!-- <script src="js/jquery-3.6.4.min.js"></script> -->
</head>
<body>
    <header>
        <a href="/usrMain">
            <i class="fa-brands fa-airbnb"></i>
            <h1>SomBNB</h1>
        </a>
        <!-- <a href="#">
            <p>로그인</p>
        </a>
        <a href="#">
            <p>즐겨찾기</p>
        </a> -->
    </header>
	    <div id="wrap">
	        <h1><c:out value="${item.room_name}"/></h1>
     
        <!--  <p class="content">
            <i class="fa-solid fa-star"></i> 4.86
        </p> -->
       <!--  <p class="content">
            <i class="fa-solid fa-user"></i> 슈퍼호스트
        </p> -->
        <p class="content_local">
            <i class="fa-solid fa-location-dot"></i> <c:out value="${item.room_address}"/>
        </p>
        <div class="wish">
            <i class="fa-regular fa-heart"></i>
            저장하기
        </div>
        <div class="img_wrap">
            <div class="img_b"></div>
            <div class="img_s">
                <img src="../../../../resources/somBNB/img/Gyeongju/Gyeongju1_2.webp" alt="소개사진2">
            </div>
            <div class="img_s">
                <img src="../../../../resources/somBNB/img/Gyeongju/Gyeongju1_3.webp" alt="소개사진3">
            </div>
            <div class="img_s">
                <img src="../../../../resources/somBNB/img/Gyeongju/Gyeongju1_4.webp" alt="소개사진4">
            </div>
            <div class="img_s">
                <img src="../../../../resources/somBNB/img/Gyeongju/Gyeongju1_5.webp" alt="소개사진5">
            </div>
        </div>
        <div id="md_box">
            <div class="content_wrap">
                <h2>Sukhee 님이 호스트하는 저택 전체</h2>
                <p class="content">최대인원 <c:out value="${item.maximumPeople}"/>명 </p>
                <p class="content">침실 <c:out value="${item.bedroom}"/>개</p>
                <p>욕실 <c:out value="${item.bathroom}"/>개</p>
                <!-- <div class="host">
                    <img src="../../../../resources/somBNB/img/Gyeongju/host_01.jpg" alt="호스트사진">
                </div> -->
                <div class="textbox">
                  <!--   <h3>
                        <i class="fa-solid fa-user"></i> Sukhee 님은 슈퍼호스트입니다
                    </h3>
                    <p>슈퍼호스트는 풍부한 경험과 높은 평점을 자랑하며 게스트가 숙소에서 편안히 머무를 수 있도록 최선을 다하는 호스트입니다.</p> -->
                    <h3>
                        <i class="fa-solid fa-location-dot"></i>
                        훌륭한 숙소 위치
                    </h3>
                    <p>최근 숙박한 게스트 중 90%가 위치에 별점 5점을 준 숙소입니다.</p>
                    <h3>
                        <i class="fa-regular fa-calendar-check"></i>
                        예약일  <c:out value="${item.return_policy}"/>일 전까지 무료로 취소하실 수 있습니다.
                    </h3>
                </div>
                <div class="textbox">
                    <p><c:out value="${item.room_description}"/></p>
                </div>
            </div>
            <div class="pay_box">
                <div class="pay_01">
                    <h2>₩ <c:out value="${item.room_price}"/></h2>
                    <p>/박</p>
                    <!-- <i class="fa-solid fa-star"></i> 4.86 -->
                    <div class="checkin_out">
                        <input class="datepicker" placeholder="체크인" id="startDate">
                        <input class="datepicker" placeholder="체크아웃" id="endDate">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>인원</option>
                        <c:forEach var="i" begin="1" end="${item.maximumPeople }" step="1">
							<option value="<c:out value="${i }"/>"><c:out value="${i }"/>명</option>
						</c:forEach>
                    </select>    
                    </div>
                    <div class="reservation" onclick="redirectToReservationPage()">
                   		<a href="javascript:void(0);" onclick="checkLogin('reservationBNB')">
                        	<h3>예약하기</h3>
                        </a>
                    </div>
                    <div class="p_wrap">
                        <p>예약 확정 전에는 요금이 청구되지 않습니다.</p>
                    </div>
                    <div class="total_pay">
                        <p>₩ <c:out value="${item.room_price}"/> x <span id = "count"></span>박</p>
                        <p>₩ <span id="totalPrice1"></span></p>
                    </div>
                    <div class="total_pay_01">
                        <p>총 합계</p>
                        <p>₩ <span id = "totalPrice2" ></span></p>
                    </div>
                </div>
            </div>
            <div class="service">
                <h2>숙소 편의시설</h2>
					<c:if test="${item.wifi eq '1' }">
						<i class="fa-solid fa-wifi"></i>무선 인터넷<br>
					</c:if>
					<c:if test="${item.parkingFree eq '1' }">
						<i class="fa-solid fa-car-rear"></i>건물 내 무료주차<br>
					</c:if>
					<c:if test="${item.aircon eq '1' }">
		                <i class="fa-regular fa-snowflake"></i>에어컨<br>
		            </c:if>
		            <c:if test="${item.hairdry eq '1' }">
		                <i class="fa-solid fa-wind"></i>헤어 드라이어<br>
		            </c:if>    
		            <c:if test="${item.bathtub eq '1' }">
		                <i class="fa-solid fa-bath"></i>온수 욕조<br>
		            </c:if> 
		            <c:if test="${item.cctv eq '1' }">   
		                <i class="fa-solid fa-video"></i>숙소 내 보안 카메라
		            </c:if> 
            </div>
        </div>
        <div id="notice">
            <h2>알아두어야 할 사항</h2>
            <div class="notice_s">
                <h3>숙소 이용규칙</h3>
                <p>체크인 시간: <c:out value="${item.check_in_time}"/> 전까지<br>
                체크아웃 시간: <c:out value="${item.check_out_time}"/> 전까지<br>
                게스트 정원 <c:out value="${item.maximumPeople}"/>명</p>
            </div>
            <div class="notice_s">
                <h3>안전 및 숙소</h3>
                <p>일산화탄소 경보기<br>
                화재 경보기<br>
                유아(만2세 미만)에게 적합하지 않음</p>
            </div>
            <div class="notice_s">
                <h3>환불 정책</h3>
                <p>예약일 <c:out value="${item.return_policy}"/>일 전까지 무료로 취소하실 수 있습니다.</p>
            </div>
        </div>
        <div class="map">
            <h2>호스팅 지역</h2>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3234.717417469956!2d129.21246795619487!3d35.83140832289987!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35664e5feebe5617%3A0xba26b4c9dbc5926!2z6rK97KO8IOq1kOuPmSDshJ3rk7E!5e0!3m2!1sko!2skr!4v1686097223256!5m2!1sko!2skr" width="100%" height="650" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
    <footer id="footer">
        <p>Copyright ⓒ 2023 SomBNB  All rights reserved.</p>
    </footer>
    
    
    <script>
        $( function() {
          $( "#datepicker" ).datepicker();
        } );
        
        
        function checkLogin(pageName) {
            <c:choose>
                <c:when test="${sessionId == null}">
                    alert("<c:out value='로그인 후에 이용 가능합니다'/>");
                    window.location.href="/usrMain"
                </c:when>
                <c:otherwise>
                window.location.href = pageName;
                    // 버튼을 클릭한 후 실행할 동작
                </c:otherwise>
            </c:choose>
        }
        
        
       
        /* function redirectToReservationPage() {
            window.location.href = "reservationBNB";
        } */
        
        
        
        function checkLogin(pageName) {
            <c:choose>
                <c:when test="${sessionId == null}">
                    alert("<c:out value='로그인 후에 이용 가능합니다'/>");
                    window.location.href="/usrMain"
                </c:when>
                <c:otherwise>
                window.location.href = pageName;
                    // 버튼을 클릭한 후 실행할 동작
                </c:otherwise>
            </c:choose>
        }
        

 
 /* 
        $("#startDate, #endDate").on("change", function() {
            var startDate = new Date($("#startDate").val());
            var endDate = new Date($("#endDate").val());
            var totalPrice1 = $('#totalPrice1');
            var totalPrice2 = $('#totalPrice2');
            var price = "${item.room_price}";
            price = price.replace(',', '');

            // Get today's date
            var today = new Date();

            if (endDate < startDate) {
                alert("종료 날짜는 시작 날짜보다 이전 날짜일 수 없습니다.");
                $("#endDate").val(""); // endDate 입력란을 비우는 예시
            } else if (startDate < today || endDate < today) {
                alert("오늘 이전 날짜는 선택할 수 없습니다.");
                $("#startDate").val(""); // startDate 입력란을 비우는 예시
                $("#endDate").val(""); // endDate 입력란을 비우는 예시
            } else {
                // 두 날짜 간의 일 수 차이 계산
                var timeDifference = endDate - startDate;
                var daysDifference = timeDifference / (1000 * 60 * 60 * 24); // 밀리초 단위를 일 단위로 변환

                $("#count").text(daysDifference);

                var formattedPrice = (price * daysDifference).toLocaleString(); // 천단위 컴마 추가
                $("#totalPrice1").text(formattedPrice);
                $("#totalPrice2").text(formattedPrice);
            }
        }); */
        
        
        $("#startDate, #endDate").on("change", function() {
            var startDate = new Date($("#startDate").val());
            var endDate = new Date($("#endDate").val());
            var totalPrice1 = $('#totalPrice1');
            var totalPrice2 = $('#totalPrice2');
            var price = "${item.room_price}";
            price = price.replace(',', '');

            // Get today's date
            var today = new Date();

            if (endDate < startDate) {
                alert("체크아웃 날짜는 체크인 날짜보다 이전 날짜일 수 없습니다.");
                $("#endDate").val(""); // endDate 입력란을 비우는 예시
            } else if (startDate < today || endDate < today) {
                alert("날짜를 확인하고 다시 선택해주세요.");
                $("#startDate").val(""); // startDate 입력란을 비우는 예시
                $("#endDate").val(""); // endDate 입력란을 비우는 예시
            } else if (startDate.getTime() === endDate.getTime()) {
                alert("체크인 날짜와 체크아웃 날짜는 같을 수 없습니다.");
                $("#endDate").val(""); // endDate 입력란을 비우는 예시
            } else {
                // 두 날짜 간의 일 수 차이 계산
                var timeDifference = endDate - startDate;
                var daysDifference = timeDifference / (1000 * 60 * 60 * 24); // 밀리초 단위를 일 단위로 변환

                $("#count").text(daysDifference);

                var formattedPrice = (price * daysDifference).toLocaleString(); // 천단위 컴마 추가
                $("#totalPrice1").text(formattedPrice);
                $("#totalPrice2").text(formattedPrice);
            }
        });



        
        
        
        
        
        
        
        // 예약날짜 지정
        
        $(document).ready(function(){
/* 	$("#startDate").datepicker({
		
				dateFormat: 'yy-mm-dd' //달력 날짜 형태
	           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
	           ,changeYear: true //option값 년 선택 가능
	           ,changeMonth: true //option값  월 선택 가능                
	           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
	           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
	           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
	           ,buttonText: "선택" //버튼 호버 텍스트              
	           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
	           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
	           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
	           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
	           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
	           ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	           ,maxDate: "+5Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
	
		,onClose: function(){
			var startDate = $("#startDate").datepicker('getDate');
			var endDate = $("#endDate").datepicker('getDate');
			
				if (endDate != null) {
					if (startDate > endDate) {
						alert("기간을 다시 설정해주세요. \n종료일로 설정됩니다.");
						$("#startDate").val($("#endDate").val());
					}  
				}
			}
	});
	
	$("#endDate").datepicker({
		
        	 dateFormat: 'yy-mm-dd' //달력 날짜 형태
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
            ,changeYear: true //option값 년 선택 가능
            ,changeMonth: true //option값  월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
            ,buttonText: "선택" //버튼 호버 텍스트              
            ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
            ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
            ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+5Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
		
		,beforeShow: function() {
			//get date startDate is set to
			var startDate = $("#startDate").datepicker('getDate');
			//if a date was selected else do nothing 
			if (startDate != null) {
				$(this).datepicker('option', 'minDate', startDate);
			}
		}
	}); */
});
        
        
        
        
        
     
 
    </script>
    
</body>
</html>