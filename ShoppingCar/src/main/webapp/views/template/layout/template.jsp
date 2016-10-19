<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tour</title>

<script src="resource/js/jquery.js"></script>
<script src="resource/js/price-range.js"></script>
<script src="resource/js/jquery.scrollUp.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script src="resource/js/bootstrap.js"></script>
<link href="resource/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
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