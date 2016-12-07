   <%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <section id="cart_items">
    	<div class="container content">
    		<div class="table-responsive cart-infor">
    			<table class="table table-condensed">
    				<thead>
    					<tr class="menu-cart">
    						<td class="">IMAGE</td>
    						<td class="image">NAME</td>
    						<td class="name">DESCRIPTION</td>
    						<td class="price">VIEW</td>
    						<td class="quantity">PRICE</td>
    						<td class="total">CATEGORY</td>
    						<td class="total">LOCATION</td>
    						<td>DELETE</td>
    						<td>UPDATE</td>
    				</tr>
    				</thead>
    				<c:forEach var="product" items="${listp }">
    				<tbody>
    				<tr>
    					<td class="cart-name">
    						<img alt="" src="${pageContext.request.contextPath }/resource/img/${product.image}" style="width:100px">
    					</td>
    					<td class="cart-price">
    						<h4>${ product.name}</h4>
    					</td>
    					<td class="cart-quantity">
    						<h4>${product.description}</h4>
    					</td>
    					<td class="cart-total">
    						<h4>${product.view}</h4>
    					</td>
    					    				<td class="cart-total">
    						<h4>${product.price}</h4>
    					</td>
<%--     					<td class="cart-total">
    						<h4>${product.listCartItem.quantity}</h4>
    					</td> --%>
    					<td class="cart-total">
    						<h4>${product.category.name}</h4>
    					</td>
    				<td class="cart-total">
    						<h4>${product.locat.name}</h4>
    					</td>
    					<td class="cart-delete">
    						<a href="${pageContext.request.contextPath }/deleteproduct?idproduct=${product.idproduct}" onclick="return confirm('Are you sure DELETE')"><i class="glyphicon glyphicon-trash"></i></a>
    					</td>	
    					<td class="cart-delete">
    						<a href="${pageContext.request.contextPath }/" onclick="return confirm('Are you sure DELETE')"><i class="glyphicon glyphicon-wrench"></i></a>
    					</td>	
    				</tr>
    				</c:forEach>
    			</tbody>		
    				</table>		
    		</div>
    	<a href="<spring:url value="/admin" />" class="btn btn-default"  style="background: #F0F0E9">BACK</a>
    		</div>
    </section>