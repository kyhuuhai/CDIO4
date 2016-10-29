<%@page contentType="text/html" pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
          <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<body>
		<h1 style="text-align:center">CHÚC MỪNG BẠN ĐÃ ĐĂNG NHẬP THÀNH CÔNG</h1>
	<section id="cart_items">
    	<div class="container content">
    		<div class="table-responsive cart-infor">
    			<table class="table table-condensed">
    				<thead>
    					<tr class="menu-cart">
    						<td class="image">NAME</td>
    						<td class="name">EMAIL</td>
    						<td class="price">AGE</td>
    						<td class="quantity">PHONE NUMBER</td>
    						<td class="total">USER NAME</td>
    						<td class="total">PASSWORD</td>
    						<td class="total">STREETNAME</td>
    						<td>DELETE</td>
    				</tr>
    				</thead>
    			<%-- 	<c:forEach var="cust" items="${custlogin }"> --%>
    				<tbody>
    				<tr>
    					<td class="cart-name">
    						<h4>${cust.name}</h4>
    					</td>
    					<td class="cart-price">
    						<h4>${ cust.email}</h4>
    					</td>
    					<td class="cart-quantity">
    						<h4>${cust.age}</h4>
    					</td>
    					
    						<td class="cart-total">
    						<h4>${cust.phonenumber}</h4>
    					</td>
    				<td class="cart-total">
    						<h4>${cust.username}</h4>
    					</td>
    					<td class="cart-total">
    						<h4>${cust.password}</h4>
    					</td>
    				<td class="cart-total">
    						<h4>${cust.streetname}</h4>
    					</td>
    					<td class="cart-delete">
    						<a href="${pageContext.request.contextPath }/deletecust?idcustomer=${cust.idcustomer}" onclick="return confirm('Are you sure DELETE')"><i class="glyphicon glyphicon-trash"></i></a>
    					</td>	
    				</tr>
    			<%-- 	</c:forEach> --%>
    			</tbody>		
    				</table>		
    		</div>
    	<%-- <a href="<spring:url value="/admin" />" class="btn btn-default"  style="background: #F0F0E9">BACK</a> --%>
    		</div>
    </section>
     <footer id="footer">
<div class="container-fluid footer_top">
    <div class="container">
        <div class="col-sm-3 top-left-first">
     </div>
        <div class="col-sm-3 top-left">
        </div>
        <div class="col-sm-3 top-center">
        </div>
        <div class="col-sm-3">
            
                	<div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
				<div class="icon-circle">
					<a href="#" class="ifacebook" title="Facebook"><i class="fa fa-facebook"></i></a>
				</div>
			</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
				<div class="icon-circle">
					<a href="#" class="itwittter" title="Twitter"><i class="fa fa-twitter"></i></a>
				</div>
			</div>
                 	<div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
				<div class="icon-circle">
					<a href="#" class="igoogle" title="Google+"><i class="fa fa-google-plus"></i></a>
				</div>
			</div>
                 	<div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
				<div class="icon-circle">
					<a href="#" class="iLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a>
				</div>
			</div>
                
       
        </div>
    </div>
    </div>
    <div class="container-fluid footer_middle">
    	<div class="container">
    		<div class="col-sm-4 footer_middle_item">
    			<div class="footer-item-tittle">
    				<a class="" href="">
    					<div class="footer-item-tittle-name">Group TPM3</div>
    					<div class="footer-item-tittle-icon"></div>
    				</a>
    				<a href="https://www.facebook.com/shuichiakai.cool" class="fa fa-facebook"></a>
    			<span>SĐT:01665102292</span><br>
    			<span>Address: 181-Phan Thanh-Đà Nẵng</span><br>
    			<span>Sinh viên: KHOA CNTT</span><br>
    			<span>Email:<a href="mailto:aloneguy13194@gmail.com">alone13194@gmail.com</a></span><br>
    			</div>
    		</div>
    		<div class="col-sm-4 footer_middle_item">
    		<div class="footer-item-tittle">
    			<a class="" href="">
    					<div class="footer-item-tittle-name">PHẠM AN BÌNH</div>
    					<div class="footer-item-tittle-icon"></div>
    				</a>
    				<a href="https://www.facebook.com/phamanbinhDTU?fref=ts" class="fa fa-facebook"></a>
    			<span>SĐT:XXXXXXXXX</span><br>
    			<span>Address: XXXXXXXXX</span><br>
    			<span>GIẢNG VIÊN: KHOA CNTT</span><br>
    				<span>Email:<a href="mailto:phamanbinh@gmail.com">phamanbinh@gmail.com</a></span><br>
    			</div>
    			</div>
    			<div class="col-sm-4 footer_middle_item">
    		<div class="footer-item-tittle">
    			<a class="" href="">
    					<div class="footer-item-tittle-name">BAN QUẢN TRỊ WEB</div>
    					<div class="footer-item-tittle-icon"></div>
    				</a>
    				<a href="https://www.facebook.com/phamanbinhDTU?fref=ts" class="fa fa-facebook"></a>
    					<span>Admin:<a href="mailto:levanvien@gmail.com">levanvien@gmail.com</a></span><br>
    					<span>Sale:<a href="mailto:dovuquan@gmail.com">dovuquan@gmail.com</a></span><br>
    					<span>Support:<a href="mailto:nguyenquocduy@gmail.com">guyenquocduy@gmail.com</a></span><br>
    					<span>Employee:<a href="mailto:duongvanthieu@gmail.com">duongvanthieu@gmail.com</a></span><br>
    			</div>
    			</div>
    		</div>
    	</div>
    <div class="container-fluid footer_bottom">
    	<div class="container">
    		<div class="col-sm-6 footer_bottom_item">
    			<div class="footer_bottom_link">
    				<a href="${pageContext.request.contextPath }/home">Trang chủ</a>
    				<a href="${pageContext.request.contextPath }/viewcart">Giỏ hàng</a>
    			</div>
    		</div>
    		<div class="col-sm-6 footer_bottom_item">
    			<div class="footer_bottom_link pull-right">
    				<h2>Design By MS</h2>
    			</div>
    		</div>
    	</div>
    </div>
    </footer>
</body>
