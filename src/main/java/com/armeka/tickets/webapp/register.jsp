<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Registration</title>
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
		
<style>
  .pushable {
    background: hsl(340deg 100% 32%);
    border-radius: 12px;
    border: none;
    padding: 0;
    cursor: pointer;
    outline-offset: 4px;
  }
  .front {
    display: block;
    padding: 12px 42px;
    border-radius: 12px;
    font-size: 1.25rem;
    background: hsl(345deg 100% 47%);
    color: white;
    transform: translateY(-6px);
  }

  .pushable:active .front {
    transform: translateY(-2px);
  }
</style>
	
	
  </head>

  <body id="reportsPage">
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
  
    <div class="" id="home">
     
      <nav class="navbar navbar-expand-xl">
        <!-- <img class="header-logo-image" src="dist/images/logo.svg" alt="Logo"> -->
        <div class="container h-100">
          <a class="navbar-brand" href="register.jsp">
            <h1 class="tm-site-title mb-0">Registration</h1>
          </a>
          <a class="navbar-brand" href="login.jsp">
            <h1 class="tm-site-title mb-0">  login    </h1>

        </a>
        
          <button
            class="navbar-toggler ml-auto mr-0"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <i class="fas fa-bars tm-nav-icon"></i>
          </button>
             </div>
      </nav>
      <div class="container mt-5">
        <!-- <div class="row tm-content-row">
          <div class="col-12 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
              <h2 class="tm-block-title">List of Accounts</h2>
              <p class="text-white">Accounts</p>
              <select class="custom-select">
                <option value="0">Select account</option>
                <option value="1">Admin</option>
                <option value="2">Editor</option>
                <option value="3">Merchant</option>
                <option value="4">Customer</option>
              </select>
            </div>
          </div>
        </div> -->
        <!-- row -->
        <div class="row tm-content-row">
          <div class="tm-block-col tm-col-avatar">
            <div class="tm-bg-primary-dark tm-block tm-block-avatar">
              <h4 class="tm-block-title">Armeka HelpDesk</h4>
              <div class="tm-avatar-container">
                <img
                  src="img/armekajpg.png"
                  alt="Avatar"
                  class="tm-avatar img-fluid mb-4"
                />
                <!-- <a href="#" class="tm-avatar-delete-link">
                  <i class="far fa-trash-alt tm-product-delete-icon"></i>
                </a> -->
              </div>
              <!-- <button class="btn btn-primary btn-block text-uppercase">
                Upload New Photo
              </button> -->
            </div>
          </div>
          <div class="tm-block-col tm-col-account-settings">
            <div class="tm-bg-primary-dark tm-block tm-block-settings">
              <h2 class="tm-block-title">Sign Up</h2>
              <form method="post" action="register"class="tm-signup-form row">
              
                <div class="form-group col-lg-6">
                  <label for="uname">Name</label>
                  <input
                    id="uname"
                    value=""
                      
                    name="uname"
                    type="text"
                    class="form-control validate"
                    
                  />
                </div>
                <div class="form-group col-lg-6">
                  <label for="uemail">Email</label>
                  <input
                    id="uemail"
                    name="uemail"
                    type="uemail"
                    class="form-control validate"
                     value=""
                      
                  />
                </div>
                <div class="form-group col-lg-6">
                  <label for="upwd">Password</label>
                  <input
                    id="upwd"
                    name="upwd"
                    type="password"
                    class="form-control validate"
                     value=""
                      
                  />
                </div>
                <div class="form-group col-lg-6">
                  <label for="upwd2">Re-enter Password</label>
                  <input
                    id="upwd2"
                    name="upwd2"
                    type="password"
                    class="form-control validate"
                     value=""
                      
                  />
                </div>
                <div class="form-group col-lg-6">
                  <label for="uphone">Mobile No.</label>
                  <input
                    id="uphone"
                    name="uphone"
                    type="tel"
                    class="form-control validate"
                     value=""
                      
                  />
                </div>
                <div class="form-group col-lg-6">
                    <label for="uextno">Extension No.</label>
                    <input
                      id="uextno"
                      name="uextno"
                      type="number"
                      class="form-control validate"
                       value=""
                      
                    />
                  </div>
                   <div class="form-group col-lg-6">
                    <label for="uempid">Emp Id.</label>
                    <input
                      id="uempid"
                      name="uempid"
                      type="number"
                      class="form-control validate"
                       value=""
                      
                    />
                  </div>
                <div class="form-group col-lg-6">
                  <label class="tm-hide-sm">&nbsp;</label>
                  <button
                    type="submit"
                    class="btn btn-primary btn-block text-uppercase">Submit
                  </button>
                </div>
                <div class="col-12">
                  <!-- <button
                    type="submit"
                    class="btn btn-primary btn-block text-uppercase"
                  >
                    Delete Your Account
                  </button> -->
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2022</b> All rights reserved. 
            
            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Deepak</a>
          </p>
        </div>
      </footer>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
    <script type="text/javascript">
var status = document.getElementById("status").value;

if(status == "success"){
swal("Congrats","Account Created Successfully","success");
}
if(status == "invalidName"){
	swal("Sorry","Please Enter Name","error");
	}
if(status == "invalidUpwd"){
	swal("Oops","Please Enter Password ","error");
	}
if(status == "invalidUphone"){
	swal("Congrats","Please correct mobile number","error");
	}
if(status == "invalidUpwd2"){
	swal("Error","Your Password do not match","error");
	}
if(status == "invalidMobileLength"){
	swal("Oops","You have entered extra digits \n Enter valid 10 digit number","error");
	}
if(status == "invalidMobileLength2"){
	swal("Oops","You have entered less digits \n Enter valid 10 digit number","error");
	}
if(status == "invalidUextno"){
	swal("Error","Please Enter Your Extension number","error");
	}
if(status == "invalidUextnolength"){
	swal("Error","Your Extension will not contain more or less than 4 digits","error");
	}




</script>
  </body>
</html>
    