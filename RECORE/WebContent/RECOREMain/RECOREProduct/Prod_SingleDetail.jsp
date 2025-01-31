<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%	request.setCharacterEncoding("UTF-8");%>
<% 	response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.mvc.vo.Vo_Product" %>
<%@ page import = "com.mvc.vo.Vo_Prod_option" %>
<%@ page import = "com.mvc.vo.Vo_Account" %>

<!DOCTYPE html>
<html class="no-js">
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<!-- @@ RECORE favicon @@  -->
	<link rel="icon" href="<%=request.getContextPath()%>/images/recorefavi.png">

<%@ include file="/headP.jsp"%>


<!-- 임의로 스타일 적용하기 -->
<style type="text/css">
	
	.testpadding {
		padding: 80px;
	}
	
	#productInfo {
		text-align: center;
		color: black;
	}
	
	#frontimg {
		width: 445px;
		height: 100%;
	}
	
	@font-face {
		font-family: 'Noto Sans Kannada', sans-serif;
		src: url("//fonts.googleapis.com/earlyaccess/notosanskannada.css") format("truetype");
		font-style: normal;
		font-weight: normal;
	}
	
	ul{
		font-family: 'Noto Sans Kannada', sans-serif;
	    font-size: 18px; 
	}
	html{
		scroll-behavior: smooth;
	}
	#img-fluid{
    	max-width: 350px;
    	height: 250px;
    }   
</style>

	<script type="text/javascript">
	
		$(document).ready(function(){
		$("#minus").click(function(){
		var stat = $("#number").val();
		var num = parseInt(stat, 10);
		num--;
											
		if(num < 0){
												
		alert("최소 1개 이상 선택해주세요.");
		num = 1;
		}
		$("#number").val(num);
											
		var amount = parseInt($("#number").val());
		var price = ${pvo.prod_price};
		var total = amount * price;
		$("#price").val(total);
											
		});
		
		$("#plus").click(function(){
											
		var stat = $("#number").val();
		var num = parseInt(stat, 10);
		num++;
											
		if(num > 10){
		alert("최대 10개 이상 구매하실 수 없습니다.");
		num = 1;
		}
		$("#number").val(num);
											
		var amount = parseInt($("#number").val());
		var price = ${pvo.prod_price};
		var total = amount * price;
		$("#price").val(total);
		});
										
		});
		
		
		function selectNum(){
			
			var selcolor = document.getElementById("selcolor");
			var colortext = selcolor.options[document.getElementById("selcolor").selectedIndex].text;
			var selsize = document.getElementById("selsize");
			var sizetext = selsize.options[document.getElementById("selsize").selectedIndex].text;
		}
	
							
	</script>

</head>

