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
                            QUẢN LÝ NHÀ SẢN XUẤT
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> SỬA HÃNG SẢN XUẤT
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

            <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>SỬA HÃNG SẢN XUẤT</span></i>
                    </div>        
                    <div class="panel-body">
              		<form:form action="${pageContext.request.contextPath}/editsupply" commandName="supply" modelAttribute="supply" method="post">
              		<div class="add-product">
                    <div class="form-group">
                    <form:label for="usr" path="idsupplier">ID</form:label>
                         <form:input type="text" class="form-control" path="idsupplier" disabled="true" />
                         <form:input path="idsupplier" type="hidden"/>
                    </div>
                    <div class="form-group">
                    <label for="usr">TÊN HÃNG SẢN XUẤT:</label>
                         <form:input type="text" class="form-control" path="name" placeholder="Nhập tên sản phẩm"/>
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