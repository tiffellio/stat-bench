<?php
// File: create-food.php
// Description: inserts a food items into the food table if it doesn't already exist, 
//  OR if it already exists, insert the food item into the FoodLog with the macros that were manually entered by user instead of calculating
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

      //INSERT INTO `stat_bench_3497853`.`food` 
      //(`foodID`, `foodType`, `quantity`, `measurement`, `calories`, `protein`, `fat`, `carbs`) 
      //VALUES (NULL, 'acorn squash', '1', '6', '172', '3', '0', '45');

      $foodType = $_POST['type'] ;
      $quantity = $_POST['quantity'];
      $measurement = $_POST['measurement'];
      $calories = $_POST['calories'];
      $protein = $_POST['protein'];
      $fat = $_POST['fat'];
      $carbs = $_POST['carbs'];

      // Check if the food already exists in the dictionary. If it does, run a submit to food log, if it doesn't create first and then food log it.

      // Search for the food by the food type AND measurement type. If a different unit of measurement is used, create a new food table entry
      $query = 'SELECT * FROM `stat_bench_3497853`.`food` WHERE `foodType` = "'.$foodType.'" AND `measurement` = "'.$measurement.'"';
      
      $run = mysqli_query($link, $query) or die(mysqli_error($link));

      /*while ($row = mysqli_fetch_array($run)){

        print_r($row);

      }*/

      if (mysqli_num_rows($run) == 0) {

        $query = "INSERT INTO `stat_bench_3497853`.`food` (`foodID`, `foodType`, `quantity`, `measurement`, `calories`, `protein`, `fat`, `carbs`) VALUES (NULL, '$foodType', '$quantity', '$measurement', '$calories', '$protein', '$fat', '$carbs')";
        
        $run = mysqli_query($link, $query) or die(mysqli_error($link)); //NOTE: you have to give mysql_error the connection object
  
        if($run){

          echo "New food entry added to Food table";

        } else {

          echo "Failed to add food to Food table";

        }
      
      } else {

        echo "Food already exists.";

      }



    } else {
      echo "all fields are required";
    }

  }

function adjustCalories($dictionaryQuantity, $dictionaryCals, $newQuantity){

    // ** Check user input is a positive number

    $adjustedCals = 0;

    $calPerUnit = $dictionaryCals / $dictionaryQuantity;

    $adjustedCals = $calPerUnit * $newQuantity;

  // return adjustedCals

}




  adjustMacros(1, 600, 1200);

  function adjustMacros($macro, $cals, $newCals) {

    $perCal = 0;

    $adjustedMacro = 0;

    $perCal = $macro / $cals;

    $adjustedMacro = $perCal * $newCals;

    echo "There are ".$adjustedMacro." gs of this macro in ".$newCals." calories of the measurement";

    // return quantity

  }

?>
