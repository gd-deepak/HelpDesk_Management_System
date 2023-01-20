<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Accounts</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body id="reportsPage">
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
                               <li class="nav-item">
                            <a class="nav-link" href="dialers.html">
                                <i class="fas fa-cog"></i>
                                Dialers
                            </a>

                        <li class="nav-item">
                            <a class="nav-link" href="ticketbar.jsp">
                                <i class="far fa-file-alt"></i>
                                Tickets
                            </a>
                        </li>
							<li class="nav-item">
                            <a class="nav-link" href="userssrv.jsp">
                                <i class="far fa-user"></i>
                                Users
                            </a>
                        <li class="nav-item">
                            <a class="nav-link active" href="accounts.jsp">
                                <i class="far fa-user"></i>
                                Accounts
                            </a>
                        </li>
                      
                    </ul>
                    <ul class="navbar-nav">
                      <!--   <li class="nav-item">
                            <a class="nav-link d-block" href="logout"> <b>Logout</b>
                            </a>
                        </li> -->
  							<li class="nav-item bg-danger">
                            <a class="nav-link d-block" href="logout" style="background-color: #54657d;"><h5>Logout</h5>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </nav>
      <div class="container mt-5">
        <div class="row tm-content-row">
          <div class="col-12 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
              <h2 class="tm-block-title">List of Accounts</h2>
              <p class="text-white">Accounts</p>
              <select class="custom-select">
                <option value="0">Select account</option>
                <option value="1">Admin</option>
                <option value="2">User</option>
                
              </select>
            </div>
          </div>
        </div>
        <!-- row -->
        <div class="row tm-content-row">
          <div class="tm-block-col tm-col-avatar">
            <div class="tm-bg-primary-dark tm-block tm-block-avatar">
              <h2 class="tm-block-title">Change Avatar</h2>
              <div class="tm-avatar-container">
                <img
                  src="img/manjusha.png"
                  alt="Avatar"
                  class="tm-avatar img-fluid mb-4"
                />
             <input id="fileInput" type="file" style="display:none;" />
                  <input
                    type="button"
                    class="btn btn-primary btn-block mx-auto"
                    value="UPLOAD PHOTO"
                    onclick="document.getElementById('fileInput').click();"
                  />  
              </div>
              
            </div>
          </div>
          <div class="tm-block-col tm-col-account-settings">
            <div class="tm-bg-primary-dark tm-block tm-block-settings">
              <h2 class="tm-block-title">Account Settings</h2>
              <form action="" class="tm-signup-form row">
                <div class="form-group col-lg-6">
                  <label for="name">Account Name</label>
                  <input
                    id="name"
                    name="name"
                    type="text"
                    value="<%=session.getAttribute("name") %>"
                    readonly
                    class="form-control validate"
					style="
					background-color: #54657d;
					color: white;		
					">
					 
                </div>
                <div class="form-group col-lg-6">
                  <label for="Getemail" >Account Email</label>
                  <input
                    id="email"
                    name="email"
                    type="email"
                    value="<%=session.getAttribute("uemail") %>"
                  readonly
					class="form-control validate"
					style="
					background-color: #54657d;
					color: white;		
					">
				  
				  
                </div>
                <div class="form-group col-lg-6">
                  <label for="password">Password</label>
                  <input
                    id="password"
                    name="password"
                    type="password"
                    class="form-control validate"
                  />
                </div>
                <div class="form-group col-lg-6">
                  <label for="password2">Re-enter Password</label>
                  <input
                    id="password2"
                    name="password2"
                    type="password"
                    class="form-control validate"
                  />
                </div>
                <div class="form-group col-lg-6">
                  <label for="phone">Phone</label>
                  <input
                    id="phone"
                    name="phone"
                    type="tel"
					value="Getmobile"
                  readonly
                    class="form-control validate"
					style="
					background-color: #54657d;
					color: white;		
					">
              
                </div>
                <div class="form-group col-lg-6">
                  <label class="tm-hide-sm">&nbsp;</label>
                  <button
                    type="submit"
                    class="btn btn-primary btn-block text-uppercase"
                  >
                    Update Your Profile
                  </button>
                </div>
                <div class="col-12">
                  <button
                    type="submit"
                    class="btn btn-primary btn-block text-uppercase"
                  >
                    Delete Your Account
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
     
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
  </body>
</html>