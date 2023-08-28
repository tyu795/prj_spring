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
    <title>예약 요청</title>
    <link rel="stylesheet" href="../../../../resources/somBNB/css/reservation_gj1.css">
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
        <h2>예약 요청</h2>
        <a href="Gyeongju_1.html" class="left">
            <i class="fa-solid fa-chevron-left"></i>
        </a>
        <div class="reserinfo">
            <h3>예약 정보</h3>
            <p><strong>날짜</strong></p>
            <p>10월 26일~10월 30일</p><br>
            <p><strong>게스트</strong></p>
            <p>게스트 1명</p>
        </div>
        <div class="pay">
            <h3>결제 수단</h3>
            <select class="form-select" aria-label="Default select example">
                <option selected>카카오페이</option>
            </select>
        </div>
        <div class="message">
            <h3>필수 입력 정보</h3>
            <p><strong>호스트에게 메세지 보내기</strong></p>
            <p>호스트에게 여행 목적과 도착 예정 시간을 알려주세요.
            </p>
            <div class="host">
                    <img src="../../../../resources/somBNB/img/Gyeongju/host_01.jpg" alt="호스트 사진">
            </div>
            <div class="host_text">
                <p><strong>Sukhee</strong></p>
                <p>에어비앤비 가입 : 2022년</p>
                <div class="form-floating">
                    <textarea class="form-control" id="floatingTextarea2" style="height: 130px"></textarea>
                  </div>
            </div>
        </div>
        <div class="rule">
            <h3>기본 규칙</h3>
            <p>훌륭한 게스트가 되기 위한 몇 가지 간단한 규칙을 지켜주실 것을 모든 게스트에게 당부드리고 있습니다.</p><br>
            <ul>
                <li>숙소 이용규칙을 준수하세요.</li>
                <li>호스트의 집도 자신의 집처럼 아껴주세요.</li>
            </ul>
        </div>
        <div class="approval">
            <div class="date">
                <img src="../../../../resources/somBNB/img/date.png" alt="달력">
            </div>
            <div class="date_text">
                <p><strong>호스트가 24시간 이내 예약 요청을 수락하기 전까지는 예약이 아직<br>확정된 것이 아닙니다.</strong></p>
                <p>예약 확정 전까지는 요금이 청구되지 않습니다.</p>
            </div>
        </div>
        <button type="button">
            <h4>예약 요청</h4>
        </button>
        <div id="wrap_right">
            <div class="wr_01">
                <div class="imgbox">
                    <img src="../../../../resources/somBNB/img/Gyeongju/Gyeongju1_1.webp" alt="썸네일">
                </div>
                <div class="text">
                    <p>저택 전체</p>
                    <p>석등있는집2 아랫채(150년 최부자 고택)</p>
                   <!--  <ul>
                        <li>
                            <i class="fa-solid fa-star"></i> 4.86
                        </li>
                        <li>
                            <i class="fa-solid fa-user"></i> 슈퍼호스트
                        </li>
                    </ul> -->
                </div>
            </div>
            <div class="wr_02">
                <h3>요금 세부정보</h3>
                <p>₩ 168,000 x 4박</p>
                <p class="mg_p">₩ 672,000</p>
                <div class="total">
                    <h4>총 합계 (KRW)</h4>
                    <h4>₩ 672,000</h4>
                </div>
            </div>
            <div class="wr_03">
                <p>해외에서 결제가 처리되기 때문에 카드 발행사에서 추가 수수료를 부과할 수 있습니다.</p>
            </div>
        </div>
    </div>
    <footer id="footer">
        <p>Copyright ⓒ 2023 SomBNB  All rights reserved.</p>
    </footer>
</body>
</html>