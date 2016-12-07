     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
          
                <!-- /.row -->

                <div class="row ">
                    <div class="col-lg-12">
                    <div class="detail-order">
                        <h3>CHI TIẾT ĐƠN HÀNG</h3>
                        <div class="panel-group">
                       <div class="panel panel-primary">
                       	  <div class="panel-heading">THÔNG TIN KHÁCH HÀNG</div>
                       	  <div class="panel-body">
                       	    <div class="col-sm-6">
                       	  	<p><b>Tên khách hàng:</b>${vieworderid.customer.name }</p>
                       	  	<p><b>Số điện thoại:</b>${vieworderid.customer.phonenumber }</p>
                       	  	<p><b>Địa chỉ:</b>${vieworderid.customer.streetname }</p>
                       	  </div>
                       	  <div class="col-sm-6">
                      <p><b>Mã đơn hàng:</b>${vieworderid.idorderdetail}</p>
                      <p><b>Tổng tiền:</b>${vieworderid.totalprice}</p>
                      <p><b>Ngày đặt hàng:</b>${vieworderid.createdate}</p>
                       	  </div>             	  
                       	  </div>
                       </div>
                       </div>
                        <h3>SẢN PHẨM ĐÃ CHỌN</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>MÃ SẢN PHẨM</th>
                                        <th>TÊN SẢN PHẨM</th>
                                        <th>SỐ LƯỢNG</th>
                                        <th>TỔNG TIỀN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="active">
                                        <td>${vieworderid.product.idproduct }</td>
                                        <td>${vieworderid.product.name }</td>
                                        <td>${vieworderid.quantity }cái</td>
                                        <td>${vieworderid.totalprice }$</td>
                                    </tr>
                                </tbody>
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
