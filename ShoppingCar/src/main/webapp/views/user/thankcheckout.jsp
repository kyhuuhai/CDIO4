<%@page contentType="text/html" pageEncoding="UTF-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<body>
	<header id="header">
		<div id="header_top">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
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
					<div class="col-md-6">
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
		<div class="header_middle">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="logo pull-left">
							<a href="${pageContext.request.contextPath }/home"></a>
						</div>
					</div>
					<div class="col-sm-6">
            <div id="custom-search-input">
			<form action="search" method="POST">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" name="name" style="    font-family: -webkit-pictograph;"/>
                    <span class="input-group-btn  search-button">
                        <button  class="btn btn-info search-button btn-lg" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
                </form>

            </div>
        </div>
     
					</div>
				</div>
        </div>
        
        <section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>PHONE</span>-MARKET</h1>
									<h2>Free Sale on</h2>
									<p>Nhằm tri ân khách hàng và đợt giảm giá hằng năm chúng tôi muốn gửi lời cảm ơn đến các thành viên đã ủng hộ mua hàng..Các bạn có thể xem chi tiết các sản phẩm tại đây</p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resources/img/14783_0_sx_500_is_b3.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
							<h1><span>PHONE</span>-MARKET</h1>
									<h2>Free Sale on</h2>
									<p>Nhằm tri ân khách hàng và đợt giảm giá hằng năm chúng tôi muốn gửi lời cảm ơn đến các thành viên đã ủng hộ mua hàng..Các bạn có thể xem chi tiết các sản phẩm tại đây</p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resources/img/canon_slr_digital_camera_by_dazmathew-d4i868o.png" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>PHONE</span>-MARKET</h1>
									<h2>Free Sale on</h2>
									<p>Nhằm tri ân khách hàng và đợt giảm giá hằng năm chúng tôi muốn gửi lời cảm ơn đến các thành viên đã ủng hộ mua hàng..Các bạn có thể xem chi tiết các sản phẩm tại đây</p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resources/img/may-anh-gia-re-Nikon_J3_White_1.jpg" class="girl img-responsive" alt="" />
					
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section>
    </header>
<div class="container-fluid">
    <div class="row">
        <div class="container content">
                THANK YOU FOR BUY
            </div>
            </div>
        <div class="col-md-1"></div>
</div>
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
    			<div class="footer_bottom_link pull-left">
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
