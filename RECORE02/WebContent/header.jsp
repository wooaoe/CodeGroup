<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div style="background: #F25430;" >
    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
 	 <div class="site-navbar-wrap" style="position: static; background-color: #A0D9D9;">
      <div class="site-navbar-top">
        <div class="container py-3">
        
           <!-- @@@로고 위치 @@@-->
        <br>
        <div style = "text-align: center;"><a href = "<%=request.getContextPath()%>/RECOREMain/index.html"><img alt="" src = "<%=request.getContextPath()%>/RECOREMain/images/donut.png"></a></div>
        
          <div class="row align-items-center">
            <div class="col-6">
            
            <!--
              <a href="#" class="p-2 pl-0"><span class="icon-twitter"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-instagram"></span></a>
            -->
            
            </div>
           
            <!-- 페이지마다 로그인/회원가입 뜨는거 -->
            <div class="col-6">
              <div class="d-flex ml-auto">
              
               <form id="search" method="get" action="#" class="d-flex align-items-center ml-auto mr-4">
                	<!-- <input type="text" name="query" placeholder="Search" />
              		<a href="#search"> &nbsp; Search</a>  -->
              	</form>
                <a href="RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인&nbsp;&nbsp;</span>
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
              <!-- <h1 class="mb-0 site-logo"><a href="../index.html">RECORE</a></h1> -->
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li class="has-children">
                      <a href="<%=request.getContextPath()%>/RECOREMain/index.html" style = "color:black;">Funding</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="#">조회</a></li>
                        <li><a href="#">등록</a></li>
                      </ul>
                    </li>
                    <li class="has-children">
                      <a href="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/Prod_All.jsp" style = "color:black;">Product</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/BagAcc.jsp" style = "color:black;">Bag / Acc</a></li>
                        <li class = "has-children"><a href="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/Clothing.jsp" style = "color:black;">Clothing</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "<%=request.getContextPath()%>/RECOREMain/RECOREProduct/Outer.jsp">Outer</a></li>                        	
								<li><a href = "<%=request.getContextPath()%>/RECOREMain/RECOREProduct/TOP.jsp">Top</a></li>                        	
								<li><a href = "<%=request.getContextPath()%>/RECOREMain/RECOREProduct/Bottom.jsp">Bottom</a></li>                       	
                        	</ul>
                        </li>
                        <li><a href="#">Wallet</a></li>
                        <li class = "has-children"><a href="#">Life</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "#">Supply</a></li>                        	
								<li><a href = "#">Home</a></li>                        	
                        	</ul>
                        </li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="<%=request.getContextPath()%>/RECOREMain/news.html" style = "color:black;">Issue</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/RECOREMain/news.html">News</a></li>
                        <li><a href="<%=request.getContextPath()%>/RECOREMain/exhibition.html">Exhibition</a></li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="../news.html" style = "color:black;">Community</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/qna_board.jsp">QnA</a></li>
                        <li><a href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/review/review_board.jsp">Review</a></li>
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
 	</div>