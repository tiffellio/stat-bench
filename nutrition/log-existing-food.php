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
      $foodType = $_POST['food-type-srch'] ;
      $quantity = $_POST['food-quantity-srch'];
      $measurement = $_POST['unit-srch'];
      

      // Check if the food already exists in the dictionary. If it doesn't, they need to use the create-food.php form, if it does then log it in the foodLog table

      // Search for the food by the food type AND measurement type. If a different unit of measurement is used, create a new food table entry
      $query = 'SELECT * FROM `stat_bench_3497853`.`food` WHERE `foodType` = "'.$foodType.'" AND `measurement` = "'.$measurement.'"';

      $run = mysqli_query($link, $query) or die(mysqli_error($link));

      
      if (mysqli_num_rows($run) == 0) { //check for results

        echo "This food doesn't exist yet, please create it";

      } else { // food doesn't exist yet

        echo "Food exists.<br><br>";

        // Look up food dictionary value so we can use it to calculate the updated amount
        $query = 'SELECT `quantity`, `calories`, `fat`, `protein`, `carbs` FROM `stat_bench_3497853`.`food` WHERE `foodType` = "'.$foodType.'" AND `measurement` = "'.$measurement.'"';

        $run = mysqli_query($link, $query) or die(mysqli_error($link));

        // store dictionary food values in an associative array
        // Output example: Array ( [0] => Array ( [quantity] => 1 [calories] => 200 [fat] => 1 [protein] => 4 [carbs] => 45 ) )
        while( $row = mysqli_fetch_assoc($run) ){

            $new_array[] = $row;

        }

        print_r($new_array);
        echo "  are the dictionary amounts for this food. <br><br>";

        $dictionaryQuantity = $new_array[0]["quantity"];
        $dictionaryCals = $new_array[0]["calories"];
        $dictionaryProtein = $new_array[0]["protein"];
        $dictionaryFat = $new_array[0]["fat"];
        $dictionaryCarbs = $new_array[0]["carbs"];

        // If the quantity is different, we need to adjust the nutrition values
        if($dictionaryQuantity != $quantity) {

          // call adjustcalories() with new VALUES
          $adjustedCals = adjustCalories($dictionaryQuantity, $dictionaryCals, $quantity);

          // call adjustMacros() with new Values
          $adjustedProtein = adjustMacros($dictionaryProtein, $dictionaryCals, $adjustedCals);
          $adjustedFat = adjustMacros($dictionaryFat, $dictionaryCals, $adjustedCals);
          $adjustedCarbs = adjustMacros($dictionaryCarbs, $dictionaryCals, $adjustedCals);

        } else { // use dictionary amount
           echo "<br>Quantity is equal to the dicitonary amount. <br>";
        }





        /******** NEXT STEP: FIND HOW TO PASS VALUES BACK TO nutrition.html TO DISPLAY ON PAGE********* */
          // SHOULD DISPLAY VALUES THEN MAKE A BUTTON APPEAR TO LOG (ENTER IN FOODLOG)
          // AND ADD MESSAGE TO CREATE A NEW FOOD IF WANTED




          

      }

    } else {

      echo "Please complete all fields";

    }

  }

  function adjustCalories($dictionaryQuantity, $dictionaryCals, $quantity){

      // ** Check user input is a positive number

       echo '<br><br>newQuantity: '.$quantity;
      // $newCals = 0;

      $calPerUnit = intdiv($dictionaryCals, $dictionaryQuantity);

      echo '<br><br>calPerUnit: '.$calPerUnit;

      $newCals = ($calPerUnit * $quantity);

      echo '<br><br>Newcals: '.$newCals;

      return $newCals;

  }





    // ** change newCals to the returned value of adjusted calories
    function adjustMacros($macro, $dictionaryCals, $newCals) {

      $perCal = 0;

      $adjustedMacro = 0;

      $perCal = $macro / $dictionaryCals;

      $adjustedMacro = $perCal * $newCals;

      echo "There are ".$adjustedMacro." gs of this macro in ".$newCals." calories of the measurement <br><br>";

      return $adjustedMacro;

    }




?>
