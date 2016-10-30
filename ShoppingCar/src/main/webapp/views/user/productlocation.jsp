
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
					<div class="nav nav-pills nav-stacked choose-list">
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle supply" data-toggle="dropdown">
							LỰA CHỌN
							<span class="caret"></span>
						</button>
					
						<ul class="dropdown-menu">
							<li>
							<%-- 	<c:forEach var="detail" items="${detail }">
							<a href="${pageContext.request.contextPath }/productasc?iddetail=${detail.iddetail}">${detail.name}</a>
								</c:forEach> --%>
							</li>
						</ul>
					</div>
				<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle supply" data-toggle="dropdown">
							KHU VỰC
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li>
							<c:forEach var="loca" items="${loca}">
								<a href="${pageContext.request.contextPath }/location?idlocation=${loca.idlocation}">${loca.name}</a>
											</c:forEach>
							</li>
							
						</ul>
			
					</div>
				<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle supply" data-toggle="dropdown">
							LOẠI
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">MÀN HÌNH LỚN</a></li>
							<li><a href="#">MÀN HÌNH NHỎ</a></li>
							<li><a href="#">MÀN HÌNH VỪA</a></li>
						</ul>
                    </div>
                    </div>
                    	<div class="nav nav-pills nav-stacked">
                     <div class="list-product">
                <c:forEach var="phone" items="${location.listproduct }" varStatus="status">
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
        <div class="col-md-1"></div>
  </div>
  </div>
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help