<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--   <div class="col-sm-10"> -->
<div class="container-fluid">
    <div class="row">
        <div class="container content">
         <div class="col-md-2 col-left">
                    <div class="menu-left">
                    <div class="nav nav-pills nav-stacked">
                    	<h3>DANH MỤC</h3>  
                    	  <c:forEach var="dm" items="${danhmuc }" varStatus="status">
								<li><a href="${pageContext.request.contextPath }/loaisp?idloaisp=${dm.id}">${dm.tenloai }</a></li>
								</c:forEach>					
					</div>
                        </div>                        
					<div class="menu-left">
                    <div class="nav nav-pills nav-stacked">
                    	<h3>HÃNG SẢN XUẤT</h3>   
                    	  <c:forEach var="supplier" items="${HangSanXuat }" varStatus="status">
								<li><a href="${pageContext.request.contextPath }/supply?idsupplier=${supplier.id}">${supplier.name }</a></li>
								</c:forEach>						
					</div>
                        </div>    
				</div>
				 <div class="col-md-10 content-right">
                	<div class="detail_item">
                    	<div class="nav nav-pills nav-stacked menu-left">
					<h3>CHI TIẾT</h3>	
					</div>
                <div class="nav nav-stacked">
                	<h1>${pdetail.name}</h1>
             <div class="col-sm-6">
                       <div class="product-box">
                         <img src="<%=request.getContextPath() %>/resource/images/${pdetails.image}" style="height: auto">                 
                        </div>
                        </div>
                        <div class=col-sm-6>
                        <div class="detail-information">
                         <h1>$:${pdetail.dongiasp }</h1>
                         <c:if test="${pageContext.request.userPrincipal.name != null}">
                              <form action="addcart" method="post">
                            <a href="${pageContext.request.contextPath}/addcart?idsp=${pdetail.id}" class="btn btn-default add">Thêm vào giỏ</a>
                           </form>
                           </c:if>
                           
                           <c:if test="${pageContext.request.userPrincipal.name == null}">
                           	<h4 style="color: red;">Vui Lòng Đăng Nhập Để Thêm Sản Phẩm Vào Giỏ Hàng</h4>
                           	</c:if>
                           	
                            <h3>ĐẶC ĐIỂM CHI TIẾT</h3>
                          <i class="	glyphicon glyphicon-ok"></i>  <p>${pdetail.description }</p><br>
                          
                            </div>
                     </div>
                         </div>
                    </div>
                    
                 <%--    <div class="nav nav-pills nav-stacked menu-left">
					<h3>THÔNG SỐ KỸ THUẬT</h3>
						<div class="table-responsive cart-infor">
						<div>
    			<table class="table table-condensed">
    				<thead>
    					<tr class="description-detail" style="background: #ddd">
    						<td class="detail-product" >CPU</td>
    							<td class="item-detail">
    						<h4>${pdetail.detailproduct.cpu} <i class="	glyphicon glyphicon-ok"></i> </h4>
    					</td>
    						</tr>
    						<tr>
    						<td class="detail-product">CHIPSET</td>
    						<td class="item-detail">
    						<h4>${ pdetail.detailproduct.chipset} <i class="	glyphicon glyphicon-ok"></i> </h4>
    					</td>
    						</tr>
    					<tr style="background: #ddd">
    						<td class="detail-product">RAM</td><td class="item-detail">
    						<h4>${pdetail.detailproduct.ram} <i class="	glyphicon glyphicon-ok"></i> </h4>
    					</td>	</tr>
    					<tr >
    						<td class="detail-product">HDD</td><td class="item-detail">
    						<h4>${pdetail.detailproduct.hdd} <i class="	glyphicon glyphicon-ok"></i> </h4>
    					</td>	</tr>
    					<tr style="background: #ddd">
    						<td class="detail-product">GRAPHIC</td><td class="item-detail">
    						<h4>${pdetail.detailproduct.graphic} <i class="	glyphicon glyphicon-ok"></i> </h4>
    					</td>	</tr>
    					<tr >
    						<td class="detail-product">WEIGTH</td>	<td class="item-detail">
    						<h4>${pdetail.detailproduct.weight} <i class="	glyphicon glyphicon-ok"></i> </h4>
    					</td>	</tr>
    					<tr style="background: #ddd">
    						<td class="detail-product">OS</td><td class="item-detail">
    						<h4>${pdetail.detailproduct.os} <i class="	glyphicon glyphicon-ok"></i> </h4>
    					</td>	</tr>
    						
    			
    				</thead>
    				</table>
    				</div>		
    		</div>
					</div> --%>
					</div>
					</div>
</div>
</div>