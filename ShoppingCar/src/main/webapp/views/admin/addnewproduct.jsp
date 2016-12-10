     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
            <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            QUẢN LÝ SẢN PHẨM
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> THÊM SẢN PHẨM
                            </li>                          
                        </ol>
                        <h3>${message }</h3>
                    </div>
                </div>
                <!-- /.row -->

            <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>THÔNG TIN SẢN PHẨM</span></i>
                    </div>        
                    <div class="panel-body">
                    <c:url var="order" value="/addproduct"></c:url>
              		<form:form action="${order}" commandName="product" modelAttribute="product">
              		<div class="add-product">
              		 <spring:bind path="name">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label for="usr">TÊN SẢN PHẨM:</label>
                    	 <form:errors path="name"></form:errors>
                         <form:input type="text" class="form-control" path="name" placeholder="Nhập tên sản phẩm"/>
                    </div>
                    </spring:bind>
                    	 <spring:bind path="description">
                      <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label for="usr">MÔ TẢ:</label>
                     <form:errors path="description"></form:errors>
                            <form:input type="text" class="form-control" path="description" placeholder="Nhập mô tả" />
                        </div>
                            </spring:bind>
                        	 <spring:bind path="image">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label for="usr">HÌNH ẢNH:</label>
                     <form:errors path="image"></form:errors>
                             <form:input type="text" class="form-control"  path="image" placeholder="Nhập tên ảnh"/>
						</div>
						    </spring:bind>
							 <spring:bind path="dongiasp">
						 <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label for="usr">ĐƠN GIÁ:</label>
                     <form:errors path="dongiasp"></form:errors>
                             <form:input type="text" class="form-control"  path="dongiasp" placeholder="Nhập đơn giá"/>
						</div>
						    </spring:bind>
					
       <%--          <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>THÔNG SỐ KỸ THUẬT</span></i>
                    </div>        
                    <div class="panel-body">
                    <div class="form-group">
                    <label for="usr">CPU:</label>
                         <form:input type="text" class="form-control" path="detailproduct.cpu" />
                    </div>
                      <div class="form-group">
                    <label for="usr">CHIPSET:</label>
                            <form:input type="text" class="form-control" path="detailproduct.chipset" />
                            </div>
                        <div class="form-group">
                    <label for="usr">RAM:</label>
                             <form:input type="text" class="form-control"  path="detailproduct.ram" />
						</div>
						 <div class="form-group">
                    <label for="usr">HDD:</label>
                             <form:input type="text" class="form-control"  path="detailproduct.hdd" />
						</div>
						<div class="form-group">
                    <label for="usr">GRAPHIC:</label>
                             <form:input type="text" class="form-control"  path="detailproduct.graphic" />
						</div>
						<div class="form-group">
                    <label for="usr">WEIGTH:</label>
                             <form:input type="text" class="form-control"  path="detailproduct.weight" />
						</div>
						<div class="form-group">
                    <label for="usr">OS:</label>
                     <form:input type="text" class="form-control"  path="detailproduct.os" />
					</div>
						</div>
						</div> --%>
						</div>
						 <button type="submit" class="btn btn-success">THÊM</button>        
					</form:form>
						</div>
						</div>
					</div>
					</div>
					</div>
					</div>


                <!-- /.row -->
            <!-- /.container-fluid -->