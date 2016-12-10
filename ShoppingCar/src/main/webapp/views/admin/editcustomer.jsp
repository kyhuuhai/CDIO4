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
                            QUẢN LÝ KHÁCH HÀNG
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> SỬA KHÁCH HÀNG
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

            <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>SỬA KHÁCH HÀNG</span></i>
                    </div>        
                    <div class="panel-body">
              		<form:form action="${pageContext.request.contextPath}/editcustomer" commandName="customer" modelAttribute="customer" method="post">
              		<div class="add-product">
                    <div class="form-group">
                    <form:label for="usr" path="id">ID</form:label>
                         <form:input type="text" class="form-control" path="id" disabled="true" />
                         <form:input path="id" type="hidden"/>
                    </div>
                    <div class="form-group">
                    <label for="usr">TÊN KHÁCH HÀNG:</label>
                         <form:input type="text" class="form-control" path="name" placeholder="Nhập tên sản phẩm"/>
                    </div>
                      <div class="form-group">
                    <label for="usr">EMAIL:</label>
                            <form:input type="text" class="form-control" path="email" placeholder="Nhập mô tả" />
                        </div>
                        <div class="form-group">
                    <label for="usr">NGAY SINH</label>
                             <form:input type="text" class="form-control"  path="ngaysinh" placeholder="Nhập tên ảnh"/>
						</div>
						 <div class="form-group">
                    <label for="usr">sdt:</label>
                             <form:input type="text" class="form-control"  path="sdt" placeholder="Nhập đơn giá"/>
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