<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ticket</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<!-- https://fonts.google.com/specimen/Roboto -->
<link rel="stylesheet" href="css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="css/templatemo-style.css">
<head>



</head>

<body id="reportsPage">

	<input type="hidden" id="status"
		value="<%= request.getAttribute("status")%>">

	<div class="" id="home">
	 <nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="index.jsp">
                    <h1 class="tm-site-title mb-0">ARMEKA HELPDESK</h1>
                </a>
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link " href="index.jsp">
                                <i class="fas fa-tachometer-alt"></i>
                                Dashboard
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span>
                                    Reports <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Daily Report</a>
                                <a class="dropdown-item" href="#">Weekly Report</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">

                            </a>
                               <li class="nav-item ">
                            <a class="nav-link" href="dialers.html">
                                <i class="fas fa-cog"></i>
                                Dialers
                            </a>

                        <li class="nav-item active">
                            <a class="nav-link" href="ticketbar.jsp">
                                <i class="far fa-file-alt"></i>
                                Tickets
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="accounts.html">
                                <i class="far fa-user"></i>
                                Accounts
                            </a>
                        </li>
                      
                    </ul>
                    <ul class="navbar-nav">
  							<li class="nav-item bg-danger">
                            <a class="nav-link d-block" href="logout" style="background-color: #54657d;"><h5>Logout</h5>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </nav>
		<div class="container tm-mt-big tm-mb-big">
			<div class="row">
				<div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
					<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
						<div class="row">
							<div class="col-12">
								<h2 class="tm-block-title d-inline-block">Raise Ticket</h2>
							</div>
						</div>
						<form method="post" action="ticket"class="tm-signup-form row">
						<div class="row tm-edit-product-row">
							<div class="col-xl-6 col-lg-6 col-md-12">
								<!-- <form method ="post" action="createticket" enctype="multipart/form-data class="tm-edit-product-form"> -->
				
				
									<div class="form-group mb-3">
										<label for="department">Department</label>
										<select class="custom-select `tm-select-accounts"
											id="department">
											<option selected>Select Department</option>
											<option value="1">Accounts</option>
											<option value="2">CRM</option>
											<option value="3">IT Support</option>
										</select>
									</div>

									<div class="form-group mb-3">
										<label for="subject">Subject </label>
										<input id="usubject" name="usubject" type="text"
											class="form-control validate" required />
									</div>
									<div class="row">
										<div class="form-group mb-3 col-xs-12 col-sm-6">
											<label for="uname">User's
												Name </label> <input id="uname" name="uname" type="text"
												class="form-control validate" data-large-mode="true" />
										</div>
										<div class="form-group mb-3 col-xs-12 col-sm-6">
											<label for="uempid">Employee
												Id </label> <input id="uempid" name="uempid" type="text"
												class="form-control validate" required />
										</div>

										<div class="form-group mb-3 col-xs-12 col-sm-6">
											<label for="uextno">Extension
												no </label> <input id="uextid" name="uextid" type="text"
												class="form-control validate" required />
										</div>

										<div class="form-group mb-3 col-xs-12 col-sm-6">
											<label for="uemail">Email
												Id </label> <input id="uemail" name="uemail" type="text"
												class="form-control validate" required />
										</div>
									</div>

									<div class="form-group mb-3">
										<label for="descr">Description
											Box</label> <input id="descr" name="descr" type="text"
										 class="form-control validate" rows="3" required></textarea>
									</div>
									<div class="form-group mb-3">
										<label for="priority">Priority</label>
										<select class="custom-select tm-select-accounts" id="priority">
											<option selected>Select Ticket Priority</option>
											<option value="1">High</option>
											<option value="2">Medium</option>
											<option value="3">Low</option>
										</select>


									</div>

							</div>
								
							<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
								<div class="tm-product-img-dummy mx-auto">
									<i class="fas fa-cloud-upload-alt tm-upload-icon"
										onclick="document.getElementById('fileInput').click();"></i>
								</div>
								<div class="custom-file mt-3 mb-3">
									<!-- <input id="image" type="file" styleadisplay: none;" /> <input
										type="button" class="btn btn-primary btn-block mx-auto"
										value="Upload Image"
										onclick="document.getElementById('fileInput').click();" /> -->

								</div>
							</div>

							<div class="col-12">
								<button type="submit"
									class="btn btn-primary btn-block text-uppercase">Raise
									Ticket</button>
							</div>
						
						</div>
					</form>
					</div>
			
				</div>
			
			</div>
		</div>
		<footer class="tm-footer row tm-mt-small">
			<div class="col-12 font-weight-light">
				<p class="text-center text-white mb-0 px-4 small">
					Copyright &copy; <b>2022</b> All rights reserved. Design: <a
						class="tm-footer-link">Deepak</a>
				</p>
			</div>
		</footer>

		<script src="js/jquery-3.3.1.min.js"></script>
		<!-- https://jquery.com/download/ -->
		<script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
		<!-- https://jqueryui.com/download/ -->
		<script src="js/bootstrap.min.js"></script>
		<!-- https://getbootstrap.com/ -->
		<script>
      $(function() {
        $("#expire_date").datepicker();
      });	
    </script>
</body>
</html>
