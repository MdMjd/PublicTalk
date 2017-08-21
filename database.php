<?php
//Connect to Database
$host = "localhost";
$username = "root"; //Username PHPMYAdmin
$password = ""; //Password PHPMyAdmin
$db = "shoutit"; //Database

$con = mysqli_connect("$host","$username","$password","$db");

if(mysqli_connect_error()) {
	echo "Connection Error";
	mysqli_connect_error(); //Shows Error Appropriately from Library
}
