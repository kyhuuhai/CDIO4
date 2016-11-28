<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
               <section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
				<c:forEach var="event" items="${sanpham }">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>CAR</span>-MARKET</h1>
									<h2>SS8</h2>
									<p>Lose john poor same it case do year we. Full how way even the sigh. Extremely nor furniture fat questions now provision incommode preserved. </p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resource/images/ss7.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
							<h1><span>Car</span>-MARKET</h1>
									<h2>SS6</h2>
									<p>Stuff at avoid of sense small fully it whose an. Ten scarcely distance moreover handsome age although. </p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resource/images/ss7.jpg" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>Car</span>-MARKET</h1>
									<h2>SS7</h2>
									<p>No comfort do written conduct at prevent manners on. Celebrated contrasted discretion him sympathize her collecting occasional.</p>
									<button type="button" class="btn btn-default get">Chi tiết</button>
								</div>
								<div class="col-sm-6">
									<img src="resource/images/227.jpg" class="girl img-responsive" alt="" />
					
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