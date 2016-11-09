<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
                 <section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
				<c:forEach var="event" items="${event }">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>PHONE</span>-MARKET</h1>
									<h2>${event.name }</h2>
									<p>${event.description }</p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resource/img/${event.image }" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
							<h1><span>PHONE</span>-MARKET</h1>
									<h2>${event.name }</h2>
									<p>${event.description }</p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resource/img/${event.image1 }" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>PHONE</span>-MARKET</h1>
									<h2>${event.name }</h2>
									<p>${event.description }</p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resource/img/${event.image2 }" class="girl img-responsive" alt="" />
					
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="glyphicon glyphicon-menu-left s-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="glyphicon glyphicon-menu-right s-right"></i>
						</a>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
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
				<c:forEach var="sp" items="${sanpham }" varStatus="status">
             <div class="col-sm-3">
            		<div class="product-box">
                        <img src="<%=request.getContextPath() %>/resource/images/bike.jpg">
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
                    <p><br/></p>
                    <c:url value="/" var="page"></c:url>
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
             <div class="col-sm-3">
            		<div class="product-box">
                        <img src="<%=request.getContextPath() %>/resource/img/${phone.image}">
                        <div class="product-detail">
                            <a href="${pageContext.request.contextPath }/detail?idproduct=${phone.idproduct}" class="btn btn-default detail">XEM CHI TIẾT</a>
                        </div>
                        <div class="product-new">
                        <img alt="new" class="new" src="resource/img/new.png">
                        </div>
                      <h3>${phone.name}</h3>
                         <p>Giá:${phone.dongiasp }</p>
                            <h4>Lượt view:${phone.view}</h4>
                            <h4>Khu vực:${phone.locat.name}</h4>
                    </div>
                         </div>
                      </c:forEach>
                    </div>
            </div>
            </div>
        <div class="col-md-1"></div>
</div>
</div>