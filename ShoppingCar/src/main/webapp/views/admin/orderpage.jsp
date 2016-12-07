 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
          
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <h2>DANH SÁCH ĐƠN HÀNG</h2>
                        <p><br/></p>
                        <div class="panel panel-primary">
                         <div class="panel-heading">ĐƠN HÀNG</div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>MÃ ĐƠN HÀNG</th>
                                        <th>TÊN KHÁCH HÀNG</th>
                                        <th>TÊN SẢN PHẨM</th>
                                        <th>TỔNG TIỀN</th>
                                        <th>NGÀY ĐẶT HÀNG</th>
                                        <th>TRẠNG THÁI</th>
                                        <th>NGÀY UPDATE</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <c:forEach var="order" items="${listorder }">
                                <tbody>
                                    <tr>
                                        <td>${order.idorderdetail }</td>
                                        <td>${ order.customer.name}</td>
                                        <td>${ order.product.name}</td>
                                        <td>${order.totalprice }$</td>
                                        <td>${order.createdate}</td>
                                        <td>
                                       	<a href="${pageContext.request.contextPath }/editorderdetail?idorderdetail=${order.idorderdetail}"><button type="button" class="btn btn-primary">${order.status }</button></a>                     
                                        </td>
                                        <td>${order.lastupdate}</td>
                                        <td>
                                        	<div class="btn-group">
                                        	<a href="${pageContext.request.contextPath }/deleteorder?idorderdetail=${order.idorderdetail}"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-trash"></i>Xóa</button></a>
                                        	</div>
                                        	<div class="btn-group">
                                        	<a href="${pageContext.request.contextPath }/vieworderdetail?idorderdetail=${order.idorderdetail}"><button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-wrench"></i>XEM</button></a>
                                        	</div>
                                        </td>
                                    </tr>
                                </tbody>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                    </div>
                   <div class="row"></div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
