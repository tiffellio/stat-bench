<?php
    require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/dbinfo.inc.php");
    require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/profileData/setDate.php"); // Checks if a date entry has been added to the database yet and creates one if not (my DB doesn't support crons so it's the best workaround I can think of...)

    //Connect to database
    $link = mysqli_connect($host, $username, $password, $db_name);

    // Check if connection is successful
    if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

    }

    /**********TEMP VALS, REMEMBER TO UPDATE ************** */
    $ACTID = 9; // temporary global until account login is created
    $DATEID = $dateID;
    echo "DATEID is".$dateID;
    // Fetch all food entered in the foodLog for todays date for our user
    $query = 'SELECT * FROM `stat_bench_3497853`.`foodLog` WHERE `actID` = "'.$ACTID.'" AND `dateID` = "'.$DATEID.'"';
    
    $run = mysqli_query($link, $query) or die(mysqli_error($link)); 

    if (mysqli_num_rows($run) == 0) { 

        $entries = 0;
        
        echo "No entries found. Log your food!";

    } else {

        while( $row = mysqli_fetch_assoc($run) ){

            $new_array[] = $row;

        }

        // Store fetched food log data to display on dashboard
        $foodType[] = "";
        $quantity[] = 0;
        $measurementNum[] = 0;
        $foodCals[] = 0;
        $protein[] = 0;
        $fat[] = 0;
        $carbs[] = 0;

        $i = 0; 

        while ($i <= mysqli_num_rows($run)){

            $foodType[] = $new_array[$i]["foodTypeEntry"];

            $quantity[] = $new_array[$i]["quantityEntry"];

            $measurementNum[] = $new_array[$i]["measurementEntry"];

            $foodCals[] = $new_array[$i]["caloriesEntry"];

            $protein[] = $new_array[$i]["proteinEntry"];

            $fat[] = $new_array[$i]["fatEntry"];

            $carbs[] = $new_array[$i]["carbsEntry"];

            $i++;

        }

        $entries = $i; // keep track of result count


        // Convert measurement number to actual type to display
        $measurement[] = "";
        $pos = 0;

        while ($pos < $entries){

            $measurement[$pos] = convertMeasurement($measurementNum[$pos]);

            $pos++;

        }

    } 


    // Measurement values
    // Cups = 1 , Mls = 2, Tbsp = 3, Tsp = 4, Grams = 5, Ounces = 6, Serving = 7
    function convertMeasurement($val){

        $type = "";

        if ($val = 1) {

            $type = "cups";

        } else if ($val = 2){

            $type = "mls";


        } else if ($val = 3){

            $type = "tbsps";


        } else if ($val = 4){

            $type = "tsps";


        } else if ($val = 5){

            $type = "g";


        } else if ($val = 6){

            $type = "oz";


        }  else if ($val = 7){

            $type = "serving";


        } 

        return $type;

    }


?>