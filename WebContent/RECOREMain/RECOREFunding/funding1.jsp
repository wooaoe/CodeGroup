﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
    
    


<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RECORE &mdash; PRODUCT</title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="cssMain/magnific-popup.css">
    <link rel="stylesheet" href="cssMain/jquery-ui.css">
    <link rel="stylesheet" href="cssMain/owl.carousel.min.css">
    <link rel="stylesheet" href="cssMain/owl.theme.default.min.css">
    <link rel="stylesheet" href="cssMain/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="cssMain/aos.css">

    <link rel="stylesheet" href="cssMain/styleProd.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>       
	<style>
	
		#title{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:28px;
		padding-top:10px;
		padding-bottom:100px;
	}
	#btn{
		
		position: relative;
		padding-top: 10px;
	    padding-bottom: 10px;
	    background-color: #F25430; 
	    border: 1px;
	    color: white;
		padding: 20px 100px;
	   	text-align: center;  
	    font-size: 20px;
	    cursor: pointer;
	    font-family: Roboto, 'Noto Sans KR', sans-serif;
	   	
	}
		#deadline{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:30px;
		padding-top: 10px;
		padding-bottom: 10px;
		}
		#target_price{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:25px;
		padding-top: 10px;
		padding-bottom: 10px;
		}
		#total-amount{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:20px;
		padding-top: 10px;
		padding-bottom: 10px;
		}
		#total-supporter{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:20px;
		padding-top: 10px;
		padding-bottom: 10px;
		}
		#creator{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:25px;
		padding-top: 10px;
		padding-bottom: 50px;
		}
	
	
	</style>    
    
  </head>
  <body>
 
	  
	  <div class="site-wrap">
	
	    <div class="site-mobile-menu">
	      <div class="site-mobile-menu-header">
	        <div class="site-mobile-menu-close mt-3">
	          <span class="icon-close2 js-menu-toggle"></span>
	        </div>
	      </div>
	      <div class="site-mobile-menu-body"></div>
	    </div> <!-- .site-mobile-menu -->
	    
	    
	    <div class="site-navbar-wrap" style="background-color: white;">
	      <div class="site-navbar-top">
	        <div class="container py-3">
	       
	        <!--@@ 로고 위치 @@-->
	        <div style = "text-align: center;"><a href = "../index.html"><img alt="" src = "funding/donut.png"></a></div>
	        
	        
	          <div class="row align-items-center">
	            <div class="col-6">
	            
	            <!--
	              <a href="#" class="p-2 pl-0"><span class="icon-twitter"></span></a>
	              <a href="#" class="p-2 pl-0"><span class="icon-facebook"></span></a>
	              <a href="#" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
	              <a href="#" class="p-2 pl-0"><span class="icon-instagram"></span></a>
	            -->
	            
	            </div>
	            <div class="col-6">
	              <div class="d-flex ml-auto" >
	               <form id="search" method="get" action="#" class="d-flex align-items-center ml-auto mr-4">
	                	<!-- <input type="text" name="query" placeholder="Search" />
	              		<a href="#search"> &nbsp; Search</a>  -->
	              	</form>
	                <a href="RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
	                 <span class="d-none d-md-inline-block" style="color:black;">로그인 &nbsp;&nbsp;</span>
	                 </a>
	                 
	                 <a href="RECOREAccount/Acc_Signup.jsp" class="d-flex align-items-center">
	                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
	                  <br>
	                  <a href="RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center">
	                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지</span></a>
	                 
	                
	                <!--              
	                <a href="#" class="d-flex align-items-center">
	                  <span class="icon-phone mr-2"></span>
	                  <span class="d-none d-md-inline-block">회원가입</span>
	                </a> --> 
	                 
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	      
	      
	      
	      <div class="site-navbar">
	        <div class="container py-1">
	          <div class="row align-items-center">
	            <div class="col-2">
	              <!-- <h1 class="mb-0 site-logo"><a href="index.html">Interior</a></h1> -->
	            </div>
	            <div class="col-10">
	              <nav class="site-navigation text-right" role="navigation">
	                <div class="container">
	                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
	
	                  <ul class="site-menu js-clone-nav d-none d-lg-block">
	                    <li class="has-children">
	                      <a href="index.html" style="color:black;">Funding</a>
	                      <ul class="dropdown arrow-top">
	                        <li><a href="#">조회</a></li>
	                        <li><a href="#">등록</a></li>
	                      </ul>
	                    </li>
	                    <li class="has-children">
	                      <a href="RECOREProduct/Prod_All.jsp" style="color:black;">Product</a>
	                      <ul class="dropdown arrow-top">
	                        <li><a href="RECOREProduct/BagAcc.jsp" >Bag / Acc</a></li>
	                        <li class = "has-children"><a href="RECOREProduct/Clothing.jsp">Clothing</a>
	                        	<ul class = "dropdown arrow-down">
									<li><a href = "RECOREProduct/Outer.jsp">Outer</a></li>                        	
									<li><a href = "RECOREProduct/TOP.jsp">Top</a></li>                        	
									<li><a href = "RECOREProduct/Bottom.jsp">Bottom</a></li>                        	
	                        	</ul>
	                        </li>
	                        <li><a href="#" >Wallet</a></li>
	                        <li class = "has-children"><a href="#">Life</a>
	                        	<ul class = "dropdown arrow-down">
									<li><a href = "#">Supply</a></li>                        	
									<li><a href = "#">Home</a></li>                        	
	                        	</ul>
	                        </li>
	                      </ul>
	                    </li>
	                    <li  class="has-children"><a href="news.html" style="color:black;">Issue</a>
	                    	<ul class="dropdown arrow-top">
	                        <li><a href="news.html">News</a></li>
	                        <li><a href="exhibition.html">Exhibition</a></li>
	                      </ul>
	                    </li>
	                    <li  class="has-children"><a href="news.html" style="color:black;">Community</a>
	                    	<ul class="dropdown arrow-top">
	                        <li><a href="#">QnA</a></li>
	                        <li><a href="#">Review</a></li>
	                      </ul>
	                    </li>
	<!--
	                    <li><a href="services.html">Services</a></li>
	                    <li><a href="contact.html">Contact</a></li>
	-->
	                  </ul>
	                </div>
	              </nav>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	    
	
	    <div class="site-blocks-cover overlay inner-page" style="background-image: url(funding/backimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
	      <div class="container">
	        <div class="row align-items-center">
	         <div class="col-md-10">
	         <!-- <span class="sub-text">Our Awesome</span> --> 
	         	<br><br><br><br>
	         	<h1>FUNDING DETAIL</h1>
	          </div>
	        </div> 
	      </div>
	    </div>  
	    
	    
	
	    <div class="site-section">
	      <div class="container">
	        <div class="row">
	
	        
	<div id=title>
		  <% 
