
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<!-- Start header section -->
<jsp:include page="./header/mainHeader.jsp" flush="true" />
<!-- / header section -->

<!-- Start slider -->
<%-- <jsp:include page="./banner-slider/slider.jsp" flush="true" /> --%>
<!-- / slider -->

<!-- Start Promo section -->
<section id="aa-promo">
	<div class="container"></div>
</section>
<!-- / Promo section -->
<!-- Products section -->
<section id="aa-banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-banner-area">
						<a href="#"><img src="${url}/images/banner-product2.jpg"
							alt="banner trang chủ"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section id="aa-product">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-product-area">
						<div class="aa-product-inner">
							<!-- start prduct navigation -->
							<ul class="nav nav-tabs aa-products-tab">
								<li class="active"><a href="#raucu" data-toggle="tab">Đồ Da Handmade</a></li>
								<li><a href="#hat" data-toggle="tab">Album Ảnh Handmade</a></li>
								<li><a href="#traicay" data-toggle="tab">Phụ Kiện Handmade</a></li>
								<li><a href="#matong" data-toggle="tab">Thiệp Handmade Vintage</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- Start men product category -->
								<div class="tab-pane fade in active" id="raucu">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_raucu}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>

														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / men product category -->
								<!-- start women product category -->
								<div class="tab-pane fade" id="hat">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_hat}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / women product category -->
								<!-- start sports product category -->
								<div class="tab-pane fade" id="traicay">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_traicay}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / sports product category -->
								<!-- start electronic product category -->
								<div class="tab-pane fade" id="matong">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_matong}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / electronic product category -->
							</div>
							<c:url var="all" value="/view/client/product" />
							<div class="more-product">
								<a class="aa-browse-btn" href="${all}">Xem Tất Cả Sản Phẩm <span
									class="fa fa-long-arrow-right"></span></a>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Products section -->
<!-- banner section -->
<section id="aa-banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-banner-area">
						<a href="#"><img src="${url}/images/banner-product2.jpg"
							alt="banner trang chủ"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- popular section -->

<!-- / popular section -->
<!-- Support section -->
<section id="aa-support">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-support-area">
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-truck"></span>
							<h4>MIỄN PHÍ</h4>
							<P>Chúng tôi đã áp dụng gói miễn phí chi phí thực hiện sản
								phẩm handmade theo nhu cầu với tổng đơn hàng trị giá cao.</P>
						</div>
					</div>
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-clock-o"></span>
							<h4>GIAO HÀNG NHANH</h4>
							<P>Chúng tôi đảm bảo hàng đến tay khách hàng nhanh và đảm bảo
								sản phẩm an toàn.</P>
						</div>
					</div>
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-phone"></span>
							<h4>HỖ TRỢ 24/7</h4>
							<P>Hỗ trợ tư vấn và đặt hàng mọi lúc mọi nơi, đảm bảo thời
								gian cho khách hàng.</P>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Support section -->
<!-- Testimonial -->

<!-- / Testimonial -->

<!-- Latest Blog -->

<!-- / Latest Blog -->

<!-- Client Brand -->

<!-- / Client Brand -->
<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->

