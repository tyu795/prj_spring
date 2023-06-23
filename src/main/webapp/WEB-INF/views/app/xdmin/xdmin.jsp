<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/style.css">
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>
    <header id="header">
        <h1>SOM</h1>
        <h2>SOM Management System</h2>
        <div id="user">
            <div class="user_img">
                <a href="#"><i class="fa-solid fa-user"></i>
                </a></div>
            <div class="user_text">
                <h2>SOM</h2>
            </div>
            <select class="form-select" aria-label="Default select example">
                <option selected>언어</option>
                <option value="1">Korean</option>
                <option value="2">English</option>
                <!-- <option value="3">Three</option> -->
              </select>
            </div>
    </header>
    <nav id="nav">
        <ul>
            <li>
                <a href="#">Navbar</a>
            </li>
            <li>
                <a href="#">회원관리</a>
            </li>
            <li>
                <a href="#">서비스관리</a>
            </li>
            <li>
                <a href="#">사이트관리</a>
            </li>
            <li>
                <a href="#">로그관리</a>
            </li>
            <li>
                <a href="#">시스템관리</a>
            </li>
        </ul>
    </nav>
    <div id="menu_bar">
        <ul>
            <li>
                <a href="#"><i class="fa-solid fa-angle-right"></i>HOME</a>
            </li>
            <li>
                <a href="#"><i class="fa-solid fa-angle-right"></i>Dashboard</a>
            </li>
            <li>
                <a href="#"><i class="fa-solid fa-angle-right"></i>Orders</a>
            </li>
            <li>
                <a href="#"><i class="fa-solid fa-angle-right"></i>Account</a>
            </li>
        </ul>
    </div>
    <div id="main">
      <h2>국가코드 관리</h2>
      <div id="wrap">
        <select class="main_form" aria-label="Default select example">
          <option selected>N</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
        <select class="main_form" aria-label="Default select example">
          <option selected>날짜</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
        <input class="main_form" type="text" placeholder="시작일" id="datepicker">
        <input class="main_form" type="text" placeholder="종료일" id="datepicker2">
        <select class="main_form" aria-label="Default select example">
          <option selected>검색구분</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
        <input type="text" placeholder="검색어"
        class="search_box main_form">
        <div id="button_wrap">
          <a href="#" class="search">
              <i class="fa-solid fa-magnifying-glass" style="color: #050505;"></i> 
          </a>
          <a href="#" class="re">
            <i class="fa-solid fa-rotate-right" style="color: #ffffff;"></i>
          </a>
        </div>
      </div>
      <p>Total: 3</p>
      <select class="form-select2" aria-label="Default select example">
        <option selected>10</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
      <table class="table">
        <thead>
          <tr>
            <th scope="col"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
            <th scope="col">#</th>
            <th scope="col">국가 이름</th>
            <th scope="col">국가 코드(3자리)</th>
            <th scope="col">사용</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
            <th scope="row">1</th>
            <td>Korea</td>
            <td>KOR</td>
            <td>Y</td>
          </tr>
          <tr>
            <th scope="row"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
            <th scope="row">2</th>
            <td>Portugal</td>
            <td>PRT</td>
            <td>Y</td>
          </tr>
          <tr>
            <th scope="row"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
            <th scope="row">3</th>
            <td colspan="1">Spain</td>
            <td>ESP</td>
            <td>Y</td>
          </tr>
        </tbody>
      </table>
      <div class="one">
        <a href="#">
          <p>1</p>
        </a>
      </div>
      <div class="icon_wrap1">
        <div class="x_mark">
          <a href="#">
            <i class="fa-solid fa-xmark"></i>
          </a>
        </div>
        <div class="trash">
            <i class="fa-solid fa-trash-can"></i>
        </div>
      </div>
      <div class="modal" tabindex="-1">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modal title</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p>창을 닫으세요.</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>
      <div class="icon_wrap2">
        <div class="x_mark2">
          <a href="#">
            <i class="fa-solid fa-file-excel"></i>
          </a>
        </div>
        <div class="plus">
          <a href="sub.html">
            <i class="fa-solid fa-plus"></i>
          </a>
        </div>
      </div>
    </div>
    <footer id="footer">
      <p>(주)마이컴퍼니 | 대표 채다솜 | 사업자등록번호 111-1111-1111 | 경기도 김포시 장기동</p>
      <p>Copyright2023.Mycompany Inc. all rights reserved</p>
    </footer>

    <script>
        $( function() {
        $( "#datepicker" ).datepicker();
        $( "#datepicker2" ).datepicker();
      });
    </script>
    
</body>
</html>