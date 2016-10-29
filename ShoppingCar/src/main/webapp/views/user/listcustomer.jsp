<%@page contentType="text/html" pageEncoding="UTF-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
          <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
   <style>
      h4{
          font-family: -webkit-pictograph;
      }
   </style>


</head>
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
							<ul class="nav nav-pills">
								<li>
									<a href="/login" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>LOGIN</a>
								</li>
								<li>
										<a href="/signup" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i><span>SIGN UP</span></a>
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
    				<c:forEach var="cust" items="${listcust }">
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
    				</c:forEach>
    			</tbody>		
    				</table>		
    		</div>
    	<a href="<spring:url value="/admin" />" class="btn btn-default"  style="background: #F0F0E9">BACK</a>
    		</div>
    </section>
    <p><br/></p>
    <footer id="footer">
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="infor-us">
            <h2>
                <span>Jfreedom</span>-   Phone Mart
            </h2>
            <img src="resource/img/12809732_240534996295136_3756555531503538654_n.png" style="width:100px">
        </div>
     </div>
        <div class="col-sm-3">
            
            <div class="contact">
							 <h2>Liên hệ với chúng tôi</h2>
							<ul class="email">
								<a href="aloneguy13194@gmail.com"><i class="glyphicon glyphicon-envelope"></i><span>Aloneguy13194@gmail.com</span></a>
							</ul>
							<ul class="phone">
								<a href="01665102292"><i class="glyphicon glyphicon-earphone"></i><span>01665102292</span></a>
							</ul>
							<ul class="Address">
								<a href="Jfreedom"><i class="glyphicon glyphicon-home"><span>JfreedomCompany</span></i></a>
							</ul>
						
						</div>
        </div>
        <div class="col-sm-3">
            <div class="address">
                <h2>Địa chỉ-Map</h2>
                <img src="resource/img/data=RfCSdfNZ0LFPrHSm0ublXdzhdrDFhtmHhN1u-gM,vKnL_OA8GUOglta9wQ-rGzsABW8VQLvD4Se4DtTtyy68u0nBspxceFqPPBNxltgzkYumkunLu5rNlyqcBPlemVX0sBCSUy-t8xCWQEQQto27WPBhp6F76ue62Vm0mXcriREloppMzWHrMXDW5.png"style="width:250px">
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