request.setCharacterEncoding("utf-8");
out.println(request.getParameter("title")); %>  
	</div>
	
	<!--  div id=creator>
	<!% 
	request.setCharacterEncoding("utf-8");
	out.println(request.getParameter("creator")); %> 
	</div>
	
	<!--  div id=target_price>
	<!--% 
	request.setCharacterEncoding("utf-8");
	out.println(request.getParameter("target_price")); %>  
	</div>
	
	
	<!--div id=deadline>
	<!--% 
	request.setCharacterEncoding("utf-8");
	out.println(request.getParameter("deadline")); %>  
	</div-->
	
	
	<div id=smarteditor>

	</div>
	
	 <div class="state-box">
	 
	 <div id=deadline>
	 <p class="remaining-day"><% 
	out.println(request.getParameter("deadline")); 

	
	%> 	 
	<script>

var x = setInterval(function() {
var t1=<%=request.getParameter("deadline")%>
var now=moment();
var diffTime={
		d:moment.duration(t1.diff(now)).days(),
		h:moment.duration(t1.diff(now)).hours(),
		m:moment.duration(t1.diff(now)).minutes(),
		s:moment.duration(t1.diff(now)).seconds()
		
}
console.log(diffTime.d +"일"+diffTime.h+"시간"+diffTime.m+"분"+diffTime.s+"초");
document.getElementById("countDay").innerHTML = "펀딩종료까지 " + diffTime.d +"일 " + diffTime.h + "시간 " + diffTime.m + "분 "+diffTime.s+"초 남았습니다.";


});
</script>

	
	</p></div>
	
	                      <!-- <p class="rate-bar"><em style="width:156%"></em></p>      
	                  <!--  p class="achievement-rate"><strong>156</strong>% 달성</p>-->
					 <div id=target_price> <p class="target_price"><strong>목표금액  <% 
	request.setCharacterEncoding("utf-8");
	out.println(request.getParameter("target_price")); %>   </strong></p></div>	
	                  <p class="total-amount"><strong>3,138,000</strong>원  펀딩</p>
	                  <p class="total-supporter"><strong>44</strong>명의 서포터</p>
	                  
	                  <div id=creator><% 
request.setCharacterEncoding("utf-8");
out.println(request.getParameter("creator")); %> 
	</div>
	                  
	                  <div class="button" id="btn">
	                    펀딩하기
	                  </div>
	                  
	                </div>
	               
	          
	       
	        </div>
	      </div>
	    </div>
  
  

    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Navigation</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Team</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Membership</a></li>
                </ul>
              </div>
            </div>

            
          </div>
          <div class="col-lg-4">
           

            <div class="mb-5">
              <h3 class="footer-heading mb-4">Recent News</h3>
              <div class="block-25">
                <ul class="list-unstyled">
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            
          </div>
          

          <div class="col-lg-4 mb-5 mb-lg-0">

            <div class="mb-5">
              <h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit minima minus odio.</p>

              <form action="#" method="post">
                <div class="input-group mb-3">
                  <input type="text" class="form-control border-white text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="button" id="button-addon2">Send</button>
                  </div>
                </div>
              </form>

            </div>

           <!-- <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Follow Us</h3>

                <div>
                    <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>-->


          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved | RECORE<!--  This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by 
            <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>