<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
               <section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
				<c:forEach var="event" items="${sanphamslide }">
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