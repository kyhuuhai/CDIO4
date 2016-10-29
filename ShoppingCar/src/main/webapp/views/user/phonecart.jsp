<%@page contentType="text/html" pageEncoding="UTF-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
          <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<body>
	<header id="header">
		<div id="header_top">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contact-account">
							<ul class="nav nav-pills">
							<li class="email">
								<a href="aloneguy13194@gmail.com"><i class="glyphicon glyphicon-envelope"></i><span>Aloneguy13194@gmail.com</span></a>
							</li>
							<li class="phone">
								<a href="01665102292"><i class="glyphicon glyphicon-earphone"></i><span>01665102292</span></a>
							</li>
							<li class="Address">
								<a href="Jfreedom"><i class="glyphicon glyphicon-home"><span>JfreedomCompany</span></i></a>
							</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="menu-acount pull-right">
						<ul class="nav nav-pills account-cust">
								<li>
									<a href="${pageContext.request.contextPath }/login"><span class="glyphicon glyphicon-user"></span>LOGIN</a>
    
								</li>
								<li>
										<a href="${pageContext.request.contextPath }/addorder"><i class="glyphicon glyphicon-user"></i><span>SIGN UP</span></a>

								</li>
									<li>
										<a href="${pageContext.request.contextPath }/viewcart"><i class="glyphicon glyphicon-shopping-cart"></i><span>CART</span></a>

								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
    </header>
    <p><br/></p>
    <section id="cart_items">
    	<div class="container">
    		<div class="table-responsive cart-infor content">
    			<table class="table table-condensed">
    				<thead>
    					<tr class="menu-cart">
    						<td class="image" style="padding-left:30px">IMAGE</td>
    						<td class="name">NAME PRODUCT</td>
    						<td class="price">PRICE</td>
    						<td class="quantity">QUANTITY</td>
    						<td class="total">TOTAL</td>
    						<td>DELETE</td>
    				</tr>
    				</thead>
    				<c:set var="sum" value="0"></c:set>
    				<c:forEach var="cart" items="${cart}">
    				<c:set var="s" value="${s+ cart.product.price* cart.quantity }"></c:set>
    			<tbody>
    				<tr>
    					<td class="cart-image">
    						<img src="<%=request.getContextPath()%>/resources/img/${cart.product.image}" style="width:100px; heigth:100px">
    					</td>
    					<td class="cart-name">
    						<h4>${cart.product.name }</h4>
    					</td>
    					<td class="cart-price">
    						<h4>${cart.product.price }đ</h4>
    					</td>
    						<%-- <c:forEach var="cart" items="${cart.listCartItem }"> --%>
    					<td class="cart-quantity">
    						<h4>${cart.quantity } cái</h4>
    					</td>
    	<%-- 				</c:forEach> --%>
    						<td class="cart-total">
    						<h4>${cart.product.price* cart.quantity }đ</h4>
    					</td>
    							<%-- 	</c:forEach> --%>	
    					<td class="cart-delete">
    						<a href="${pageContext.request.contextPath }/deletecart?idproduct=${cart.product.idproduct}" onclick="return confirm('Are you sure DELETE')"><i class="glyphicon glyphicon-trash"></i></a>
    					</td>
    						
    				</tr>
    			</tbody>				
    			</c:forEach>	
    			<tr>
    				<td colspan="4" class="sum"><h4>
    					Tổng tiền thanh toán:</h4>
    				</td>
    				<td><h4>${s}đ</h4></td>
    			</tr> 	
    			</table>
    		</div>
    			<a href="<spring:url value="/home" />" class="btn btn-default"  style="background: #F0F0E9">BACK</a>
    			 <form action="checkout" method="post">
 	<button  value="create" name="create">ĐẶT HÀNG</button>
 </form><br>
    		</div>
    </section>
    <p><br/></p>
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
