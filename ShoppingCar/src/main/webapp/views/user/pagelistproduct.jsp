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
    	<div class="container">
    		<div class="table-responsive cart-infor">
    			<table class="table table-condensed">
    				<thead>
    					<tr class="menu-cart">
    						<td class="">IMAGE</td>
    						<td class="image">NAME</td>
    						<td class="name">DESCRIPTION</td>
    						<td class="price">VIEW</td>
    						<td class="quantity">PRICE</td>
    					<!-- 	<td class="total">QUANTITY</td> -->
    						<td class="total">CATEGORY</td>
    						<td class="total">LOCATION</td>
    						<td>DELETE</td>
    						<td>UPDATE</td>
    				</tr>
    				</thead>
    				<%-- <c:forEach var="list" items="${list }"> --%>
    				<tbody>
    				<tr>
    					<%-- <td class="cart-name">
    						<img alt="" src="${pageContext.request.contextPath }/resources/img/${list.image}" style="width:100px">
    					</td> --%>
    					<td class="cart-price">
    						<h4>${ list.name}</h4>
    					</td>
    					<td class="cart-quantity">
    						<h4>${list.description}</h4>
    					</td>
    					<td class="cart-total">
    						<h4>${list.view}</h4>
    					</td>
    					    				<td class="cart-total">
    						<h4>${list.price}</h4>
    					</td>
<%--     					<td class="cart-total">
    						<h4>${list.listCartItem.quantity}</h4>
    					</td> --%>
    					<td class="cart-total">
    						<h4>${list.category.name}</h4>
    					</td>
    				<td class="cart-total">
    						<h4>${list.locat.name}</h4>
    					</td>
    					<td class="cart-delete">
    						<a href="${pageContext.request.contextPath }/deletelist?idlist=${list.idproduct}" onclick="return confirm('Are you sure DELETE')"><i class="glyphicon glyphicon-trash"></i></a>
    					</td>	
    					<td class="cart-delete">
    						<a href="${pageContext.request.contextPath }/" onclick="return confirm('Are you sure DELETE')"><i class="glyphicon glyphicon-wrench"></i></a>
    					</td>	
    				</tr>
    			<%-- 	</c:forEach> --%>
    			</tbody>		
    				</table>		
    		</div>
    		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="firstUrl" value="/page/1" />
<c:url var="lastUrl" value="/page/${list.totalPages}" />
<c:url var="prevUrl" value="/page/${currentindex - 1}" />
<c:url var="nextUrl" value="/page/${currentindex + 1}" />
    		<div class="pagination">
    <ul>
        <c:choose>
            <c:when test="${currentindex == 1}">
                <li class="disabled"><a href="#">&lt;&lt;</a></li>
                <li class="disabled"><a href="#">&lt;</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="${firstUrl}">&lt;&lt;</a></li>
                <li><a href="${prevUrl}">&lt;</a></li>
            </c:otherwise>
        </c:choose>
        <c:forEach var="i" begin="${beginindex}" end="${endindex}">
            <c:url var="pageUrl" value="/pages/${i}" />
            <c:choose>
                <c:when test="${i == currentindex}">
                    <li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:choose>
            <c:when test="${currentindex == list.totalPages}">
                <li class="disabled"><a href="#">&gt;</a></li>
                <li class="disabled"><a href="#">&gt;&gt;</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="${nextUrl}">&gt;</a></li>
                <li><a href="${lastUrl}">&gt;&gt;</a></li>
            </c:otherwise>
        </c:choose>
    </ul>
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
        </div>
     </div>
        <div class="col-sm-3">
        </div>
        <div class="col-sm-3">
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
