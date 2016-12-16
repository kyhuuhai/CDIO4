 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="header_top">
			<div class="container">
			<header class="navbar navbar-fixed-top navbar-inverse">
				<div class="row">
					<div class="col-md-6">
						<div class="contact-account">
							<a href="${pageContext.request.contextPath }/" id="logo">Shopping Car</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="menu-acount pull-right">
							<ul class="nav nav-pills account-cust">
							<c:if test="${pageContext.request.userPrincipal.name == null}">
								<li>
									<a href="${pageContext.request.contextPath }/login"><span class="glyphicon glyphicon-user">
									
									</span>LOGIN</a>
    
								</li>
								<li>
										<a href="${pageContext.request.contextPath }/register"><i class="glyphicon glyphicon-user"></i><span>SIGN UP</span></a>

								</li>
								</c:if>
								<c:if test="${pageContext.request.userPrincipal.name != null}">
								<li>
										<a href="${pageContext.request.contextPath }/cart"><i class="glyphicon glyphicon-shopping-cart"></i><span>CART</span></a>

								</li>
								<li>
								<a href="<c:url value="/logout" />" > Log Out</a>
								</li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
				</header>
			</div>
			</div>
			
	<div class="header_middle">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
            <div id="custom-search-input">
			<form action="search" method="POST">
		                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" name="name" id="name" style="    font-family: -webkit-pictograph;"/>
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