<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Armeka Security</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
body {
	background-position: center;
	background-color: #54657d;(218, 19, 19);
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
	font-family: "Rubik", Helvetica, Arial, sans-serif;
	font-size: 16px;
	font-weight: bold;
	line-height: 1.5;
	text-transform: none
}

.forgot {
	background-color: #2f4666;
	padding: 30px;
	border: 1px solid #ff0000
}

.padding-bottom-3x {
	padding-bottom: 72px !important
}

.card-footer {
	background-color: rgb(245, 175, 11)
}

.btn {
	font-size: 15px
}

.form-control:focus {
	color: #000000;
	background-color: #ffffff;
	border-color: #ffb005;
	outline: 0;
	box-shadow: 10 22 30 0px #07eb3c
}
</style>
</head>
<body  class='snippet-body'>
	<div class="container padding-bottom-3x mb-2 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<div class="forgot">
					<h1>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Armeka HelpDesk  </h1>
					<br></br>
					<h3>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Forgot your password?  </h3>	
					<br></br>
					<p>We are always happy to help you. This will help you
						to change your password!</p>
					<ol class="list-unstyled">
						<li><span class="text-primary text-medium">1. </span>Enter
							your email address below.</li>
						<li><span class="text-primary text-medium">2. </span>Our
							system will send you an OTP to your email</li>
						<li><span class="text-primary text-medium">3. </span>Enter the OTP on the 
						next page</li>
					</ol>
				</div>
				<form class="container padding-bottom-3x mb-2 mt-5" action="forgotPassword" method="POST">
					<div class="card-body">
						<div class="form-group">
							<label for="email-for-pass">Enter your email address</label> <input
								class="form-control" type="text" name="email" id="email-for-pass" required="">
						<h6>will send an OTP</h6>

							</div>
					</div>
					<div class="">
						<button class="btn btn-success" type="submit">Get New
							Password</button>
						<button class="btn btn-danger" type="submit">Back to
							Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'></script>
</body>
</html>