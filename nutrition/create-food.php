<?php
// File: create-food.php
// Description: inserts a food items into the food table if it doesn't already exist
// Date: October 2021
// Author: Tiffany Elliott

  require_once("../private/dbinfo.inc.php");

  $link = mysqli_connect($host, $username, $password, $db_name);

  // check if connection is successful


  if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

  } else {
    echo 'connection to new database was sucessful';
  }

  if (isset($_POST['submit'])){

    // Check if form boxes are empty or not first
    if(!empty($_POST['type']) &&
    !empty($_POST['quantity']) &&
    !empty($_POST['measurement']) &&
    !empty($_POST['calories']) &&
    !empty($_POST['protein']) &&
    !empty($_POST['fat']) &&
    !empty($_POST['carbs'])){
      echo "success";
  } else {
    echo "all fields are required";
  }

  }


?>
