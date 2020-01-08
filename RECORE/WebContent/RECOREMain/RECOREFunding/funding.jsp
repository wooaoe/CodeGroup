<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Interior Design &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/aos.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/style.css">
    
    
	<style type="text/css">
		.newsButtonWhite{
			background-color: white; 
			border:1px solid ;
			border-radius: 50%; 
			border-color:#a0d9d9; 
			width: 30px; 
			height: 30px; 
			text-align: center;
			float: left; 
			margin-right: 10px;"
		}
		.newsButton{
			background-color: #a0d9d9; 
			border:2px solid ; 
			border-radius: 50%;  
			border-color:#a0d9d9; 
			width: 30px; 
			height: 30px; 
			text-align: center;
			float: left; 
			margin-right: 10px;
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
    
    
    <div class="site-navbar-wrap">
      <div class="site-navbar-top">
        <div class="container py-3">
          <div class="row align-items-center">
            <div class="col-6">
            </div>
            <div class="col-6">
              <div class="d-flex ml-auto">
                <a href="#" class="d-flex align-items-center ml-auto mr-4">
                  <span class="icon-phone mr-2"></span>
                  <span class="d-none d-md-inline-block">youremail@domain.com</span>
                </a>
                <a href="#" class="d-flex align-items-center">
                  <span class="icon-envelope mr-2"></span>
                  <span class="d-none d-md-inline-block">+1 291 2830 302</span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="site-navbar">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-2">
              <h1 class="mb-0 site-logo"><a href="index.html"></a></h1>
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li class="has-children">
                      <a href="index.html">Home</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="#">Menu One</a></li>
                        <li><a href="#">Menu Two</a></li>
                        <li><a href="#">Menu Three</a></li>
                        <li class="has-children">
                          <a href="#">Sub Menu</a>
                          <ul class="dropdown">
                            <li><a href="#">Menu One</a></li>
                            <li><a href="#">Menu Two</a></li>
                            <li><a href="#">Menu Three</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li><a href="about.html">About Us</a></li>
                    <li class="has-children">
                      <a href="projects.html">Projects</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="#">Menu One</a></li>
                        <li><a href="#">Menu Two</a></li>
                        <li><a href="#">Menu Three</a></li>
                      </ul>
                    </li>
                    <li  class="active"><a href="news.html">News</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-cover overlay inner-page" style="background-image: url(<%=request.getContextPath() %>/RECOREMain/RECOREFunding/backimg/news.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-10">
            <span class="sub-text"></span>
            <h1>News</h1>
          </div>
        </div>
      </div>
    </div>  
    <!--
    <div class="site-section about-section">
      <div class="container">
        <div class="row align-items-center mb-5 pb-5">
          <div class="col-lg-7 img-years mb-5 mb-lg-0">
            <span class="experience">
              <span class="years">27 yrs.</span>
              <span class="caption">of Experience</span>
            </span>
            <img src="images/about_1.png" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-4 ml-auto">
            <span class="sub-title">Architectural Design</span>
            <h3 class="mb-4">Architectural Design Co.</h3>
            <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate fuga ipsum commodi aliquid aspernatur reiciendis enim cum voluptas id itaque, asperiores modi, voluptatibus sed voluptate nulla et ratione aliquam! Quaerat.</p>
            <p><a href="#" class="btn btn-primary btn-lg rounded-0">Read More About Us</a></p>
          </div>
        </div>

        
      </div>
    </div>
    -->
    <div class="site-section">
      <div class="container">
      
        <div class="row">
          <div class="col-12 text-center">
           
            <h2 class="font-weight-bold text-black mb-5">펀딩 목록</h2>
           
          </div>
        </div>
        
        <div class="row">
		
			<c:forEach begin="${(page-1)*8 }" end="${((page-1)*8)+7 }" var="vo">
				<c:choose>
					<c:when test="${vo >= funding_list.size() }">
						<div class="col-lg-3 col-md-6 mb-4">
				           <div class="person">
				             <div class="bio-img">
				               <div class="social">
								<span style="font-size: 8pt; color:white;"><b></b></span>
				               </div>
				             </div>
				             <h2><span style="font-size: 12pt;"><b></b></span></h2>
				             <span class="sub-title"></span>
				           </div>
				         </div>
					</c:when>
					<c:otherwise>
						<div class="col-lg-3 col-md-6 mb-4">
				           <div class="person" onclick="location.href='funding.do?command=selectOneFunding&pageno=${page }&fund_no=${funding_list.get(vo).fund_no}'">
				             <div class="bio-img">
				                 <img src="<%=request.getContextPath() %>/RECOREMain/RECOREFunding/images/${funding_list.get(vo).fund_no }/f_img.png" alt="Image" class="img-fluid">
				               <div class="social">
							
				               </div>
				             </div>
				             <h2><span style="font-size: 12pt;"><b>${funding_list.get(vo).fund_title }</b></span></h2>
				             <span class="sub-title">${funding_list.get(vo).fund_creator }</span>
				           </div>
				         </div>
					</c:otherwise>
				</c:choose>
		         
			</c:forEach>
			
        </div>
        
        
        <div class="row" style="text-align: center;">
        	
        	<div class="" style="width:100%; margin-top:20px; text-align :center; padding-left: 44%;">
        		
        		<c:choose>
        			<c:when test="${page eq 1 }">
		        		<div class="newsButtonWhite">1</div>
		        		<div class="newsButton" onclick="location.href='funding.do?command=selectAllFunding&pageno=2'">2</div>
		        		<div class="newsButton" onclick="location.href='funding.do?command=selectAllFunding&pageno=3'">3</div>
        			</c:when>
        			<c:otherwise>
		        		<div class="newsButton" onclick="location.href='funding.do?command=selectAllFunding&pageno=${page-1 }'">${page-1 }</div>
        				<div class="newsButtonWhite" onclick="location.href='funding.do?command=selectAllFunding&pageno=${page }'">${page }</div>
		        		<div class="newsButton" onclick="location.href='funding.do?command=selectAllFunding&pageno=${page+1 }'">${page+1}</div>
        			</c:otherwise>
        		</c:choose>
        		
        		
        	</div>
        	
        </div>
        
      </div>
    </div>

<!-- 
    <div class="site-half">
      <div class="img-bg-1" style="background-image: url('images/hero_bg_1.jpg');"></div>
      <div class="container">
        <div class="row no-gutters align-items-stretch">
          <div class="col-md-12 col-lg-7 ml-lg-auto py-5">
            <span class="sub-title">Architectural Design</span>
            <h2 class="font-weight-bold text-black font-secondary mb-4">Why Choose Us</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.</p>
            <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.</p>  

            <ul class="list-unstyled ul-check primary">
              <li>Lorem ipsum dolor sit amet consectetur</li>
              <li>Consectetur tempora distinctio ipsam</li>
              <li>Recusandae repellendus asperiores amet</li>
              <li>Lorem ipsum dolor sit amet consectetur</li>
              <li>Consectetur tempora distinctio ipsam</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
-->
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

            <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Follow Us</h3>

                <div>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>


          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-3.3.1.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-ui.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/popper.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.stellar.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.countdown.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/bootstrap-datepicker.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/aos.js"></script>

  <script src="<%=request.getContextPath() %>/RECOREMain/js/main.js"></script>
    
  </body>
</html>