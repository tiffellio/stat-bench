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

      //INSERT INTO `stat_bench_3497853`.`food` 
      //(`foodID`, `foodType`, `quantity`, `measurement`, `calories`, `protein`, `fat`, `carbs`) 
      //VALUES (NULL, 'acorn squash', '1', '6', '172', '3', '0', '45');

      $foodType = $_POST['type'] ;
      $quanity = $_POST['quantity'];
      $measurement = $_POST['measurement'];
      $calories = $_POST['calories'];
      $protein = $_POST['protein'];
      $fat = $_POST['fat'];
      $carbs = $_POST['carbs'];

      $query = "INSERT INTO `stat_bench_3497853`.`food` (`foodID`, `foodType`, `quantity`, `measurement`, `calories`, `protein`, `fat`, `carbs`) VALUES(NULL, `$type`, `$quantity`, `$measurement`, `$calories`, `$protein`, `$fat`, `$carbs`) ";

      $run = mysqli_query($link, $query) or die(mysqli_error());

      if($run){
        echo "form submitted success";
      } else {
        echo "form not submitted";
      }
      
  } else {
    echo "all fields are required";
  }

  }


?>
