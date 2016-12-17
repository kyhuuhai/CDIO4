<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
          
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <h2>DANH SÁCH DANH MỤC</h2>
                        <form action="addsupply" method="get">
                        <div class="btn-group">
                        	<a href="${pageContext.request.contextPath }/addsupply"><button class="btn btn-success" style="float:right">THÊM HÃNG SẢN XUẤT</button></a>
                        </div>
                        </form>
                        <p><br/></p>
                        <div class="panel panel-primary">
                         <div class="panel-heading">DANH MỤC</div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                       <th>TÊN</th>
                                        <th>DELETE/UPDATE</th>
                                    </tr>
                                </thead>
                                <c:forEach var="supply" items="${listSup}">
                                <tbody>
                                    <tr>
                                        
                                        <td>${supply.name}</td>
                                        
                                        <td>
                                        	<div class="btn-group">
                                        	<a href="${pageContext.request.contextPath }/removeSupply?id=${supply.id }"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-trash"></i>Xóa</button></a>
                                        	</div>
                                        	<div class="btn-group">
                                        	<a href="${pageContext.request.contextPath }/editsupply?id=${supply.id}"><button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-wrench"></i>Sửa</button></a>
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
