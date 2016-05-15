<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>QUIC/SPDY vs HTTP</title>
<link href="bootstrap.min.css" rel="stylesheet">
<link href="styles.css" rel="stylesheet">
</head>
<body onload="start()" bgcolor="#EFEFEF">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">QUIC/SPDY vs HTTP</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html" style="color:#7ED169">File statistics</a></li>
					<li class="active"><a href="quichttpupload.html">Comparisons</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<textarea id="json" style="display: none" rows="1000" cols="1000"><%=request.getAttribute("statistics")%></textarea>
	<div id="filestatistics" style="display:none;"></div>
	<div style="text-align: center;">
		<h1 style="color: #A0A0A0;">SPDY/HTTP Statistics</h1>
	</div>
	<div style="width: 100px; float: right; margin-right: 10px;">
			<table>
				<tr>
					<td><input id="throughputButton" type="button" width="100px"
						height="64px" value="Throughput" class='button'
						style="display: block; margin: 0px 0px 10px 5px; padding-top: 28px; padding-bottom: 28px;"
						onclick="drawgraph()" /></td>
				</tr>
			</table>
		</div>
	<div id="chart-container">
		<!-- File contents -->
		<div id="filecontents" class="mygrid-wrapper-div packets" style="float:left;width:25%;display: inline-block;">
			
		</div>
		<div id="chart" class="center chart" style="width:60%; display: inline-block; margin-left: 20px;">
		Please select a flow from the left pane
			<div id="legend" class="legend"></div>
		</div>
	</div>
	<div id="xAxisText"
		style="text-align: center; color: #5090A0; padding-top: 30px; font-size: 20px;"></div>
	<script src="d3.min.js"></script>
	<script src="bar.js"></script>
	<script src="jquery.min.js"></script>
	<script src="bootstrap.min.js"></script>
</body>
</html>