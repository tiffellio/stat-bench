<?php

  require_once("../private/dbinfo.inc.php");

  $link = mysqli_connect($host, $username, $password, $db_name);

  // check if connection is successful


  if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

  } else {
    echo "Connection to new database was sucessful <br><br>";
  }

  if (isset($_POST['submit'])){

    if(!empty($_POST['food-type-srch'])
    && !empty($_POST['food-quantity-srch'])
    && !empty($_POST['unit-srch'])){

      // Store input
      $foodType = $_POST['type'] ;
      $quantity = $_POST['quantity'];
      $measurement = $_POST['unit-srch'];


      // Check if the food already exists in the dictionary. If it does, run a submit to food log, if it doesn't create first and then food log it.


      //echo "All fields completed <br>";

      // Search for the food by the food type AND measurement type. If a different unit of measurement is used, create a new food table entry
      $query = 'SELECT * FROM `stat_bench_3497853`.`food` WHERE `foodType` = "'.$foodType.'" AND `measurement` = "'.$measurement.'"';

      $run = mysqli_query($link, $query) or die(mysqli_error($link));




      if (mysqli_num_rows($run) == 0) {

        /*

        $query = "INSERT INTO `stat_bench_3497853`.`food` (`foodID`, `foodType`, `quantity`, `measurement`, `calories`, `protein`, `fat`, `carbs`) VALUES (NULL, '$foodType', '$quantity', '$unit-srch', '$calories', '$protein', '$fat', '$carbs')";

        $run = mysqli_query($link, $query) or die(mysqli_error($link)); //NOTE: you have to give mysql_error the connection object

        if($run){

          echo "New food entry added to Food table<br><br>";

        } else {

          echo "Failed to add food to Food table<br><br>";

        }*/

      } else {

        echo "Food already exists.<br><br>";

        // NOTE: MOVE TO OTHER SCRIPT Fetch the dictionary values for the food of that type and measurement

        // look up food dictionary value
        $query = 'SELECT `quantity`, `calories`, `fat`, `protein`, `carbs` FROM `stat_bench_3497853`.`food` WHERE `foodType` = "'.$foodType.'" AND `measurement` = "'.$measurement.'"';

        $run = mysqli_query($link, $query) or die(mysqli_error($link));

        // store dictionary food values in an associative array
        // Output example: Array ( [0] => Array ( [quantity] => 1 [calories] => 200 [fat] => 1 [protein] => 4 [carbs] => 45 ) )
        while( $row = mysqli_fetch_assoc($run) ){

            $new_array[] = $row;

        }

        //print_r($new_array);
        //echo "<br>";

        $dictionaryQuantity = $new_array[0]["quantity"];
        $dictionaryCals = $new_array[0]["calories"];
        $dictionaryProtein = $new_array[0]["protein"];
        $dictionaryFat = $new_array[0]["fat"];
        $dictionaryCarbs = $new_array[0]["carbs"];


        // call adjustcalories() with new VALUES
        $adjustedCals = adjustCalories($dictionaryQuantity, $dictionaryCals, $quantity);

        //echo "Adjusted calories are: ".$adjustedCals." <br> ";


        // call adjustMacros() with new Values
        adjustMacros($dictionaryProtein, $dictionaryCals, $adjustedCals);
        adjustMacros($dictionaryFat, $dictionaryCals, $adjustedCals);
        adjustMacros($dictionaryCarbs, $dictionaryCals, $adjustedCals);

      }

    } else {

      echo "Please complete all fields";

    }

  }

  function adjustCalories($dictionaryQuantity, $dictionaryCals, $newQuantity){

      // ** Check user input is a positive number

      $adjustedCals = 0;

      $calPerUnit = $dictionaryCals / $dictionaryQuantity;

      $adjustedCals = $calPerUnit * $newQuantity;

      return $adjustedCals;
    // return adjustedCals

  }





    // ** change newCals to the returned value of adjusted calories
    function adjustMacros($macro, $dictionaryCals, $newCals) {

      $perCal = 0;

      $adjustedMacro = 0;

      $perCal = $macro / $dictionaryCals;

      $adjustedMacro = $perCal * $newCals;

      echo "There are ".$adjustedMacro." gs of this macro in ".$newCals." calories of the measurement <br><br>";

      // return quantity

    }




?>
