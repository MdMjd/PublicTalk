<?php
include 'database.php';

//Check if the form is submitted, if Submit button is pushed thus isset, santize before put in DB
if (isset($_POST['submit'])) {
  $user = mysqli_real_escape_string($con, $_POST['user']);
  $message = mysqli_real_escape_string($con, $_POST['message']);

  //Set Time Zone
  date_default_timezone_set('America/Los_Angeles');
  $time = date('h:i:s', time());

  //Validate Input null is ''
  if (!isset($user) || $user == '' || !isset($message) || $message == '') {
    $error = "Please fill in your name and message";
    //Bring error message when refresh
    header("Location: index.php?error=".urlencode($error));
    exit();
  } else {
    $query = "INSERT INTO shouts (sh_user,sh_message,sh_time)
              VALUES ('$user','$message','$time')";
    //Make sure it worked, if query wasnt succesful
    if (!mysqli_query($con, $query)) {
      die('Error: '.mysqli_error($con));
    } else {
      header("Location: index.php");
      exit();
    }
  }
}
