     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                                <i class="fa fa-edit"></i> SỬA SẢN PHẨM
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

            <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>SỬA SẢN PHẨM</span></i>
                    </div>        
                    <div class="panel-body">
              		<form:form action="${pageContext.request.contextPath}/editProduct" commandName="product" modelAttribute="product" method="post">
              		<div class="add-product">
                    <div class="form-group">
                    <form:label for="usr" path="id">ID</form:label>
                         <form:input type="text" class="form-control" path="id" disabled="true" />
                         <form:input path="id" type="hidden"/>
                    </div>
                    <div class="form-group">
                    <label for="usr">TÊN SẢN PHẨM:</label>
                         <form:input type="text" class="form-control" path="name" placeholder="Nhập tên sản phẩm"/>
                    </div>
                      <div class="form-group">
                    <label for="usr">MÔ TẢ:</label>
                            <form:input type="text" class="form-control" path="description" placeholder="Nhập mô tả" />
                        </div>
                        <div class="form-group">
                    <label for="usr">HÌNH ẢNH:</label>
                             <form:input type="text" class="form-control"  path="image" placeholder="Nhập tên ảnh"/>
						</div>
						 <div class="form-group">
                    <label for="usr">ĐƠN GIÁ:</label>
                             <form:input type="text" class="form-control"  path="dongiasp" placeholder="Nhập đơn giá"/>
						</div>
						
						</div>
						 <button type="submit" class="btn btn-success">UPDATE</button>        
					</form:form>
						</div>
						</div>
					</div>
					</div>
					</div>
					</div>


                <!-- /.row -->
            <!-- /.container-fluid -->