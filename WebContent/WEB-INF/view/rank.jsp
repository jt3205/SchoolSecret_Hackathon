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
            font-family: 'NanumSquareR'
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
        img.b {
            display: none;
        }
        input.c:checked ~ label>img.a {
            display: none;
        }
        input.c:checked ~ label>img.b {
            display: block;
        }
    </style>
    <script>
        
        var content_page_cnt = 0;
        
        $(function(){
            $.ajax({
                type : "GET",
                url : "http://localhost:3242/rankProc?page="+content_page_cnt,
                dataType : "json",
                success : function(data) {
                    console.log(JSON.stringify(data));

                    data.forEach(function( d, i ){

                        if(d.to.length == 1) {

                            var html = `<div class="card my-3" style="border-radius: 0px; style="position: relative"">
                                  <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        `+(i === 0 ? `<img src="/../img/crown.png" width="60" height="60" alt="" style="position: absolute; margin-top: -45px; margin-left: -45px;">
                                        <h1 class="pt-2">`+(i+1)+`</h1>`:`<h3 class="pt-2">`+(i+1)+`</h3>`)+`
                                        <span class="px-3">(<strong>`+d.school+`</strong>)</span>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>`+d.from+`</strong><span>님이 수줍게 밝히는 비밀</span>
                                        <span class="dropdown">
                                          <a class="p-1" style="text-decoration: none;" href="https://example.com" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span><strong>`+d.to[0]+`</strong></span>
                                          </a>
                                        </span>
                                        <span>에게</span>
                                    </li>
                                    <li class="list-group-item" style="min-height: 100px;">
                                        <div class="col-10">`+d.contents+`</div>
                                        <div class="col-2">
                                            <input class="c d-none" type="radio" id="c`+d.id+`" name="c`+d.id+`">
                                            <label for="c`+d.id+`"><img src="/../img/star1.png" class="a" width="40" height="40" alt="" style="vertical-align: middle; cursor: pointer"></label>
                                            <label><img src="/../img/star2.png" class="b" width="40" height="40" alt="" style="vertical-align: middle; cursor: pointer"></label>
                                            <span class="px-2" style="font-size: 24px; text-align: center; vertical-align: middle; margin-top: 8px;">`+d.good+`</span>
                                        </div>
                                    </li>
                                  </ul>
                                </div>`;

                            $("#content").append(html);
                        }else {
                            var html = `
                                <div class="card my-3" style="border-radius: 0px; style="position: relative"">
                                  <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        `+(i === 0 ? `<img src="/../img/crown.png" width="60" height="60" alt="" style="position: absolute; margin-top: -45px; margin-left: -45px;">
                                        <h1 class="pt-2">`+(i+1)+`</h1>`:`<h3 class="pt-2">`+(i+1)+`</h3>`)+`
                                        <span class="px-3">(<strong>`+d.school+`</strong>)</span>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>`+d.from+`</strong><span>님이 수줍게 밝히는 비밀</span>
                                        <span class="dropdown">
                                          <a class="dropdown-toggle p-1" style="text-decoration: none;" href="https://example.com" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span><strong>`+d.to[0]+`</strong>님 외 `+(d.to.length-1)+`명</span>
                                          </a>
                                          <div class="dropdown-menu" style="border-radius: 0px;" aria-labelledby="dropdownMenuLink">
                                            `;
                            d.to.forEach(function( d2 ){
                                html+=`
                                    <a class="dropdown-item" href="#"><strong>`+d2+`</strong></a>
                                `;   
                            });
                            $("#content").append(html+`
                                          </div>
                                        </span>
                                        <span>에게</span>
                                    </li>
                                    <li class="list-group-item" style="min-height: 100px;">
                                        <div class="col-10">`+d.contents+`</div>
                                        <div class="col-2">
                                            <input class="c d-none" type="radio" id="c`+d.id+`" name="c`+d.id+`">
                                            <label for="c`+d.id+`"><img src="/../img/star1.png" class="a" width="40" height="40" alt="" style="vertical-align: middle; cursor: pointer"></label>
                                            <label><img src="/../img/star2.png" class="b" width="40" height="40" alt="" style="vertical-align: middle; cursor: pointer;"></label>
                                            <span class="px-2" style="font-size: 24px; text-align: center; vertical-align: middle; margin-top: 8px">`+d.good+`</span>
                                        </div>
                                    </li>
                                  </ul>
                                </div>
                            `);
                        }
                    });
                    content_page_cnt+=1;
                }
            }); //ajax end   
        });
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
              <li class="nav-item active">
                <a class="nav-link" href="#">비밀 랭킹</a>
              </li>
              <li class="nav-item">
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
    
    <section class="container">
        <div class="row">
            <div class="col-lg-2">
            
            </div>
            <div class="col-8 pt-1" style="height: 100%" id="content">
               <div class="card my-3 p-3 bg-info" style="border-radius: 0px;">
                 <h2>우리학교 비밀 랭킹!!</h2>
               </div>
<!--
               <div class="card my-3" style="border-radius: 0px;" style="position: relative">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <img src="/../img/crown.png" width="60" height="60" alt="" style="position: absolute; margin-top: -45px; margin-left: -45px;">
                            <h1 class="pt-2">1위</h1>
                            <span class="px-3">(<strong>양영디지털고등학교</strong>)</span>
                        </li>
                        <li class="list-group-item">
                            <strong>나영채</strong><span>님이 수줍게 밝히는 비밀</span>
                            <span class="dropdown">
                              <a class="dropdown-toggle p-1" style="text-decoration: none;" href="https://example.com" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span><strong>박형진</strong>님 외 3명</span>
                              </a>
                              <div class="dropdown-menu" style="border-radius: 0px;" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="#"><strong>박형진</strong></a>
                                <a class="dropdown-item" href="#"><strong>김호섭</strong></a>
                                <a class="dropdown-item" href="#"><strong>김지민</strong></a>
                                <a class="dropdown-item" href="#"><strong>신재규</strong></a>
                              </div>
                            </span>
                            <span>에게</span>
                        </li>
                        <li class="list-group-item" style="min-height: 100px;">
                            <div class="col-10">
                                <span>얘들아 사실 나 사실 모태솔로야 ㅜㅜㅜ<br>제길슨 ^^</span>    
                            </div>
                            <div class="col-2">
                                <div class="col-2">
                                    <input class="c d-none" type="radio" id="c3" name="c3">
                                    <label for="c3"><img src="/../img/star1.png" class="a" width="40" height="40" alt="" style="vertical-align: middle; cursor: pointer"></label>
                                    <label><img src="/../img/star2.png" class="b" width="40" height="40" alt="" style="vertical-align: middle; cursor: pointer"></label>
                                    <span class="px-2" style="font-size: 24px; text-align: center; vertical-align: middle; margin-top: 8px;">2</span>
                                </div>
                            </div>
                        </li>
                    </ul>
               </div> 
-->
           
            </div>
            <div class="col-2">

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