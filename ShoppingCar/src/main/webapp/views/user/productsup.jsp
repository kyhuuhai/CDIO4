<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                	<div class="product_item">
                    	<div class="nav nav-pills nav-stacked menu-left">
					<h3>SẢN PHẨM</h3>	
					</div>
                    	<div class="nav nav-pills nav-stacked">
                     <div class="list-product">
				<c:forEach var="sp" items="${sp }" varStatus="status">
             <div class="col-sm-3">
            		<div class="product-box">
                        <img src="<%=request.getContextPath() %>/resource/images/4s.jpg">
                        <div class="product-detail">
                            <a href="${pageContext.request.contextPath }/detail?idsp=${sp.id}" class="btn btn-default detail">XEM CHI TIẾT</a>
                        </div>
                   <!--      <div class="descrip-product"> -->
                          <h3>${sp.name}</h3>
                         <p>Giá:${sp.dongiasp}</p>
                    </div>
                    
                         </div>
                      </c:forEach>
                    </div>
                    </div>
                    </div>
                    <p><br/></p>
                    <ul class="pagination" style="float:right">
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">Trang Tiếp</a>
                        </li>
                    </ul>
        </div>
        </div>
        </div>
        </div>