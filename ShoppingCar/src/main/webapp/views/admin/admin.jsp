<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
          
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <h2>DANH SÁCH SẢN PHẨM</h2>
                        <h4>${message }</h4>
                        <form action="addproduct" method="get">
                        <div class="btn-group">
                        	<a href="${pageContext.request.contextPath }/addproduct"><button class="btn btn-success" style="float:right">THÊM SẢN PHẨM</button></a>
                        </div>
                        </form>
                        <p><br/></p>
                        <div class="panel panel-primary">
                         <div class="panel-heading">SẢN PHẨM</div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>HÌNH ẢNH</th>
                                        <th>TÊN SẢN PHẨM</th>
                                        <th>GIÁ</th>
                                        <th>TÌNH TRẠNG</th>
                                        <th>DELETE/UPDATE</th>
                                    </tr>
                                </thead>
                                <c:forEach var="product" items="${Lproduct }">
                                <tbody>
                                    <tr>
                                        <td><img alt="" src="${pageContext.request.contextPath }/resource/img/${product.image}" style="width:100px"></td>
                                        <td>${product.name}</td>
                                        <td>${product.dongiasp}</td>
                                        <td>${product.description}</td>
                                        
                                        <td>
                                        	<div class="btn-group">
                                        	<a href="${pageContext.request.contextPath }/deleteproduct?id=${product.id }"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-trash"></i>Xóa</button></a>
                                        	</div>
                                        	<div class="btn-group">
                                        	<a href="${pageContext.request.contextPath }/editProduct?id=${product.id}"><button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-wrench"></i>Sửa</button></a>
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
                     <c:url value="/pageAd?pagenumber=${pagenumber }" var="page"></c:url>
                    <ul class="pagination" style="float:right">
                    	<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
                    <c:forEach var="i" begin="0" end="${totalPage }">
						<li>
                            <a href="${page }${i}">
                            <c:out value="${i }"></c:out>
                            </a>
                        </li>
                        </c:forEach>
                        <li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
                    </ul>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
