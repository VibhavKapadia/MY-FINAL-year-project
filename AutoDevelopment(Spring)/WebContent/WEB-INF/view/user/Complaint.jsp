<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Complaint</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/img/logo1.ico" />
<!-- global styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/components.css" />
<link type="text/css" rel="stylesheet" href="resources/css/custom.css" />
<!-- end of global styles-->
<!--Plugin styles-->
<!-- <link type="text/css" rel="stylesheet"
	href="resources/css/validationEngine.jquery.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-datepicker.min.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-datepicker3.min.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/DateTimePicker.min.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrapValidator.min.css" />
 -->
<!--End of plugin styles-->
<!--Page level styles-->
<!-- <link type="text/css" rel="stylesheet"
	href="resources/css/form_validations.css" />
<link type="text/css" rel="stylesheet" href="#" id="skin_change" />
 -->
<!-- end of page level styles -->
<!--Plugin styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/jquery.inputlimiter.css" />
<link type="text/css" rel="stylesheet" href="resources/css/chosen.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-colorpicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/jquery.tagsinput.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/daterangepicker.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-datepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-timepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-switch.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/jasny-bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/fileinput.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/form_elements.css" />




<!--End of plugin styles-->
<script>
	function filesize() {

		var file = document.getElementById("file");

		var filesize = parseInt(file.files[0].size);

		var filesize2 = Math.floor(filesize / 1024);
		if (filesize2 > 2048) {

			alert("File size should be upto 2 MB");
			document.getElementById("file").value = "";
		}

	}
</script>
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/toastr.min.css" />
<script src="resources/js/jquery.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script type="text/javascript"
	src="${request.getContextPath}resources/js/toastr.min.js"></script>
<script>
	$(window).load(function() {
		setTimeout(function() {
			$('.toast-top-right').fadeOut()
		}, 2000);
	});
</script>

