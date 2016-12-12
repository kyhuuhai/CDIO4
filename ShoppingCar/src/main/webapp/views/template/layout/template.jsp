<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<%-- <title><tiles:getAsString name="title" /></title> --%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Car Market</title>
<link href="resource/css/bootstrap.min.css" rel="stylesheet">
<link href="resource/css/prettyPhoto.css" rel="stylesheet">
<link href="resource/css/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="resource/css/font-awesome.min.css">
<link href="resource/css/css.css" rel="stylesheet">
<script src="resource/js/main.js"></script>
<script src="resource/js/npm.js"></script>
<script src="resource/js/product.js"></script>
</head>
<body>
	<header>
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		<tiles:insertAttribute name="slide"></tiles:insertAttribute>
	</header>
	
	<tiles:insertAttribute name="body"></tiles:insertAttribute>
	<footer>
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</footer>
</body>
<script src="resource/js/jquery-3.1.1.js"></script>
<script src="resource/js/jquery-3.1.1.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
</html>