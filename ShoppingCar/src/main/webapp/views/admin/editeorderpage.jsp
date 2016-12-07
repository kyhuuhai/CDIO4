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
                        <i class="glyphicon glyphicon-user"><span>SỬA ĐƠN HÀNG</span></i>
                    </div>        
                    <div class="panel-body">
              		<form:form action="${pageContext.request.contextPath}/editorderdetail" commandName="orderdetail" modelAttribute="orderdetail" method="post">
              		<div class="add-product">
                    <div class="form-group">
                    <form:label for="usr" path="idorderdetail">ID</form:label>
                         <form:input type="text" class="form-control" path="idorderdetail" disabled="true" />
                         <form:input path="idorderdetail" type="hidden"/>
                    </div>
                    <div class="form-group">
                    <label for="usr">TÊN KHÁCH HÀNG:</label>
                         <form:input type="text" class="form-control" path="customer.name" placeholder="Nhập tên sản phẩm"/>
                    </div>
                      <div class="form-group">
                    <label for="usr">TÊN SẢN PHẨM:</label>
                            <form:input type="text" class="form-control" path="product.name" placeholder="Nhập mô tả" />
                        </div>
                        <div class="form-group">
                    <label for="usr">TỔNG TIỀN:</label>
                             <form:input type="text" class="form-control"  path="totalprice" placeholder="Nhập tên ảnh"/>
						</div>
						 <div class="form-group">
                    <label for="usr">NGÀY ĐẶT HÀNG:</label>
                             <form:input type="text" class="form-control"  path="createdate" placeholder="Nhập đơn giá"/>
						</div>
						 <div class="form-group">
                    <label for="usr">TÌNH TRẠNG:</label>
                             <form:input type="text" class="form-control"  path="status" placeholder="Nhập đơn giá"/>
						</div>
						</div>
					</form:form>
					<a href="${pageContext.request.contextPath }/updateDetail?id=${orderdetail.idorderdetail}"> <button type="submit" class="btn btn-success">UPDATE</button></a>      
						</div>
						
						</div>
					</div>
					</div>
					</div>
					</div>


                <!-- /.row -->
            <!-- /.container-fluid -->