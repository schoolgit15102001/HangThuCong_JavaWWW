<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<!-- Start header section -->
<jsp:include page="./header/mainHeader.jsp" flush="true" />


<section id="aa-catg-head-banner">
	<img
		src="${pageContext.request.contextPath}/view/client/assets/images/banner-product2.jpg"
		alt="banner sản phẩm">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Giới thiệu</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/">Trang
							chủ</a></li>
					<li style="color: #fff">Giới thiệu</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<section id="aa-product-category">
	<div class="container">
		<div class="row">
			<div>
				<h1 style="text-align: center; color: red;">Website Bán hàng
					thủ công</h1>
				<p>Shop bán đồ handmade/ đồ thủ công Online với nhiều năm hoạt
					động trên thị trường, Website của chúng tôi đã và đang là một trong
					những địa chỉ cung cấp những mẫu quà tặng handmade độc, đẹp, lạ
					theo phong cách vintage, retro, cổ điển, cá tính cho hàng ngàn
					khách hàng.</p>
				<p>Mỗi món quà tặng dành cho người thân, bạn bè hay đối tác mà
					chúng tôi cung cấp cho quý khách hàng là tổng hòa của sự sáng tạo,
					sự trân trọng, nâng niu chu đáo nhất. Rất nhiều món quà tặng độc,
					lạ, “có một không hai” đang được trưng bày tại đây.</p>
				<p>Những khách hàng đặt số lượng lớn, thường xuyên, phía chúng
					tôi cũng đưa ra mức chiết khấu hấp dẫn nhằm tạo điều kiện tốt nhất
					cho khách hàng của mình.</p>
				<p>Chúng tôi nhận sản xuất quà tặng quảng cáo, events cho quý
					công ty đối với các sản phẩm chọn lọc phù hợp. Vui lòng liên hệ
					trực tiếp tại số điện thoại 085.4926.311 hoặc nhom11HTC@gmail.com
					để biết thêm thông tin chi tiết và được hưởng mức chiết khấu ưu đãi
					nhất.</p>
				<p>Để được thỏa mãn nhìn ngắm những sản phẩm vintage độc đáo, ấn
					tượng và sở hữu những sản phẩm “không đụng hàng”, bạn có thể liên
					hệ với chúng tôi tại những địa chỉ sau:</p>
				<p>TP. Hồ Chí Minh | 085.4926.311</p>
				<p>Trường Đại học Công nghiệp TP.HCM | 12 Nguyễn Văn Bảo, Phường
					4, Gò Vấp, Thành phố Hồ Chí Minh.</p>
				<p>Email: nhom11HTC@gmail.com</p>
				<p>Website:
					http://localhost:8080/BaoCaoWWW_Nhom11_BanHangThuCong</p>
				<p>FB: https://www.facebook.com/ BaoCaoWWW_Nhom11_BanHangThuCong</p>
				<p>Chúc các bạn tìm được món quà tặng ưng ý nhất!</p>
				<img src="${url}/images/gioithieuBanner.jpg" alt="Đồ handmade đẹp"
					width="1160px" /> <br /> <br>

			</div>
		</div>
	</div>
</section>

<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->