</head>
<body>
	<%
		Integer a = (Integer) session.getAttribute("fadeinfadeoutprojectcount");
		if (a != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Complaint Added!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutprojectcount", 0);
	%>

	<div class="preloader"
		style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">
		<div class="preloader_img"
			style="width: 200px; height: 200px; position: absolute; left: 48%; top: 48%; background-position: center; z-index: 999999">
			<img src="resources/img/loader.gif" style="width: 40px;"
				alt="loading...">
		</div>
	</div>
	<div class="bg-dark" id="wrap">
		<!-- HEADER -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- /HEADER -->
		<div class="wrapper">
			<!-- MENU -->
			<jsp:include page="menu.jsp"></jsp:include>
			<!--  /MENU -->

			<!-- /#left -->
			<div id="content" class="bg-container">
				<header class="head">
				<div class="main-bar row">
					<div class="col-sm-5 col-lg-6">
						<h4 class="nav_top_align">
							<i class="fa fa-pencil"></i> Add Complaint
						</h4>
					</div>
					<div class="col-sm-7 col-lg-6">
						<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
							<li class="breadcrumb-item"><a href="user.html"> <i
									class="fa fa-home" data-pack="default" data-tags=""></i>
									Dashboard
							</a></li>
							<li class="active breadcrumb-item">Add Complaint</li>
						</ol>
					</div>
				</div>
				</header>
				<div class="outer">
					<div class="inner bg-container">
						<div class="row">
							<div class="col-xl-12">
								<div class="card">
									<div class="card-header bg-white">
										<i class="fa fa-file-text-o"></i> Add Complaint
									</div>
									<div class="card-block m-t-35">
										<f:form action="insertComplaint.html" data-parsley-validate=""
											novalidate="" class="form-horizontal login_validator"
											id="form_block_validator" modelAttribute="complaint"
											method="post" enctype="multipart/form-data">

											<div class="form-group row">
												<div class="col-lg-4  text-lg-right">
													<label for="sport" class="form-control-label">Subject
														Name *</label>
												</div>
												<div class="col-lg-4">
													<f:input path="subject" placeholder="Type and hit Enter.."
														class="form-control" required="required" />
												</div>
											</div>

											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="sport" class="form-control-label">Description
														*</label>
												</div>
												<div class="col-lg-4">
													<f:textarea path="complaintDescription"
														placeholder="Type and hit Enter.." class="form-control"
														required='required' />
												</div>
											</div>

											<div class="form-group row">
												<div class="col-lg-4  text-lg-right">
													<label for="required2" class="form-control-label">File
														Upload *</label>
												</div>
												<div class="col-lg-4">
													<input type="file" name="file" id="file"
														onchange="filesize()" required="required" />
												</div>
											</div>


											<div class="form-actions form-group row">
												<div class="col-lg-4 push-lg-4">
													<input type="submit" value="Submit" class="btn btn-primary">
												</div>
											</div>
										</f:form>
									</div>
								</div>
							</div>
							<!-- /.col-lg-12 -->
						</div>
						<!-- /.row -->
						<!-- /.row -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.inner -->
			</div>
			<!-- /.outer -->
		</div>
		<!-- /#content -->
	</div>
	<!--wrapper-->
	<div id="right">
		<div class="right_content">
			<div class="alert alert-success white_txt">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Welcome Micheal <br /></strong> Set Your Skin Here.
				Checkout Admin Statistics. Good Day!.
			</div>
			<div class="well well-small dark">
				<div class="xs_skin_hide hidden-sm-up toggle-right">
					<i class="fa fa-cog"></i>
				</div>
				<h4 class="brown_txt">
					<span class="fa-stack fa-sm"> <i
						class="fa fa-circle fa-stack-2x"></i> <i
						class="fa fa-paint-brush fa-stack-1x fa-inverse"></i>
					</span> Skins
				</h4>
				<br />

				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('blue_black_skin.css','css')">
					<div class="skin_blue skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('green_black_skin.css','css')">
					<div class="skin_green skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('purple_black_skin.css','css')">
					<div class="skin_purple skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('orange_black_skin.css','css')">
					<div class="skin_orange skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('red_black_skin.css','css')">
					<div class="skin_red skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('mint_black_skin.css','css')">
					<div class="skin_mint skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('brown_black_skin.css','css')">
					<div class="skin_brown skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skinmulti_btn"
					onclick="javascript:loadjscssfile('black_skin.css','css')">
					<div class="skin_black skin_size"></div>
					<div class="skin_black skin_size"></div>
				</div>
				<div class="skin_btn skin_blue"
					onclick="javascript:loadjscssfile('blue_skin.css','css')"></div>
				<div class="skin_btn skin_green"
					onclick="javascript:loadjscssfile('green_skin.css','css')"></div>
				<div class="skin_btn skin_purple"
					onclick="javascript:loadjscssfile('purple_skin.css','css')"></div>
				<div class="skin_btn skin_orange"
					onclick="javascript:loadjscssfile('orange_skin.css','css')"></div>
				<div class="skin_btn skin_red"
					onclick="javascript:loadjscssfile('red_skin.css','css')"></div>
				<div class="skin_btn skin_mint"
					onclick="javascript:loadjscssfile('mint_skin.css','css')"></div>
				<div class="skin_btn skin_brown"
					onclick="javascript:loadjscssfile('brown_skin.css','css')"></div>
				<div class="skin_btn skin_black"
					onclick="javascript:loadjscssfile('black_skin.css','css')"></div>

			</div>
			<div class="well well-small dark">
				<h4 class="brown_txt margin15_bottom">
					<img src="resources/img/admin.jpg" width="32" height="32"
						class="rounded-circle avatar-img" alt="avatar"> &nbsp;Admin
					Statistics
				</h4>
				<br />
				<ul class="list-unstyled">
					<li class="green_txt margin15_bottom"><span
						class="fa-stack fa-sm"> <i
							class="fa fa-circle fa-stack-2x text-mint"></i> <i
							class="fa fa-lock fa-stack-1x fa-inverse"></i>
					</span> &nbsp; Last Login <span class="inlinesparkline float-xs-right">2hrs
							Back</span></li>
					<li class="warning_txt margin15_bottom"><span
						class="fa-stack fa-sm"> <i
							class="fa fa-circle fa-stack-2x text-brown"></i> <i
							class="fa fa-pencil fa-stack-1x fa-inverse"></i>
					</span> &nbsp; Pending Tasks <span class="dynamicsparkline float-xs-right">12</span></li>
					<li class="primary_txt margin15_bottom"><span
						class="fa-stack fa-sm"> <i
							class="fa fa-circle fa-stack-2x text-primary"></i> <i
							class="fa fa-cloud fa-stack-1x fa-inverse"></i>
					</span> &nbsp; Weather Today <span class="dynamicbar float-xs-right">Rainy</span>
					</li>
					<li class="margin15_bottom"><span class="fa-stack fa-sm">
							<i class="fa fa-circle fa-stack-2x text-brown"></i> <i
							class="fa fa-calendar fa-stack-1x fa-inverse"></i>
					</span> &nbsp; Events <span class="inlinebar float-xs-right">Team
							Out</span></li>
					<li class="success_txt margin15_bottom"><span
						class="fa-stack fa-sm"> <i
							class="fa fa-circle fa-stack-2x text-success"></i> <i
							class="fa fa-bell fa-stack-1x fa-inverse"></i>
					</span> &nbsp; Notifications <span class="inlinebar float-xs-right">5</span>
					</li>
				</ul>
			</div>
			<div class="well well-small dark right_progressbar_section">
				<h4 class="brown_txt">
					<span class="fa-stack fa-sm"> <i
						class="fa fa-circle fa-stack-2x text-brown"></i> <i
						class="fa fa-hand-o-down fa-stack-1x fa-inverse"></i>
					</span> Alerts
				</h4>
				<br /> <span>Sales Improvement</span> <span class="float-xs-right">
					<small>20%</small>
				</span>
				<div class="progress xs">
					<progress class="progress progress-striped progress-primary"
						value="20" max="100"></progress>
				</div>
				<span>Server Load</span> <span class="float-xs-right"> <small>80%</small>
				</span>
				<div class="progress xs">
					<progress class="progress  progress-striped progress-mint"
						value="80" max="100"></progress>
				</div>
				<span>Traffic Improvement</span> <span class="float-xs-right">
					<small>55%</small>
				</span>
				<div class="progress xs">
					<progress class="progress  progress-striped progress-danger"
						value="55" max="100"></progress>
				</div>
			</div>
		</div>
	</div>
	<!-- # right side -->
	</div>
	<!-- /#wrap -->
	<!-- global scripts-->
	<script type="text/javascript" src="resources/js/components.js"></script>
	<script type="text/javascript" src="resources/js/custom.js"></script>
	<!--End of Global scripts-->

	<script type="text/javascript" src="resources/js/jquery.uniform.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.inputlimiter.js"></script>
	<script type="text/javascript" src="resources/js/chosen.jquery.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrap-colorpicker.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.tagsinput.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.validVal.min.js"></script>
	<script type="text/javascript" src="resources/js/moment.min.js"></script>
	<script type="text/javascript" src="resources/js/daterangepicker.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrap-timepicker.min.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrap-switch.min.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.autosize.min.js"></script>
	<script type="text/javascript" src="resources/js/inputmask.js"></script>
	<script type="text/javascript" src="resources/js/jquery.inputmask.js"></script>
	<script type="text/javascript"
		src="resources/js/inputmask.date.extensions.js"></script>
	<script type="text/javascript"
		src="resources/js/inputmask.extensions.js"></script>
	<script type="text/javascript" src="resources/js/fileinput.min.js"></script>
	<script type="text/javascript" src="resources/js/theme.js"></script>


	<!--Plugin scripts-->

	<script type="text/javascript"
		src="resources/js/jquery.validationEngine.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.validationEngine-en.js"></script>
	<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript" src="resources/js/DateTimePicker.min.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="resources/js/moment.min.js"></script>
	<!--End of plugin scripts-->
	<!--Page level scripts-->
	<script type="text/javascript" src="resources/js/form.js"></script>

	<script type="text/javascript" src="resources/js/form_elements.js"></script>
	<!-- <script type="text/javascript" src="resources/js/form_validation.js"></script> -->
	<!-- end page level scripts -->

</body>

</html>
