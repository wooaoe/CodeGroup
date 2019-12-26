<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>뉴스 &mdash; Colorlib Website Template</title>
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
    
    
    <div class="site-navbar-wrap" style="background-color: gray;">
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
                    <li><a href="news.html">News</a></li>
                    <li class="active"><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>

<!--
    <div class="site-blocks-cover overlay inner-page" style="background-image: url(images/backimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-10">
            <span class="sub-text"></span>
            <h1></h1>
          </div>
        </div>
      </div>
    </div>  
    
-->
    
    <div class="site-section" style=" padding-top: 5rem; padding-bottom: 10px">
    	<h1  style="margin-top:10rem; font-size: 3rem; text-align: center;" >쓰레기를 줄이는 <strong>친환경 플라스틱 패키지</strong></h1>
    	<div style="text-align: right; padding-right: 17%; padding-top: 50px; padding-bottom: 20px">2019/11/17</div>
    </div>
    
<!-- 
    <div class="site-section">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 mb-5">
            <div class="media custom-media">
              <div class="mr-3 icon"><span class="flaticon-interior-design display-4"></span></div>
              <div class="media-body">
                <h5 class="mt-0">Creative Solutions</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..
              </div>
            </div>
          </div>


          <div class="col-lg-4 col-md-6 mb-5">
            <div class="media custom-media">
              <div class="mr-3 icon"><span class="flaticon-step-ladder display-4"></span></div>
              <div class="media-body">
                <h5 class="mt-0">Design Interior</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-5">
            <div class="media custom-media">
              <div class="mr-3 icon"><span class="flaticon-turned-off display-4"></span></div>
              <div class="media-body">
                <h5 class="mt-0">Intuitive Design</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-5">
            <div class="media custom-media">
              <div class="mr-3 icon"><span class="flaticon-window display-4"></span></div>
              <div class="media-body">
                <h5 class="mt-0">Creative Solutions</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..
              </div>
            </div>
          </div>


          <div class="col-lg-4 col-md-6 mb-5">
            <div class="media custom-media">
              <div class="mr-3 icon"><span class="flaticon-measuring display-4"></span></div>
              <div class="media-body">
                <h5 class="mt-0">Design Interior</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-5">
            <div class="media custom-media">
              <div class="mr-3 icon"><span class="flaticon-sit-down display-4"></span></div>
              <div class="media-body">
                <h5 class="mt-0">Intuitive Design</h5>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
-->


    <div class="site-section site-block-3 bg-light">
      <div class="container">
        <div class="row">
        <!--
        	<div class="img-border" style="margin-left: 29%">
              <img src="images/frontimg.png" alt="Image" class="img-fluid">
            </div>
            <br><br>
        -->
            <div class="d-block mb-3" style="margin-left: 5%; width: 1000px">
              <img src="images/content.png" alt="Image" class="img-fluid">
            </div>
            
<!-- 
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="img-border">
              <img src="images/img_5.jpg" alt="Image" class="img-fluid">
            </div>
          </div>
          
-->
          
          
<!--
          <div class="col-lg-6">
            <div class="row row-items">
              <div class="col-6">
                <a href="#" class="d-flex text-center feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-step-ladder display-3"></span>
                    </span>
                    <h3>Pool Decor</h3>
                  </span>
                </a>
              </div>
              <div class="col-6">
                <a href="#" class="d-flex text-center feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-sit-down display-3"></span>
                    </span>
                    <h3>Seat Decor</h3>
                  </span>
                </a>
              </div>
            </div>
            <div class="row row-items last">
              <div class="col-6">
                <a href="#" class="d-flex text-center feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-turned-off display-3"></span>
                    </span>
                    <h3>Intuitive Idea</h3>
                  </span>
                </a>
              </div>
              <div class="col-6">
                <a href="#" class="d-flex text-center active feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-window display-3"></span>
                    </span>
                    <h3>Decorations</h3>
                  </span>
                </a>
              </div>
            </div>
          </div>
-->
          
        </div>
        <div style="text-align: right; margin-right: 100px;">한화케미칼 블로거</div>
    	<div style="text-align: right; margin-right: 100px;">세계일보</div>
    	<div style="text-align: right; margin-right: 100px;">https://post.naver.com/viewer/postView.nhn?volumeNo=27102701&memberNo=46184800</div>
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