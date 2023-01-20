<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>ARMEKA login</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
      </head>

  <body>
  <body id="reportsPage">
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
  
    <div>
      <nav class="navbar navbar-expand-xl">
        
        <div class="container h-100">
          <a class="navbar-brand" href="login.jsp 	">
            <!-- <h1 class="tm-site-title mb-0">LOGIN   </h1> -->
            
            <img class="header-logo-image" src="dist/images/logo.svg"  alt="Logo">
            <h1 class="tm-site-title mb-0" >  LOGIN    </h1>

            <a class="navbar-brand" href="register.jsp">
              <h1 class="tm-site-title mb-0"style="color: #090000;background-color: orange;">  register    </h1>

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
    </div>

    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-12 mx-auto tm-login-col">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12 text-center">
                <h2 class="tm-block-title mb-4">Welcome to Armeka HelpDesk, <br> Login</h2>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-12">
                <form action="login" method="post" class="tm-login-form">
                  <div class="form-group">
                    <label for="username">Email</label>
                    <input
                      name="username"
                      type="text"
                      class="form-control validate"
                      id="username"
                      value=""
                    />
                  </div>
                  <div class="form-group mt-3">
                    <label for="password">Password</label>
                    <input
                      name="password"
                      type="password"
                      class="form-control validate"
                      id="password"
                      value=""
                    />
                  </div>
                  <div class="form-group mt-4">
                    <button
                      type="submit"
                      class="btn btn-primary btn-block text-uppercase"style="color: black;"                    >
                      Login
                    </button>
                  </div>
                  
                  <div class="form-group mt-4">
                    <button
                      class="btn btn-primary btn-block text-uppercase">
                      <a href="forgotPassword.jsp" style="color: black;">Forgot your password?</a>
                    </button>
                  </div>
                  <div class="form-group mt-4">
                    <!-- <button
                      type="register"
                      href="https://templatemo.com"
                      class="btn button-wide-mobile btn-block text-uppercase" >
                      Registration
                    </button> -->
                  </div>
                  
                  
                    
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
      <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
          Copyright &copy; <b>2022</b> All rights reserved. 
          
          Design: <a rel="nofollow noopener"class="tm-footer-link">Deepak</a>
        </p>
      </div>
    </footer>
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
     <script type="text/javascript">
var status = document.getElementById("status").value;

if(status == "error"){
 swal("Sorry","You Have Entered Wrong Credentials","error"); 
}
else if(status == "invalidEmail"){
	 swal("Sorry","Please Enter  Email Address","error"); 
	}

else if(status == "invalidUpwd"){
	 swal("Sorry","Please Enter  Password","error"); 

	}
else if(status == "resetSuccess"){
	 swal("Congrats","You password has been changed","success"); 

	}
else if(status == "resetFailed"){
	 swal("Sorry","Your Password is not changed.","error"); 

	}


</script>
    
  </body>
</html>
