<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping Car</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="resource/js/jquery.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script src="resource/js/bootstrap.js"></script>
<link href="resource/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	
    <link href="resource/css/prettyPhoto.css" rel="stylesheet">
    <link href="resource/css/responsive.css" rel="stylesheet">
    <link href="resource/css/font-awesome.min.css" rel="stylesheet">
	<link href="resource/css/css.css" rel="stylesheet">
	<script src="resource/js/jquery-3.1.1.js"></script>
	<script src="resource/js/jquery-3.1.1.min.js"></script>
       <link rel="stylesheet" href="resource/css/font-awesome.min.css">

    <!-- Custom styles for this template -->
	<style>
	h4{
   font-family: -webkit-pictograph;
	}
	</style>
</head>
<body >
	<table width="100%">
		<tr>
			<td colspan="2"><tiles:insertAttribute name="header" /></td>
		</tr>
		<tr>
			<td width="80%"><tiles:insertAttribute name="body" /></td>
		</tr>
		<tr>
			<td colspan="2"><tiles:insertAttribute name="footer" /></td>
		</tr>
	</table>
</body>
</html>