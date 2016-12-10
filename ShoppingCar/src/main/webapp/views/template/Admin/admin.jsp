<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
           <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Page</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/resource/css/bootstrap.min.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath }/resource/stylecss/morris.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resource/stylecss/css.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resource/stylecss/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">
<tiles:insertAttribute name="body">
</tiles:insertAttribute>
<tiles:insertAttribute name="navbar"></tiles:insertAttribute>
</div>
</body>
<script src="${pageContext.request.contextPath }/resource/jquerry/jquery-3.1.1.js"></script>
	<script src="${pageContext.request.contextPath }/resource/jquerry/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resource/js/bootstrap.min.js"></script>
</html>