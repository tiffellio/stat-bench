<?php
// File: create-food.php
// Description: inserts a food items into the food table if it doesn't already exist,
//  OR if it already exists, insert the food item into the FoodLog with the macros that were manually entered by user instead of calculating
// Date: October 2021
// Author: Tiffany Elliott
require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/profileData/setDate.php"); 
/**********TEMP VALS, REMEMBER TO UPDATE ************** */
$ACTID = 9; // temporary global until account login is created
$DATEID = $dateID; //will need to create date function when user logs in to call dateLog

  require_once("../private/dbinfo.inc.php");

  $link = mysqli_connect($host, $username, $password, $db_name);

  // check if connection is successful


  if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

  } else {
    echo "Connection to new database was sucessful <br><br>";
  }
 
  if (isset($_POST['submit'])){

    // Check if form boxes are empty or not first
    if(!empty($_POST['type']) &&
    !empty($_POST['quantity']) &&
    !empty($_POST['measurement'])&&
    !empty($_POST['calories'])&&
    !empty($_POST['protein'])&&
    !empty($_POST['fat'])&&
    !empty($_POST['carbs'])
    ){

      // Store input
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


      // No results found, add to food dictionary
      if (mysqli_num_rows($run) == 0) {

        // add to food dictionary (query2)
        $query2 = "INSERT INTO `stat_bench_3497853`.`food` (`foodID`, `foodType`, `quantity`, `measurement`, `calories`, `protein`, `fat`, `carbs`) VALUES (NULL, '$foodType', '$quantity', '$measurement', '$calories', '$protein', '$fat', '$carbs')";

        $run2 = mysqli_query($link, $query2) or die(mysqli_error($link)); 
               
        // find the food you just entered to grab the foodID (we'll need this for inserting into the foodLog table)
        $idQuery = 'SELECT foodID FROM `stat_bench_3497853`.`food` WHERE `foodType` = "'.$foodType.'" AND `quantity` = "'.$quantity.'" AND `measurement` = "'.$measurement.'" AND `calories` = "'.$calories.'" AND `protein` = "'.$protein.'" AND `fat` = "'.$fat.'" AND `carbs` = "'.$carbs.'"';
          
        $idRun = mysqli_query($link, $idQuery) or die(mysqli_error($link)); 

        while( $row = mysqli_fetch_assoc($idRun) ){
          $new_array[] = $row;
        }

        $foodID = $new_array[0]["foodID"];

        echo $foodID;

        if($run2){

          //echo "New food entry added to Food table<br><br>";

          // Log food
          $logQuery = "INSERT INTO `stat_bench_3497853`.`foodLog` (`food_logID`, `actID`, `dateID`, `foodID`, `foodTypeEntry`, `quantityEntry`, `measurementEntry`, `caloriesEntry`, `proteinEntry`, `fatEntry`, `carbsEntry`) VALUES (NULL, '$ACTID', '$DATEID', '$foodID',  '$foodType', '$quantity', '$measurement', '$calories', '$protein', '$fat', '$carbs')";

          $logRun = mysqli_query($link, $logQuery) or die(mysqli_error($link));

          //echo "New food entry added to Food LOG table<br><br>";


          
          // ****** NEXT: DISPLAY WITH AJAX "NEW FOOD ITEM CREATED AND LOGGED TO YOUR FOOD LOG 




        } else {

          echo "Failed to add food to Food table<br><br>";

        }

      }  else {

        //echo "Food already exists. Logging.<br><br>";

        // find the food you just entered to grab the foodID (we'll need this for inserting into the foodLog table)
        $idQuery = 'SELECT foodID FROM `stat_bench_3497853`.`food` WHERE `foodType` = "'.$foodType.'" AND `quantity` = "'.$quantity.'" AND `measurement` = "'.$measurement.'" AND `calories` = "'.$calories.'" AND `protein` = "'.$protein.'" AND `fat` = "'.$fat.'" AND `carbs` = "'.$carbs.'"';
          
        $idRun = mysqli_query($link, $idQuery) or die(mysqli_error($link)); 

        while( $row = mysqli_fetch_assoc($idRun) ){
          $new_array[] = $row;
        }

        $foodID = $new_array[0]["foodID"];

        //echo $foodID;

        // Log food
        $logQuery = "INSERT INTO `stat_bench_3497853`.`foodLog` (`food_logID`, `actID`, `dateID`, `foodID`, `foodTypeEntry`, `quantityEntry`, `measurementEntry`, `caloriesEntry`, `proteinEntry`, `fatEntry`, `carbsEntry`) VALUES (NULL, '$ACTID', '$DATEID', '$foodID',  '$foodType', '$quantity', '$measurement', '$calories', '$protein', '$fat', '$carbs')";

        $logRun = mysqli_query($link, $logQuery) or die(mysqli_error($link));

        //echo "Existing food entry added to Food Log table<br><br>";



        // ****** NEXT: DISPLAY WITH AJAX " FOOD DISCOVERED IN DB, ADDING TO YOUR FOOD LOG"





      }
      

      header("Location: nutrition.html");

    } else {

      echo "ALL fields are required <br>";

    }
    
  }

?>


