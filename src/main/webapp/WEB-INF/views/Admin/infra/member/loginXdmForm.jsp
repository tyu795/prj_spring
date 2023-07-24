<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Login</title> 
    <link rel="stylesheet" href="../../resources/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="wrapper">
        <div class="title"><span>Login</span></div>
        <form action="">
          <div class="row">
            <i class="fas fa-user"></i>
            <input name="id" id="idd" type="text" placeholder="ID" required value="aaa">
          </div>
          <div class="row">
            <i class="fas fa-lock"></i>
            <input name="pw" id="pww" type="password" placeholder="Password" required value="1234">
          </div>
          <!-- <div class="pass">
            <a href="#">Forgot password?</a>
          </div> -->
          <div class="row button">
            <input type="button" value="Login"  id="btnLogin">
          </div>
          <!-- <div class="signup-link">Not a member? <a href="#">Signup now</a></div> -->
        </form>
      </div>
    </div>
    
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script>
    
	    $("#btnLogin").on("click", function(){
		
		if(validation() == false) return false;
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/loginProc"
				/* ,data : $("#formLogin").serialize() */
				,data : { 
					"id" : $("#idd").val(),
					"pw" : $("#pww").val()
					}
				,success: function(response) {
					if(response.rt == "success") {
						/* alert(response.rtMember.id); */
						location.href = "/indexXdmView";
					} else {
						alert("회원정보가 일치하지 않습니다.");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		
		validation = function() {
			// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
			// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
		}
	</script>
    
    
    
  </body>
</html>