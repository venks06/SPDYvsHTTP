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
<body onload="visualizationStart()">
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
					<li class="active"><a href="index.html" onclick="">File statistics</a></li>
					<li class="active"><a href="quichttpupload.html" style="color:#7ED169">Comparisons</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<textarea id="json" style="display: none" rows="1000" cols="1000"><%=request.getAttribute("statistics")%></textarea>
	<div id="filestatistics" style="display:none"></div>
	<div style="text-align: center;">
		<h1 style="color: #A0A0A0;">SPDY/HTTP Statistics</h1>
	</div>
	<div id="chart-container">
		<div style="width: 100px; float: right; margin-right: 10px;">
			<table>
				<tr>
					<td><input id="throughputButton" type="button" width="100px"
						height="64px" value="Throughput" class='button'
						style="display: block; margin: 0px 0px 10px 5px; padding-top: 28px; padding-bottom: 28px;"
						onclick="visualizationStart()" /></td>
				</tr>
				<tr>
					<td><input id="pltButton" type="button" width="100px"
						height="64px" value="PLT" class='button'
						style="display: block; margin: 0px 0px 10px 5px; padding-top: 28px; padding-bottom: 28px;"
						onclick="pageLoadTime()" /></td>
				</tr>
				<tr>
					<td><input id="forwardthroughputButton" type="button" width="90px"
						height="64px" value="Fwd. throughput" class='button'
						style="display: block; margin: 0px 0px 10px 5px; padding-top: 28px; padding-bottom: 28px;"
						onclick="forwardReverseThroughput(true)" /></td>
				</tr>
				<tr>
					<td><input id="reversethroughputButton" type="button"
						width="90px" height="64px" value="Rev. throughput" class='button'
						style="display: block; margin: 0px 0px 10px 5px; padding-top: 28px; padding-bottom: 28px;"
						onclick="forwardReverseThroughput(false)" /></td>
				</tr>
			</table>
		</div>
		<div class="center chart">
			<div id="chart" style="width:40%;display: inline-block"></div>
			<div id="chart1" style="margin-left:50px; width:40%;display: inline-block;"></div>
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