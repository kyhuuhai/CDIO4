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
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>THÔNG TIN SẢN PHẨM</span></i>
                    </div>        
                    <div class="panel-body">
                    <c:url var="order" value="/addproduct"></c:url>
              		<form:form action="${order}" commandName="newproduct">
                    <div class="form-group">
                    <label for="usr">Name Product:</label>
                         <form:input type="text" class="form-control" path="name" />
                    </div>
                      <div class="form-group">
                    <label for="usr">DESCRIPTION:</label>
                            <form:input type="text" class="form-control" path="description" />
                        <div class="form-group">
                    <label for="usr">IMAGE:</label>
                             <form:input type="text" class="form-control"  path="image" />
						</div>
						 <div class="form-group">
                    <label for="usr">PRICE:</label>
                             <form:input type="text" class="form-control"  path="price" />
						</div>
						<div class="form-group">
                    <label for="usr">VIEW:</label>
                             <form:input type="text" class="form-control"  path="view" />
						</div>
						<div class="form-group">
                    <label for="usr">ID LOCATION:</label>
                             <form:input type="text" class="form-control"  path="locat.idlocation" />
						</div>
						<div class="form-group">
                    <label for="usr">ID CATEGORY:</label>
                             <form:input type="text" class="form-control"  path="category.idcategory" />
						</div>
					</div>
					 <button type="submit" class="btn btn-success">THÊM</button>        
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
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="infor-us">
            <h2>
               <!--  <span>Jfreedom</span> -->
            </h2>
     <!--        <img src="resource/img/12809732_240534996295136_3756555531503538654_n.png" style="width:100px"> -->
        </div>
     </div>
        <div class="col-sm-3">
            
            <div class="contact">
							<!--  <h2>Contac with us</h2> -->
						<!-- 	<ul class="email">
								<a href="aloneguy13194@gmail.com"><i class="glyphicon glyphicon-envelope"></i><span>Aloneguy13194@gmail.com</span></a>
							</ul>
							<ul class="phone">
								<a href="01665102292"><i class="glyphicon glyphicon-earphone"></i><span>01665102292</span></a>
							</ul>
							<ul class="Address">
								<a href="Jfreedom"><i class="glyphicon glyphicon-home"><span>JfreedomCompany</span></i></a>
							</ul> -->
						
						</div>
        </div>
        <div class="col-sm-3">
            <div class="address">
               <!--  <h2>Địa chỉ-Map</h2> -->
               <!--  <img src="resource/img/data=RfCSdfNZ0LFPrHSm0ublXdzhdrDFhtmHhN1u-gM,vKnL_OA8GUOglta9wQ-rGzsABW8VQLvD4Se4DtTtyy68u0nBspxceFqPPBNxltgzkYumkunLu5rNlyqcBPlemVX0sBCSUy-t8xCWQEQQto27WPBhp6F76ue62Vm0mXcriREloppMzWHrMXDW5.png"style="width:250px"> -->
            </div>
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
    </footer>
</body>
