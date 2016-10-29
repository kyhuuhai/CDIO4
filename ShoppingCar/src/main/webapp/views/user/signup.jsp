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
				<!--	<div class="col-sm-6">
						<div class="menu-acount pull-right">
							<ul class="nav nav-pills">
								<li>
									<a href="/login" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>LOGIN</a>
                                    <ul class="dropdown-menu">
                                        <div style="width:300px">
                                            <div class="panel panel-primary">
                                                <div class="panel panel-heading">
                                                    <label for="email">Email</label>
                                                    <input type="email" class="form-control" id="email" required/>
                                                    <label for="password">Password</label>
                                                    <input type="password" class="form-control" id="password" required/>
                                                    <p><br/></p>
                                                    <a href="#" style="color:white;list-style:none">Forget Password</a>
                                                    <p><br/></p>
                                                    <input type="submit" class="btn btn-success" id="login" value="Login">
                                                </div>
                                            </div>
                                        </div>
                                    </ul>
								</li>
								<li>
										<a href="/signup" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i><span>SIGN UP</span></a>
                                    <ul class="dropdown-menu">
                                        <div style="width:300px">
                                            <div class="panel panel-primary">
                                                <div class="panel panel-heading">
                                                    <label for="username">User Name</label>
                                                    <input type="text" class="form-control" id="username" required/>
                                                    <label for="password">Password</label>
                                                    <input type="password" class="form-control" id="password" required/>
                                                    <label for="confirmpassword">Confirm Password</label>
                                                    <input type="password" class="form-control" id="password" required/>
                                                    <label for="email">Email</label>
                                                    <input type="email" class="form-control" id="email" required/>
                                                    <p><br/></p>
                                                    <button type="submit" class="btn btn-default submit">Sign Up</button>
                                                </div>
                                            </div>
                                        </div>
                                    </ul>
								</li>
							</ul>
						</div>
					</div>-->
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
                <div class="panel panel-default content">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>THÔNG TIN NGƯỜI NHẬN</span></i>
                    </div>        
                    <div class="panel-body">
                    <c:url var="order" value="/order"></c:url>
              		<form:form action="${order}" commandName="newcus">
                    <div class="form-group">
                    <label for="usr">Name:</label>
                         <form:input type="text" class="form-control" path="name" />
                    </div>
                      <div class="form-group">
                    <label for="usr">EMAIL:</label>
                            <form:input type="text" class="form-control" path="email" />
                        <div class="form-group">
                    <label for="usr">AGE:</label>
                             <form:input type="text" class="form-control"  path="age" />
                          <div class="form-group">
                    <label for="usr">PHONE NUMBER:</label>
                             <form:input type="text" class="form-control"  path="phonenumber" />
                        </div>
                        <div class="form-group">
                    <label for="usr">USER NAME:</label>
                            <form:input type="text" class="form-control"  path="username" />          
						</div>
						<div class="form-group">
                    <label for="usr">PASSWORD:</label>
                            <form:input type="password" class="form-control"  path="password" />          
						</div>
						<div class="form-group">
                    <label for="usr">STREET NAME:</label>
                            <form:input type="text" class="form-control"  path="streetname" />        
						</div>
						</div>
					</div>
					 <button type="submit" class="btn btn-success">ĐĂNG KÝ</button>        
					</form:form>
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
