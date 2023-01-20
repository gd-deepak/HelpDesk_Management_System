	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	  <% 
	if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
	}
	%>   
	    
	<!DOCTYPE html>
	<html lang="en">
	<meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>Home</title>
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
	    <!-- https://fonts.google.com/specimen/Roboto -->
	    <link rel="stylesheet" href="css/fontawesome.min.css">
	    <!-- https://fontawesome.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <!-- https://getbootstrap.com/ -->
	    <link rel="stylesheet" href="css/templatemo-style.css">
	 <head>
	    
	
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
	                            <a class="nav-link active" href="index.jsp">
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
	
	                           <!--  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
	                                aria-haspopup="true" aria-expanded="false">
	                                <i class="far fa-file-alt"></i>
	                                <span>
	                                    Dialers <i class="fas fa-angle-down"></i>
	                                </span> -->
	                            </a>
	                               <li class="nav-item">
	                            <a class="nav-link" href="dialers.html">
	                                <i class="fas fa-cog"></i>
	                                Dialers
	                            </a>
	
								<li class="nav-item dropdown">
	
	                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
	                                aria-haspopup="true" aria-expanded="false">
	                                <i class="far fa-file-alt"></i>
	                                <span>Tickets <i class="fas fa-angle-down"></i>
	                                </span>
	                            </a>
	                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	                                <a class="dropdown-item" href="createticket.jsp">Create Ticket</a>
	                                <a class="dropdown-item" href="listticket.jsp">Show Tickets</a>
	                            </div>
	                        </li>
	
	
	<!-- 
	                        <li class="nav-item">
	                            <a class="nav-link" href="ticketbar.jsp">
	                                <i class="far fa-file-alt"></i>
	                                Tickets
	                            </a>
	                        </li> -->
								<li class="nav-item">
	                            <a class="nav-link" href="userssrv.jsp">
	                                <i class="far fa-user"></i>
	                                Users
	                            </a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="accounts.html">
	                                <i class="far fa-user"></i>
	                                <%=session.getAttribute("name") %>'s <br> Account
	                            </a>
	                        </li>
	                      
	                    </ul>
	                    <ul class="navbar-nav">
	                    <button class="pushable"href="login.html">
  								<span class="front" onclick="window.location='login.jsp'">LogOut</span>
						</button>
	                    </ul>
	                </div>
	            </div>
	
	        </nav>
	        <div class="container">
	            <div class="row">
	                <div class="col">
	                    <p class="text-white mt-5 mb-5">Welcome back, <b>Deepak</b></p>
	                </div>
	            </div>
	            <!-- row -->
	            <div class="row tm-content-row">
	                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
	                    <div class="tm-bg-primary-dark tm-block">
	                        <h2 class="tm-block-title"> Yearly Overview </h2>
	                        <canvas id="lineChart"></canvas>
	                    </div>
	                </div>
	                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
	                    <div class="tm-bg-primary-dark tm-block">
	                        <h2 class="tm-block-title">Departmental Overview </h2>
	                        <canvas id="barChart"></canvas>
	                    </div>
	                </div>
	                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
	                    <div class="tm-bg-primary-dark tm-block tm-block-taller">
	                        <h2 class="tm-block-title">Tickets Overview</h2>
	                        <div id="pieChartContainer">
	                            <canvas id="pieChart" class="chartjs-render-monitor" width="200" height="200"></canvas>
	                        </div>                        
	                    </div>
	                </div>
	                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
	                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
	                        <h2 class="tm-block-title">New Tickets</h2>
	                        <div class="tm-notification-items">
	                            <div class="media tm-notification-item">
	                                <div class="tm-gray-circle"><img src="img/manju.png" alt="Avatar Image" class="rounded-circle"></div>
	                                <div class="media-body">
	                                    <p class="mb-2"><b>Manjusha</b> has raised ticket to <a href="create-ticket.html"
	                                            class="tm-notification-link">IT Support</a></p>
	                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
	                                </div>
	                            </div>
	                            <div class="media tm-notification-item">
	                                <div class="tm-gray-circle"><img src="" alt="Avatar Image" class="rounded-circle"></div>
	                                <div class="media-body">
	                                    <p class="mb-2"><b>Deepak</b> and <b>2 others</b> has raised ticket to <a href="#"
	                                            class="tm-notification-link">CRM Support </a></p>
	                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
	                                </div>
	                            </div>
	                            <div class="media tm-notification-item">
	                                <div class="tm-gray-circle"><img src="" alt="Avatar Image" class="rounded-circle"></div>
	                                <div class="media-body">
	                                    <p class="mb-2"><b>Prasad</b> and <b>manjusha</b> has raised ticket to <a href="#"
	                                        class="tm-notification-link">Account Department </a></p>
	                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
	                                </div>
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
	                    
	                    Design: <a rel="nofollow noopener"  class="tm-footer-link">Deepak</a>
	                </p>
	            </div>
	        </footer>
	    </div>
	
	    <script src="js/jquery-3.3.1.min.js"></script>
	    <!-- https://jquery.com/download/ -->
	    <script src="js/moment.min.js"></script>
	    <!-- https://momentjs.com/ -->
	    <script src="js/Chart.min.js"></script>
	    <!-- http://www.chartjs.org/docs/latest/ -->
	    <script src="js/bootstrap.min.js"></script>
	    <!-- https://getbootstrap.com/ -->
	    <script src="js/tooplate-scripts.js"></script>
	    <script>
	        Chart.defaults.global.defaultFontColor = 'white';
	        let ctxLine,
	            ctxBar,
	            ctxPie,
	            optionsLine,
	            optionsBar,
	            optionsPie,
	            configLine,
	            configBar,
	            configPie,
	            lineChart;
	        barChart, pieChart;
	        // DOM is ready
	        $(function () {
	            drawLineChart(); // Line Chart
	            drawBarChart(); // Bar Chart
	            drawPieChart(); // Pie Chart
	
	            $(window).resize(function () {
	                updateLineChart();
	                updateBarChart();                
	            });
	        })
	    </script>
	</body>
	
	</html>