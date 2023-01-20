<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "admin";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
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
    <style>
table, th, td {
  border: 3px solid orange;
}

 .pushable {
    background: hsl(340deg 100% 32%);
    border-radius: 6px;
    border: none;
    padding: 0;
    cursor: pointer;
    outline-offset: 4px;
  }
  .front {
    display: block;
    padding: 6px 5px;
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
 <head>
	
</head> 
<body id="reportsPage">
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

                        <li class="nav-item">
                            <a class="nav-link" href="ticketbar.jsp">
                                <i class="far fa-file-alt"></i>
                                Tickets
                            </a>
                        </li>
							<li class="nav-item active ">
                            <a class="nav-link" href="userssrv.jsp">
                                <i class="far fa-user"></i>
                                Users
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
                      <!--   <li class="nav-item">
                            <a class="nav-link d-block" href="logout"> <b>Logout</b>
                            </a>
                        </li> -->
  							<li class="nav-item bg-danger">
                            <a class="nav-link d-block" href="logout" style="background-color: #54657d;"><%=session.getAttribute("name") %> , <h5>Logout</h5>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </nav>
        
         <div class="text-white">
  <div class="row">
                <div class="col">
                    <p class="text-white mt-6 mb-5"><h1>All Users Details</h1></p>
                </div>
            </div>
<!-- <div class="tm-block-title" > -->
            <table style="width:90%">
<tr>
<td>Sr.No</td>
<td>Subject</td>
<td>Name</td>
<td>EMP id</td>
<td>Uextension no</td>
<td>Email</td>
<td>Description</td>
<td>Action 1</td>
<td>Action 2</td>

</tr>
</div>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from tickets	";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id")%></td>
<td><%=resultSet.getString("usubject")%></td>
<td><%=resultSet.getString("uname") 	%></td>
<td><%=resultSet.getString("uextno") %></td>
<td><%=resultSet.getString("uemail") %></td>
<td><%=resultSet.getString("descr") %></td>
<td><%=resultSet.getString("image") %></td>
<td>  <button class="btn-primary "href="login.html">Delete</span>
</button> </td>
<td><button class="btn-primary "href="login.html">Update</span>
</button> </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>
</table> 
</div>
</body>
</html>
