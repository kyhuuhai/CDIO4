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
              		<form:form action="${pageContext.request.contextPath}/editproduct" commandName="product" modelAttribute="product" method="post">
              		<div class="add-product">
                    <div class="form-group">
                    <form:label for="usr" path="idproduct">ID</form:label>
                         <form:input type="text" class="form-control" path="idproduct" disabled="true" />
                         <form:input path="idproduct" type="hidden"/>
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
                             <form:input type="text" class="form-control"  path="price" placeholder="Nhập đơn giá"/>
						</div>
						<div class="form-group">
                    <label for="usr">LƯỢT XEM:</label>
                             <form:input type="text" class="form-control"  path="view" />
						</div>
							<div class="form-group">
                    <label for="usr">TÌNH TRẠNG:</label>
                             <form:input type="text" class="form-control"  path="status" />
						</div>
						<div class="form-group">
                    <label for="usr">KHU VỰC:</label>
                             <form:select path="locat.idlocation" class="selectpicker" style="
   											 width: 100%;
    										height: 30px;
   												 border-radius: 5px;
													">
                             <c:forEach var="locat" items="${location }">
                             	<form:option value="${locat.idlocation }">
                             		<c:out value="${locat.name }"></c:out>
                             	</form:option>
                             	</c:forEach>
                             </form:select>
						</div>
						<div class="form-group">
                    <label for="usr">DANH MỤC:</label>
                             <form:select path="category.idcategory" class="selectpicker" style="
   											 width: 100%;
    										height: 30px;
   												 border-radius: 5px;
													">
                             <c:forEach var="category" items="${category }">
                             	<form:option value="${category.idcategory }">
                             		<c:out value="${category.name }"></c:out>
                             	</form:option>
                             	</c:forEach>
                             </form:select>
						</div>
								<div class="form-group">
                    <label for="usr">HÃNG SẢN XUẤT:</label>
                             <form:select path="supplier.idsupplier" class="selectpicker" style="
   											 width: 100%;
    										height: 30px;
   												 border-radius: 5px;
													">
                             <c:forEach var="supplier" items="${sup }">
                             	<form:option value="${supplier.idsupplier }">
                             		<c:out value="${supplier.name }"></c:out>
                             	</form:option>
                             	</c:forEach>
                             </form:select>
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