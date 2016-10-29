<%@page contentType="text/html" pageEncoding="UTF-8"%>

          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
				
				</div>
			</div>
		</div>
	
    </header>
<p><br/></p>
<div class="container-fluid">
	<div class="container">
		<div class="row">
			<div class="col-sm-1">
			</div>
			<div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>ĐĂNG NHẬP</span></i>
                    </div>        
                    <div class="panel-body">
            <%--         <c:url var="login" value="/checklogin"></c:url>
              		<form:form action="${login}" commandName="login"> --%>
              				<p style="color:red">${message}</p>
              				<form action="saveorder" method="post">
                        <div class="form-group">
                    <label for="username">CUSTOMERNAME:</label>
                          <input type="text" class="form-control"  name="customername" />          
						</div>
						<div class="form-group">
                    <label for="password">ADDRESS</label>
                        <input type="text" class="form-control"  name="address" />          
						</div>
					 <button type="submit" class="btn btn-success">ĐẶT HÀNG</button>        
			<%-- 		</form:form> --%>
			</form>
					</div>
    				</div>	
					</div>
						<div class="col-sm-4">
						</div>
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
