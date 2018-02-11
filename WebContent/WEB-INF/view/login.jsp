<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
response.addHeader("Access-Control-Allow-Origin", "*");  
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <style>
        * {
            font-family: 'NanumSquareR';
        }
        .nav-item:after {
            content: "";
            display: block;
            border-bottom: 4px #eee solid;
            padding-bottom: 3px;
            margin-bottom: -10px;
            transition: 0.4s;
            width: 0%;
        }
        .nav-item:hover:after {
            width: 100%;
            transition: 0.4s;
        }
        .dropdown-toggle::after {
            margin-left: 0px;
        }
        html,body {
            height: 100%;
        }
        *:focus {
            outline: 0;
        }
        a.nav-link {
            color: #ddd !important;
        }
        .active>a.nav-link {
            color: #ffe484 !important;
        }
        a.nav-link:hover {
            color: #aff !important;
        }
        .active>a.nav-link:hover {
            color: #efd474 !important;
        }
    </style>
    <script>
    
    </script>
</head>
<body style="background-color: #eee">    
    <nav class="navbar navbar-toggleable-md navbar-light bg-faded px-0" style="font-family: 'NanumSquareB'; background-color: #0b614b">
        <div class="container">
           <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand mx-3" href="#" style="font-size: 23px; vertical-align: middle; color: #fff">
            졸업할때까지 비밀이야!
          </a>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#">타임라인</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">우리학교 비밀</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">비밀 랭킹</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#">로그인</a>
              </li>
              <!--
              <li class="nav-item">
                <a class="nav-link" href="#">회원가입</a>
              </li>
              -->
            </ul>
          </div>
        </div>
    </nav>
    
    <script>
        function sm() {
            $.ajax({
                type : "POST",
                url : "/loginProc",
                data : {
                    id: $("#id").val(),
                    password: $("#password").val()
                },
                cache: false,
                dataType : "json",
                success : function(data) {
                    console.log(data)
                    if(data===true) {
                        window.location = "/";
                    }
                }
            });
        }
    </script>
    
    <section class="container" style="height: calc(100% - 58px)">
        <div class="h-100">
            <div class="h-100" style="position: relative; width: 100%;">
                <div style="position: absolute; top: 50%; width: 100%; height: 500px; margin-top: -250px; background-color: #eee; padding: 80px 70px; border: 2px solid #ddd">
                    <div style="width: 50%" class="float-left text-center">
                        <img src="/img/login.png" alt="">
                        <p style="font-size: 26px; padding: 30px;">당신이 가진 비밀들을<br>졸업전까지 철저히 보관하겠습니다.</p>
                    </div>
                    <div style="width: 50%;" class="float-left pr-4">
                        <form style="margin-top: 120px;">
                          <div class="form-group row">
                            <label class="col-3 text-right">Username</label>
                            <input id="id" name="id" type="text" class="form-control col-9" placeholder="Username">
                          </div>
                          <div class="form-group row">
                            <label class="col-3 text-right">Password</label>
                            <input id="password" name="password" type="password" class="form-control col-9" placeholder="Password">
                          </div>
                          <a href="#" class="form-text text-muted offset-3" style="cursor: pointer">계정을 가지고 있지 않으신가요?</a>
                          <div class="form-group">
                              <button type="button" onclick="sm()" class="btn btn-primary float-right" style="margin-right: -15px;">로그인</button>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
    
    <script>
//        
//        $.ajax({
//			type : "GET",
//			url : "rtq.jsp",
//			dataType : "text",
//			error : function() {
//				alert('통신실패!!');
//			},
//			success : function(data) {
//				$("#rankBox").html(data);
//			}
//		});
    </script>
    
    
</body>
</html>