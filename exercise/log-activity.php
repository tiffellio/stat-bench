
<?php

  require_once("../private/dbinfo.inc.php");

  $link = mysqli_connect($host, $username, $password, $db_name);

  // check if connection is successful
  if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

  } else {

    echo "Connection to new database was sucessful <br><br>";

  }

    if(isset($_POST['submit'])){
    if(!empty($_POST['type']) &&
    !empty($_POST['duration'])){

        $type = $_POST['type'];
        $duration = $_POST['duration'];

        //Check if it exists in the compendium
        $query = 'SELECT * FROM `stat_bench_3497853`.`activity` WHERE `specificActivities` = "'.$type.'"';

        $run = mysqli_query($link, $query) or die(mysqli_error($link));

        while ($row = mysqli_fetch_assoc($run)){

            $new_array[] = $row;

        }   



        if (mysqli_num_rows($run) == 0){

            echo "That exercise doesn't exist. Please try choosing the closest one in the list. <br>";

        } else {

            echo "Exercise exists in the compendium. <br>";

            print_r($new_array);

            // Store search results
            $metCode = $new_array[0]["metCode"];

            // NEXT: ADD FUNCTION TO CALCULATE CALSBURNED FROM METCODE FORMULA

        }

    } else {

        echo "All fields are required. <br>";

    }

  }

?>
