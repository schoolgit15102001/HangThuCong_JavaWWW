<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");

    if (session.getAttribute("admin-username") == null) {
        response.sendRedirect(request.getContextPath() + "/admin/login");
    }
%>
<!-- Start header section -->
<jsp:include page = "./header/header.jsp" flush = "true" />
<div class="content-wrapper">
	<div class="container-fluid">
		<h4 style="text-align: center">HƯỚNG DẪN SỬ DỤNG</h4>
		<br> <br>
		<h4>Quản lý Admin: thêm và sửa tài khoản người dùng quản trị trang web</h4>
		<br> <br>
		<h4>Quản lý User: xem và quản lý một số thông tin cơ bản của khách hàng </h4>
		<br> <br>
		<h4>Chuyên mục: quản lý các danh mục của sản phẩm hanmade</h4>
		<br> <br>
		<h4>Danh sách Sản Phẩm: quản lý các sản phẩm hanmade</h4>
		<br> <br>
		<h4>Đơn hàng: xem và xác nhận đơn hàng</h4>
	</div> 
</div> 


<jsp:include page = "./footer/footer.jsp" flush = "true" />