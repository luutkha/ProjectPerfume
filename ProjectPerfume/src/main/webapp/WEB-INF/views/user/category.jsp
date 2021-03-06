
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value='/category'/>" id="formSubmit" method="get">


	<div class="page-top-info">
		<div class="container">
			<h4>Bộ sưu tập</h4>
			<br>
			<h6>Tổng hợp những bộ sưu tập nước hoa hot nhất trong năm</h6>
			<!-- <div class="site-pagination">
				<a href="">Home</a> /
				<a href="">Shop</a> /
			</div> -->
		</div>
	</div>
	<!-- Page info end -->


	<!-- Category section -->

	<section class="category-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-2 order-lg-1">
					<div class="filter-widget">
						<h2 class="fw-title">Bộ sưu tập</h2>
						<ul class="category-menu">
							<!-- <li><a href="#">Woman wear</a>
								<ul class="sub-menu">
									<li><a href="#">Midi Dresses <span>(2)</span></a></li>
									<li><a href="#">Maxi Dresses<span>(56)</span></a></li>
									<li><a href="#">Prom Dresses<span>(36)</span></a></li>
									<li><a href="#">Little Black Dresses <span>(27)</span></a></li>
									<li><a href="#">Mini Dresses<span>(19)</span></a></li>
								</ul></li> -->						
							<li><a href="#">Cao cấp</a></li>
							<li><a href="#">Thấp cấp</a></li>
						</ul>
					</div>
					<!-- 
					<div class="filter-widget mb-0">
						<h2 class="fw-title">refine by</h2>
						<div class="price-range-wrap">
							<h4>Lọc theo giá</h4>
							<div
								class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
								data-min="100000" data-max="100000000">
								<div class="ui-slider-range ui-corner-all ui-widget-header"
									style="left: 0%; width: 100%;"></div>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"
									style="left: 0%;"> </span> <span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"
									style="left: 100%;"> </span>
							</div>
							<div class="range-slider">
								<div class="price-input">
									<input type="text" id="minamount"> <input type="text"
										id="maxamount">
								</div>
							</div>
						</div>
					</div>
					 -->
					<div class="filter-widget mb-0">
						<h2 class="fw-title">Size</h2>
						<div class="fw-size-choose">
							<div class="sc-item">
								<input type="radio" name="sc" id="xs-size"> <label
									for="xs-size">50ml</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="s-size"> <label
									for="s-size">100ml</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="s-size"> <label
									for="s-size">150ml</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="m-size" checked=""> <label
									for="m-size">250ml</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="l-size"> <label
									for="l-size">500ml</label>
							</div>

						</div>
					</div>
					<div class="filter-widget">
						<h2 class="fw-title">Thương hiệu</h2>
						<ul class="category-menu">
							<li><a href="#">Yumeisakura <span>(2)</span></a></li>
							<li><a href="#">Parour<span>(56)</span></a></li>
							<li><a href="#">Carolina Herrera<span>(36)</span></a></li>
							<li><a href="#">Minus 417<span>(27)</span></a></li>
							<li><a href="#">Charm<span>(19)</span></a></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-9  order-1 order-lg-2 mb-5 mb-lg-0">
					<div class="row">
						<c:forEach var="item" items="${model.listResult}">
							<div class="col-lg-4 col-sm-6">
								<div class="product-item">
									<div class="pi-pic">
										<div class="tag-sale">ON SALE</div>
										<a href="${pageContext.request.contextPath}/product/view?id=${item.id}&status=0">
										<img src="<c:url value="${item.image} "/>" alt="">
										</a>
										<div class="pi-links">
											<a href="${pageContext.request.contextPath}/product/view?id=${item.id}&status=0"  class="add-card"><i class="flaticon-bag"></i><span>
													 XEM CHI TIẾT</span></a> 
										</div>
									</div>
									<div class="pi-text">
										<h6>${item.sellPrice} VNĐ</h6>
										<p>${item.productName}</p>
									</div>
								</div>
							</div>
						</c:forEach>
						
						
		
		

		
				
			

		




					
					

					</div>
				
				</div>
			
			</div>
				<div class="col-12 d-flex justify-content-center">
					<div class="row">
					<ul class="pagination" id="pagination"></ul>	
								<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>						
					</div>
					</div>
		</div>
	</section>

	
	</form>

	
	<!-- Category section end -->
	<script >
	var totalPages = ${model.totalPage};
	var currentPage = ${model.page};
	$(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 10,
            startPage: currentPage,
            onPageClick: function (event, page) {
            	if (currentPage != page) {
            		$('#limit').val(12);
					$('#page').val(page);
					$('#formSubmit').submit();
				}
            }
        });
    });

	</script>

</body>
