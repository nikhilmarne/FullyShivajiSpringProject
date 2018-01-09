<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Spring | Demo</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<style>

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {float:left;width:50%}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
align-items:center;
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    width: 37%; /* Full width */
    height: 72%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
    position: relative;
    margin: 0 auto;
    top: 25%;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    color: #000;
    font-size: 40px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<form action="/login" method="POST">
	<div class="container">
		<div class="top" >
			<h1 id="title" class="hidden"><span id="logo"> Student <span>UI</span></span></h1>
		</div>
		<p><font color="red">${errorMessage}</font></p>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
<!-- 			<label for="name">Username</label> -->
			<br/>
			<input type="text" id="name" name="name" placeholder="Username">
			<br/>
<!-- 			<label for="password">Password</label> -->
			<br/>
			<input type="password" name="password" id="password" placeholder="Password">
			<br/>
			<input type="submit" value="Sign In"/>
			<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</button>
			<br/>
			<a href="#"><p class="small">Forgot your password?</p></a>
		</div>
	</div>
	<div class="container">
	<div id="id01" class="modal">
  		<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">×</span>
  		<form  action="/signup" method="POST">
    		<div class="container">
      				<input type="text" placeholder="Enter Email" name="name" required>

      				<input type="password" placeholder="Enter Password" name="password" required>

      				<input type="password" placeholder="Repeat Password" name="psw-repeat" required>
      				<input type="checkbox" checked="checked"> Remember me
     		 		<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

      			<div class="clearfix">
        			<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        			<button type="submit" class="signupbtn">Sign Up</button>
      			</div>
    		</div>
  		</form>
	</div>
	</div>
</body>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="name"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="name"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>
</form>
    <<!-- form action="/login" method="POST">
        Name : <input name="name" type="text" /> 
        Password : <input name="password" type="password" /> 
        <input type="submit" />
    </form>  -->
</body>
</html>