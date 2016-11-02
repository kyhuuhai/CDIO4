<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
            <section id="cart_items">
    	<div class="container">
    		<div class="table-responsive cart-infor content">
    			<table class="table table-condensed">
    				<thead>
    					<tr class="menu-cart">
    						<td class="image" style="padding-left:30px">IMAGE</td>
    						<td class="name">NAME PRODUCT</td>
    						<td class="price">PRICE</td>
    						<td class="quantity">QUANTITY</td>
    						<td class="total">TOTAL</td>
    						<td>DELETE</td>
    				</tr>
    				</thead>
    				<c:set var="sum" value="0"></c:set>
    				<c:forEach var="cart" items="${cart}">
    				<c:set var="s" value="${s+ cart.giaban* cart.soluong  }"></c:set>
    			<tbody>
    				<tr>
    					<td class="cart-image">
    						<img src="<%=request.getContextPath()%>/resource/images/4s.jpg" style="width:100px; heigth:100px">
    					</td>
    					<td class="cart-name">
    						<h4>${cart.sanPham.name }</h4>
    					</td>
    					<td class="cart-price">
    						<h4>${cart.giaban }đ</h4>
    					</td>
    					<td class="cart-quantity">
    						<h4>${cart.soluong } cái</h4>
    					</td>
    						<td class="cart-total">
    						<h4>${ cart.giaban* cart.soluong  }đ</h4>
    					</td>
    							<%-- 	</c:forEach> --%>	
    					<td class="cart-delete">
    						<a href="${pageContext.request.contextPath }/deletecart?idsp=${cart.sanPham.id}" onclick="return confirm('Are you sure DELETE')"><i class="glyphicon glyphicon-trash"></i></a>
    					</td>
    						
    				</tr>
    			</tbody>				
    			</c:forEach>	
    			<tr>
    				<td colspan="4" class="sum"><h4>
    					Tổng tiền thanh toán:</h4>
    				</td>
    				<td><h4>${s}đ</h4></td>
    			</tr> 	
    			</table>
    		</div>
    			<a href="<spring:url value="/home" />" class="btn btn-default"  style="background: #F0F0E9">BACK</a>
    			 <form action="checkout" method="post">
 	<button  value="create" name="create">ĐẶT HÀNG</button>
 </form><br>
    		</div>
    </section>