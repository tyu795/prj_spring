<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<header>
    <div class="headerBox">
        <div class="logo" onclick="location.href='/indexXdmView'" ><img src="/resources/img/somBNB.png" alt=""></div>
        <div class="nav">
            <div class="curtain"></div>
            <ul class="navList">
                <div class="navListBox">
                    <a class="itemBox" href="#">
                        <li>
                            공통코드관리
                        </li>
                    </a>
                        <ul class="subNavList">
                            <a href="/codeXdmList"><li>
                                공통코드
                            </li></a>
                            <a href="/codeGroupXdmList"><li>
                                공통코드그룹
                            </li></a>
                        </ul>

                </div>

                <div class="navListBox">
                    <a class="itemBox" href="#">
                        <li>
                            숙박관리
                        </li>
                    </a>
                    <ul class="subNavList">
                        <a href="#"><li>
                            숙박업체
                        </li></a>
                        <a href="#"><li>
                            숙박매물
                        </li></a>
                    </ul>

                </div>
                <a class="itemBox" href=""><li>멤버관리</li></a>
                <a class="itemBox" href=""><li>x관리</li></a>
                <a class="itemBox" href=""><li>y관리</li></a>
                <a class="itemBox" href=""><li>z관리</li></a>
            </ul>
        </div>
        <div onclick="location.href='/login'" class="outBtn">
            <span class="material-symbols-outlined">power_settings_new</span>
        </div>
    </div>
</header>