<body id="body">

	<%@ include file="/footerPdetail.jsp"%>

	
	<% Vo_Product pvo = (Vo_Product)request.getAttribute("pvo"); %>
	<% List<Vo_Product> plist = (List)request.getAttribute("plist"); %>
	<% List<Vo_Product> toplist = (List)request.getAttribute("toplist"); %>
	<% List<Vo_Prod_option> povo = (List)request.getAttribute("povo"); %>
	<% Vo_Account acc = (Vo_Account)session.getAttribute("vo"); %>
	
	<%! String url; %>
	<%! int catdno;  %>
	<% if(pvo.getProd_catd() == 6 || pvo.getProd_catd() == 7 || pvo.getProd_catd() == 8 ||
		  pvo.getProd_catd() == 9 || pvo.getProd_catd() == 10 || pvo.getProd_catd() == 11 ||
		  pvo.getProd_catd() == 12){ %>
	<% url = "ChildSelectAll"; %>
	<% } %>
	

	<!--상품 상세 페이지 -->
	<section class="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
				
					<ol class="breadcrumb">
						<li><a
							href="<%=request.getContextPath()%>/RECOREMain/index.html">Home</a></li>
						<li><a href="Product.do?command=ProdSelectAll&pageno=1">Product</a></li>

						<!-- @@카테고리 타고 넘어오는 부분 종류 뭔지 써주기@@ -->
    			    	<li class="active"><a
							href="Product.do?command=<%=url%>&catdno=${pvo.prod_catd}&pageno=1">${cdvo.catd_name}</a></li>
					</ol>
				</div>
				<div class="col-md-6">
					<ol class="product-pagination text-right">
						<li><a href="#"><i class="tf-ion-ios-arrow-left"></i>
								Next </a></li>
						<li><a href="#">Preview <i class="tf-ion-ios-arrow-right"></i></a></li>
					</ol>
				</div>
			</div>

			<div class="row mt-20">
				<div class="col-md-5">
					<div class="single-product-slider">
						<div id='carousel-custom' class='carousel slide' data-ride='carousel'>
							<div class='carousel-outer'>

								<!-- me art lab slider -->
								<div class='carousel-inner '>
									<div class='item active'>
										<img id="frontimg"
											src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png"
											alt='' data-zoom-image="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png" />
									</div>
									<div class='item'>
									<img id="frontimg" src='<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png' alt='' 
									data-zoom-image="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png" />
								</div>
								</div>

								<!-- sag sol -->
								<a class='left carousel-control' href='#carousel-custom'
									data-slide='prev'> <i class="tf-ion-ios-arrow-left"></i>
								</a> 
								<a class='right carousel-control' href='#carousel-custom'
									data-slide='next'> <i class="tf-ion-ios-arrow-right"></i>
								</a>
							</div>



							<!-- @@ 이미지 넘어가는 부분 @@ -->
							<ol class='carousel-indicators mCustomScrollbar meartlab'>
								<li data-target='#carousel-custom' data-slide-to='0'
									class='active'><img
									src='<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png'
									alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='1'><img
									src='<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png'
									alt='' /></li>
							</ol>

						</div>
					</div>
				</div>



				<!-- @@상품 이름, 가격 / 상세 정보글@@ -->
				<div class="col-md-7" style="position: relative; left: 50px;">
					<div class="single-product-details">
						<h2 style = "margin-top: 0px;">${pvo.prod_name}</h2>
						
						<p class="product-price">
							<fmt:formatNumber value="${pvo.prod_price}" groupingUsed="true">
							</fmt:formatNumber>원
						</p>

						<!-- @@상세 정보글@@ -->
						<p class="product-description mt-20">${pvo.prod_note}&nbsp;</p>
						<!-- <p>제품 정보 글 쓰는 곳</p>
						<br> -->
						
						<br>
						
						<!-- @@ 상품 옵션 값 보내주기 @@ -->
						
						<form action = "" method = "get" id = "form" name = "form">
						
						<input type = "hidden" name = "command" value = "Order" id = "val"/> 
						<input type = "hidden" name = "pseq" value = "${pvo.prod_no}" id = "val2"/>
						
						<div class="product-size">
							<span>색상:</span> 
							<select class="form-control" id = "selcolor" name = "color" onchange="selectNum();">
								<option value = "choice">선택</option>
								<c:forEach var = "color" items = "${povo}">
								<option value = "${color.prod_color}">${color.prod_color}</option>
								</c:forEach>
							</select>
						</div>

						<!-- @@사이즈@@ -->
						<div class="product-size">
							<span>사이즈:</span> 
							<select class="form-control" id = "selsize" name = "size" onchange="selectNum();">
								<option value = "choice">선택</option>
								<c:forEach var = "size" items = "${povo}">
								<option value = "${size.prod_size}">${size.prod_size}</option>
								</c:forEach>
								
							</select>
						</div>
						

						<!-- @@상품 수량@@ -->
						<div class="product-quantity">
							<span>수량:</span>
							<div class="product-quantity-slider">
								<div class="input-group bootstrap-touchspin">
									<span class="input-group-btn">
										<button id="minus" class="btn btn-default bootstrap-touchspin-down"
											type="button"> -
										</button>
									</span> 
									
									<span class="input-group-addon bootstrap-touchspin-prefix"
										style="display: none;">
									</span> 
									
									<input id="number"
										type="text" value="0" name="product-quantity"
										class="form-control" style="display: block;"> 
										
									<span class="input-group-addon bootstrap-touchspin-postfix"
										style="display: none;">
									</span> 
									
									<span class="input-group-btn">
										<button id="plus"
											class="btn btn-default bootstrap-touchspin-up" 
											type="button"> +
										</button>
									</span>
									
								</div>
							</div>
						</div>

						<!-- @@장바구니 / 바로구매 / 관심상품@@ -->

						<!-- 최상위 폴더 / 해당파일이 존재하는 폴더 / 해당파일 -->
						<br>
						<div class = "color-swatches" id = "total">
							<span>총 금액 :</span>
							<input id = "price" type = "text" value = "" name = "total" 
							style="background-color:transparent; border:0 solid black; font-size: 1.5em;
							width: 100px;"/>원
							
						</div>
						
						<br><br>
						<input type = "submit" value = "바로구매" id = "pay" 
						class = "btn btn-main mt-20" />&nbsp;&nbsp; 
						
						<input type = "button" value = "장바구니" id = "cart" 
						onclick="insertCart();"
							class="btn btn-main mt-20">&nbsp;&nbsp;
						
						<input type = "button" value = "관심상품" id = "wish"
						onclick="insertWish();"
						class="btn btn-main mt-20">
						</form>
						
					 	<script type="text/javascript">
							
							 function insertCart(){
								 for(var i = 0; i < <%=povo.size()%>; i++){
									var prod_id = ${povo.get(i).getProd_id()};
								}
								var prod_amount = $("#number").val(); 
								var acc_no = ${vo.acc_no};
								var prod_no = ${pvo.prod_no};
								location.href = "Product.do?command=insertCart&prod_id=" + prod_id 
									+ "&prod_amount=" + prod_amount + "&acc_no=" + acc_no + "&pseq=" + prod_no;
							}
							function insertWish(){
								var prod_no = ${pvo.prod_no};
								location.href = "Product.do?command=insertWish&pseq=" + prod_no;
							} 
						
						</script>
					</div>
				</div>
			</div>


			<!-- @@ Detail / Q&A / Review @@ -->
			<div class="row">
				<div class="col-xs-12">
					<div class="tabCommon mt-20">
						<br><br><br><br>
						<ul class="nav nav-tabs" style = "font-size: 11pt;">
							<li class="active">
							<a data-toggle="tab" href="#details"
								aria-expanded="true">DETAIL</a></li>
							<li class="">
							<a data-toggle="tab" href="#reviews"
								aria-expanded="false">REVIEW</a></li>
							<li class="">
							<a data-toggle="tab" href="#qna"
								aria-expanded="false">Q&A</a></li>
						</ul>
						<div class="tab-content patternbg">
							

							<!-- @@ 상세 내용 이미지 들어가는 곳 @@ -->
							<c:forEach begin="1" end="${pvo.prod_con_count}" step="1" var="i">
								<div id="details" class="tab-pane fade active in">
									<p>
										<img style="width: 900px; position: relative; left: 80px;"
											src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/con_img${i}.png">
									</p>
								</div>
							</c:forEach>


							<!-- @@리뷰 상세@@ -->
							<div id="reviews" class="tab-pane fade">
								<div class="post-comments">
									<ul class="media-list comments-list m-bot-50 clearlist">

										<!-- Comment Item start-->
										<li class="media"><a class="pull-left" href="#"> 
											<img class="media-object comment-avatar" src="imagesProd/blog/avater-1.jpg" 
											alt="" width="50" height="50" />
										</a>

											<div class="media-body">
												<div class="comment-info">
													<h4 class="comment-author">
														<!-- @@고객 아이디@@ -->
														<a href="#">${vo.acc_id}</a>
													</h4>
													
													<!-- @@ 글 작성 시간 @@ -->
													<time datetime="2019-12-24T23:00">Dec 23, 2019, at 11:34</time>
													
													<!-- @@ reply누르면 댓글 작성할 수 있게 @@  -->
													<a class="comment-button" href="#">
													<i class="tf-ion-chatbubbles"></i>Reply</a>
												</div>
												
												<!-- @@ 고객 리뷰글 가져오기 @@  -->
												<p>리뷰글 적는 곳</p>
												
											</div>
										</li>
							
							
								<!-- @@문의글 상세@@ -->
								<div id="qna" class="tab-pane fade">
									<div class="post-comments">
										<ul class="media-list comments-list m-bot-50 clearlist">

										<!-- Comment Item start-->
										<li class="media"><a class="pull-left" href="#"> 
											<img class="media-object comment-avatar" src="imagesProd/blog/avater-1.jpg" 
											alt="" width="50" height="50" />
										</a>

											<div class="media-body">
												<div class="comment-info">
													<h4 class="comment-author">
														<!-- @@고객 아이디@@ -->
														<a href="#">${vo.acc_id}</a>
													</h4>
													
													<!-- @@ 글 작성 시간 @@ -->
													<time datetime="2019-12-24T23:00">Dec 23, 2019, at 11:34</time>
													
													<!-- @@ reply누르면 댓글 작성할 수 있게 @@  -->
													<a class="comment-button" href="#">
													<i class="tf-ion-chatbubbles"></i>Reply</a>
												</div>
												
												<!-- @@ 고객 문의글 가져오기 @@  -->
												<p>리뷰글 적는 곳</p>
												
											</div>
										</li>
										<!-- @@ 문의 작성 끝 @@ -->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- @@ 연관 상품 추천 @@ -->
	<section class="products related-products section">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h2>연관 상품</h2>
				</div>
			</div>
			<%-- <div>${pvo.prod_catd}</div> --%>
			
			<div class="row">
			<!-- @@ 연관 상품 @@ -->
			<c:set var = "i" value = "0"></c:set>
			<c:forEach var = "sub" items = "${plist}">
			<c:choose >
			<c:when test="${sub.prod_catd eq pvo.prod_catd && i < 4}"> 
				<div class="col-md-3">
					<div class="product-item">
						<div class="product-thumb">
						
							<!-- 세일 여부 -->
							<!-- <span class="bage">Sale</span> -->
							<!-- Bag이면 가방이랑 연관된 상품, ACC면 악세사리랑 연관된 상품이 뜨도록 어떻게??? -->
							
							<img class="img-responsive" id = "img-fluid"
							src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${sub.prod_no}/f_img.png"
									alt="product-img" />
						</div>
						<!-- @@ 상품 이름, 가격 @@ -->
						<div class="product-content">
							<h4>
								<a href="Product.do?command=ProdDetail&pseq=${toplist.get(i).getProd_no()}
								&catdno=${toplist.get(i).getProd_catd()}"
								style = "overflow:hidden; word-wrap:break-word;">${sub.prod_name}</a>
							</h4>
							<p class="price"><fmt:formatNumber value="${sub.prod_price}" groupingUsed="true">
							</fmt:formatNumber>원
							</p>
						</div>
					</div>
				</div>
				<c:set var = "i" value = "${i+1}"></c:set>
			  </c:when>
			 </c:choose>
			</c:forEach>
		
			
			</div> 
		</div>
	</section>
	
	
	
	<!-- footer -->
	<%@ include file="/footer.jsp"%>


	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Touchpin -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Instagram Feed Js -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/instafeed-js/instafeed.min.js"></script>
	<!-- Video Lightbox Plugin -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
	<!-- Count Down Js -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/SyoTimer/build/jquery.syotimer.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/assets/warning.js"></script>



	<!-- Google Mapl -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="<%=request.getContextPath()%>/RECOREMain/js/script.js"></script>



</body>
</html>