<%@page contentType="text/html" pageEncoding="UTF-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<body>
	
    
<div class="container-fluid">
    <div class="row">
        <div class="container content">
                <div class="col-md-2 col-left">
                    <div class="menu-left">
                    <div class="nav nav-pills nav-stacked">
                    	<h3>DANH MỤC</h3>  
                    	  <c:forEach var="loaisp" items="${danhmuc }">
								<li><a href="${pageContext.request.contextPath }/${loaisp.tenloai}">${loaisp.tenloai }</a></li>
								</c:forEach>					
					</div>
                        </div>                        
					<div class="menu-left">
                    <div class="nav nav-pills nav-stacked">
                    	<h3>HÃNG SẢN XUẤT</h3>   
                    	  <c:forEach var="thuonghieu" items="${HangSanXuat }" varStatus="status">
								<li><a href="${pageContext.request.contextPath }/supply?id=${thuonghieu.id}">${thuonghieu.name }</a></li>
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
							<c:forEach var="loca" items="${location }">
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
                    <p><br/></p>
                   <div class="list-product">
				<c:forEach var="sanpham" items="${Lproduct }" varStatus="status">
             <div class="col-sm-4">
            		<div class="product-box">
                        <img src="<%=request.getContextPath() %>/resource/images/${image}">
                        <div class="product-detail">
                            <a href="${pageContext.request.contextPath }/detail?id=${sanpham.id}" class="btn btn-default detail">XEM CHI TIẾT</a>
                        </div>
                          <h3>${sanpham.name}</h3>
                         <p>Giá:${price }3000000</p>
                            <h4>Lượt view:${view}250</h4>
                            <h4>Khu vực:${phone.locat.name}Da Nang</p>
                            <h4>Địa Chỉ: ${sanpham.diachi }
                    </div>
                    
                         </div>
                      </c:forEach>
                    </div>
                    <p><br/></p>
                    <c:url value="/page/" var="page"></c:url>
                    <ul class="pagination" style="float:right">
                    <c:forEach var="i" begin="0" end="${totalPage }">
                        <li class="active">
                            <a href="${page }${i}">
                            <c:out value="${i }"></c:out>
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
          
        </div>
        <div class="nav nav-pills nav-stacked menu-left">
					<h3>SẢN PHẨM MỚI NHẤT</h3>	
					</div>
		       <div class="list-product">
				<c:forEach var="phone" items="${newest }" varStatus="status">
             <div class="col-sm-4">
            		<div class="product-box">
                        <img src="<%=request.getContextPath() %>/resource/img/${phone.image}">
                        <div class="product-detail">
                            <a href="${pageContext.request.contextPath }/detail?idproduct=${phone.idproduct}" class="btn btn-default detail">XEM CHI TIẾT</a>
                        </div>
                        <div class="product-new">
                        <img alt="new" class="new" src="resource/img/new.png">
                        </div>
                      <h3>${phone.name}</h3>
                         <p>Giá:${phone.price }</p>
                            <h4>Lượt view:${phone.view}</h4>
                            <h4>Khu vực:${phone.locat.name}</p>
                    </div>
                         </div>
                      </c:forEach>
                    </div>
            </div>
            </div>
        <div class="col-md-1"></div>
</div>
</div>

</body>
