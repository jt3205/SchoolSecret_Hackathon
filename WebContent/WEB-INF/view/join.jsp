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
            border-bottom: 4px #fff solid;
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
            var isFastBirth = $("#exampleCheck1").is(":checked");
            var year = $("#birth").val();
            if(isFastBirth){
                year -= 1;
            }
            
            $.ajax({
                type : "GET",
                url : "http://192.168.43.79:3242/join?id="+$("#id").val()+"&password="+$("#password").val()+"&name="+$("#name").val()+"&school="+$("#school").val()+"&birth="+year,
                dataType : "json",
                success : function(data) {
                    console.log(JSON.stringify(data));
                    if(data === true){
                        window.location = "/login";
                    }
                }
            });
        }
    </script>
    
    <section class="container" style="height: calc(100% - 58px)">
        <div class="h-100" style="position: relative">
            <div style="position: absolute; width: 600px; height: 550px; left: 50%; top: 50%; margin-left: -300px; margin-top: -325px; border: 2px solid #ddd; padding: 50px;">
                <h2>회원가입</h2>
                 <form>
                  <div class="form-group row">
                    <label for="staticEmail" class="col-sm-3 col-form-label">유저 ID</label>
                    <div class="col-sm-9">
                      <input type="text" name="id" id="id" class="form-control" placeholder="ID">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-3 col-form-label">비밀번호</label>
                    <div class="col-sm-9">
                      <input type="password" name="password" id="password" class="form-control" placeholder="PW">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-3 col-form-label">비밀번호 확인</label>
                    <div class="col-sm-9">
                      <input type="password" name="passwordconf" id="passwordconf" class="form-control" placeholder="PW 확인">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-3 col-form-label">실명</label>
                    <div class="col-sm-9">
                      <input type="text" name="name" id="name" class="form-control"  placeholder="실명">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-3 col-form-label">학교이름</label>
                    <div class="col-sm-9">
                      <input type="text" name="school" class="form-control" id="school"  placeholder="학교이름">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword" class="col-sm-3 col-form-label">태어난 </label>
                    <div class="col-sm-9">
                      <select class="form-control form-control-md" name="birth" id="birth">
                          <option>1996</option>
                          <option>1997</option>
                          <option>1998</option>
                          <option>1999</option>
                          
                          <option>2000</option>
                          <option>2001</option>
                          <option>2002</option>
                          <option>2003</option>
                          <option>2004</option>
                          <option>2005</option>
                          <option>2006</option>
                          <option>2007</option>
                          <option>2008</option>
                          <option>2009</option>
                        </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="" class="col-3 col-form-label"></label>
                    <div class="col-sm-9">
                        <input type="checkbox" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">'빠른'이십니까?</label>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="" class="col-3 col-form-label"></label>
                    <div class="col-sm-9">
                        <button type="button" class="btn btn-primary float-right" onclick="sm()">회원가입</button>
                    </div>
                  </div>
                </form>
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
</html>tml>