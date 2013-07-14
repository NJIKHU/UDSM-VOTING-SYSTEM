
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.wavivucorp.corp/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

Design by Wavivu Corp
Released for free under a Creative Commons Attribution with no License

Title      : UDSM Voting System
Version    : 1.0
Released   : date
Description: A wide two-column, fixed width template with fluid header/footer background. Suitable for blogs and small websites.

-->
<html xmlns="http://www.wavivucorp.corp/2013/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>UDSM Voting System </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<?php
session_start();
if(isset($_SESSION['username'])){
echo "Hi! "."_".$_SESSION['username']; 
echo "Welcome to admin page";
}

//If session not registered
else if(!isset($_SESSION['username']) && !isset($_SESSION['password']) ){

// Redirect to login1.php page
header("location: index.html");                  
}
else{
header("location: index.html");
}

?>

<!-- start header -->
<div id="header">
	<div id="logo">
		<h1><a href="admin.php">UDSM Voting System</a></h1>
		<h2><a href=""></a></h2>
	</div>
</div>
<!-- end header -->
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<p class="date">September <b>30th</b></p>
			<h1 class="title">Welcome to admin page</h1>
			
			<div class="entry">
			<fieldset>
			<ul>
				<li><a href="admin.php">Home</a></li>
				<li><a href="adduser.php">Add user</a></li>
				<li><a href="edit_user_info.html">Edit user information</a></li>
				<li><a href="remove_user.html">Remove user</a></li>
				<li><a href="change_password.html">Change password</a></li>
				<li><a href="vote_start.html">Allow Vote to start</a></li>
				<li><a href="logout.php">Logout</a></li>
			</ul>
			
			</fieldset>
				<p></p>
				<p></p>
				
				
			</div>
		</div>
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<ul>
			<li id="search">
				<h2>Search</h2>
				<form method="get" action="">
					<fieldset>
					<input type="text" id="s" name="s" value="" />
					<input type="submit" id="x" value="Search" />
					</fieldset>
				</form>
			</li>
		</ul>
	</div>
	<!-- end sidebar -->
</div>
<!-- end page -->
<div id="footer">
	<p id="legal">&copy;2013 UDSM Voting System. All Rights Reserved. | Designed by <a href="http://www.wavivucorp.corp">Wavivu Corp</a></p>
	<p id="links"><a href="#">Privacy</a> | <a href="#">Terms</a> </p>
</div>
</body>
</html>
