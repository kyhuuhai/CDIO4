 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
          <div class="container-fluid">
    <div class="row">
        <div class="container content">
          <div class="col-md-2 col-left">
                    <div class="menu-left">
                    <div class="nav nav-pills nav-stacked">
                    	<h3>DANH MỤC</h3>  
                    	  <c:forEach var="category" items="${Lcate }" varStatus="status">
								<li><a href="${pageContext.request.contextPath }/cate?idcategory=${category.idcategory}">${category.name }</a></li>
								</c:forEach>					
					</div>
                        </div>                        
					<div class="menu-left">
                    <div class="nav nav-pills nav-stacked">
                    	<h3>HÃNG SẢN XUẤT</h3>   
                    	  <c:forEach var="supplier" items="${Lsup }" varStatus="status">
								<li><a href="${pageContext.request.contextPath }/supply?idsupplier=${supplier.idsupplier}">${supplier.name }</a></li>
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
                <c:forEach var="phone" items="${find.listproduct }" varStatus="status">
             <div class="col-sm-3">
                       <div class="product-box">
                         <img src="<%=request.getContextPath() %>/resource/img/${phone.image}">
                        <div class="product-detail">
                            <a href="${pageContext.request.contextPath }/detail?idproduct=${phone.idproduct}" class="btn btn-default detail">XEM CHI TIẾT</a>
                    </div>
                              <h3>${phone.name}</h3>
                         <p>Giá:${phone.price }</p>
                            <h4>Lượt view:${phone.view}</h4>
                            <h4>Khu vực:${phone.locat.name}</h4>
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