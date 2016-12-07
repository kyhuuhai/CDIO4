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
                            QUẢN LÝ DANH MUC
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> THÊM DANH MỤC
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

            <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-user"><span>THÔNG TIN HÃNG SẢN XUẤT</span></i>
                    </div>        
                    <div class="panel-body">
                    <c:url var="supply" value="/addsupply"></c:url>
              		<form:form action="${supply}" commandName="newsupply" modelAttribute="newsupply">
              		<div class="add-product">
              		 <spring:bind path="name">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label for="usr">TÊN DANH MỤC:</label>
                    	 <form:errors path="name"></form:errors>
                         <form:input type="text" class="form-control" path="name" placeholder="Nhập tên hãng sản xuất"/>
                    </div>
					</spring:bind>
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