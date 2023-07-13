<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko" >
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>SignUp</title> 
    <link rel="stylesheet" href="/resources/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="container">
      <div class="wrapper">
        <div class="title"><span>SignUp</span></div>
        <form action="#" method="post">
          <div class="row">
            <i class="fas fa-user"></i>
            <input id="sign_id" type="text" placeholder="ID" name="sign_id">
          </div>
          <div class="row">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="name" required>
          </div>
          <div class="row">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Password" required>
          </div>
          <div class="row">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Password Check" required>
          </div>
          <div class="row">
            <i class="fa-regular fa-envelope"></i>
            <input type="text" placeholder="Email" required>
          </div>
          <div class="row button">
            <input type="submit" value="SignUp" id="user_id_sign">
          </div>
        </form>
      </div>
    </div>
    
    <script src="/resources/js/jquery-3.6.4.min.js"></script>  
    <script>
    $("#sign_id").on("blur", function(){
	    	
	    	$.ajax({
	    		async: true 
	    		,cache: false
	    		,type: "post"
	    		/* ,dataType:"json" */
	    		,url: "/checkIdProc"
	    		/* ,data : $("#formLogin").serialize() */
	    		,data : { "id" : $("#sign_id").val()}
	    		,success: function(response) {
	    			if(response.rt == "available") {
	    				alert("사용가능")
	    			} else {
	    				alert("중복");
	    			}
	    		}
	    		,error : function(jqXHR, textStatus, errorThrown){
	    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	    		}
	    	});
	    });
 
    </script>

    
  </body>
</html>