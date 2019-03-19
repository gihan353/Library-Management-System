<!DOCTYPE html>
<html>
<head>
	<title>Library Management System</title>

	<meta charset="UTF-8">
	<link rel="icon" href="assets/images/icon.png" type="image/x-icon">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

	<link href='https://googledrive.com/host/0B4zcNjwo-rgsTjc0OEtJby1pbFk/techfurk fmderana.css' rel='stylesheet' type='text/css'>


	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/hover.css">
	<link rel="stylesheet" type="text/css" href="assets/css/globle.css">
	<link href="https://fonts.googleapis.com/css?family=Teko" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/includes/b-news/css/font-awesome-animation.css" />
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<style type="text/css">
		.offset_0{padding-left: 0 !important;padding-right: 0 !important;}
		.offset_1{padding: 15px 10px 0 10px !important;}
		body{
			background:url(assets/images/homecopy.png) no-repeat center center fixed;
			-webkit-background-size:cover;
			-moz-background-size:cover;
			-o-background-size:cover;
			background-size:cover;
			}
	</style>
</head>
<body style="background-color: #151515;">
	<header>
		<div class="container-fulid" style="height: 100px;border-bottom: 3px solid #2695bb;background-color: #fff;">
			<div class="container">
				<div class="col-md-4">
					<img class="img-responsive logob" src="assets/images/logo.png">
				</div>
				<div class="col-md-8 menubox">
					<div class="topnav" id="myTopnav">
					  <a href="index.jsp" class="style1">Home</a>
					  <a href="about.jsp" class="style1">About</a>
					  <a href="services.jsp" class="style1">Services</a>
			      	  <a href="contact.jsp" class="style1">Contact</a>
                                  <%-- <a href="addadmin.jsp" class="style1 sinupbox">Sin Up &nbsp; <i class="fa fa-caret-down"></i></a> --%>
                                  <a href="adminlogin.jsp" class="style1 loginbox">Login &nbsp; <%--<i class="fa fa-caret-down"></i></a> --%>
					  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onClick="myFunction()">&#9776;</a>		
					</div>
				</div>
			</div>
		</div>
	</header>
	<section class="">
		<div>
		</div>
	</section>

</body>
<!--menu-->
<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
<!--menu-->
</html>