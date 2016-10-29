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
<div class="container">
  <h2>MANAGEMETN</h2>
  <ul class="nav nav-pills">
  <li class="active"><a href="#">Home</a></li>
  <li><a href="${pageContext.request.contextPath }/listcust">LIST CUSTOMER</a></li>
  <li><a href="${pageContext.request.contextPath }/addnewproduct">ADD PRODUCT</a></li>
  <li><a href="${pageContext.request.contextPath }/listproduct">MANAGE PRODUCT</a></li>
</ul>
</div>
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
