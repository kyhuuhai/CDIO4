<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<div class="header_middle">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="logo pull-left">
							<a href="home.html"><img src="resources/img/12809732_240534996295136_3756555531503538654_n.png" style="width:100px;margin-top:-20px"></a>
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
    </header>
<p><br/></p>
<div class="container-fluid">
    <div class="row">
        <div class="container content">
                <div class="col-md-2 supplier">
                    <div class="menu-left">
                    <div class="nav nav-pills nav-stacked menu-left">
                    	<h3>DANH MỤC</h3>    
                    	  <c:forEach var="category" items="${Lcate }" varStatus="status">
								<li><a href="${pageContext.request.contextPath }/${category.idcategory}">${category.name }</a></li>
								</c:forEach>
								<!-- <li><a href="#">ĐIỆN THOẠI</a></li>
								<li><a href="#">LINH KIỆN</a></li>
								<li><a href="#">PHỤ KIỆN</a></li>
								<li><a href="#">MÁY ẢNH</a></li> -->						
					</div>
                        </div>                        
						<div class="menu-left">
                    <div class="nav nav-pills nav-stacked">
                    		<h3>HÃNG SẢN XUẤT</h3>   
                    	  <c:forEach var="supplier" items="${Lsup }" varStatus="status">
								<li><a href="${pageContext.request.contextPath }/supply?idsupplier=${supplier.idsupplier}">${supplier.name }</a></li>
								</c:forEach>
								<!-- <li><a href="#">ĐIỆN THOẠI</a></li>
								<li><a href="#">LINH KIỆN</a></li>
								<li><a href="#">PHỤ KIỆN</a></li>
								<li><a href="#">MÁY ẢNH</a></li> -->						
					</div>
                        </div>
				</div>
                
                    <p><br/></p>
               <div class="col-md-10">
                    	<div class="nav nav-pills nav-stacked">
                     <div class="list-product">
                <c:forEach var="phone" items="${findsup.listproduct }" varStatus="status">
             <div class="col-sm-4">
                       <div class="product-box">
                         <img src="<%=request.getContextPath() %>/resources/img/${phone.image}" style="width:200px; height:200px">
                        <div class="product-detail">
                            <a href="${pageContext.request.contextPath }/detail?idproduct=${phone.idproduct}" class="btn btn-default detail">XEM CHI TIẾT</a>
                    </div>
                              <h3>${phone.name}</h3>
                         <p>Giá:${phone.price }</p>
                            <h4>Lượt view:${phone.view}</h4>
                            <h4>Khu vực:${phone.locat.name}</p>
                        </div>
                        
                         </div>
                         </c:forEach>
                    </div>
                    <p><br/></p>
                    <ul class="pagination" style="float:right">
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">Trang Tiếp</a>
                        </li>
                    </ul>
        </div>
            </div>
        <div class="col-md-1"></div>
    </div>	
    </div>
    </div>
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
