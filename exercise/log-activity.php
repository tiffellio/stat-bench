
<?php

require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/profileData/setDate.php"); 

/**********TEMP VALS, REMEMBER TO UPDATE ************** */
$ACTID = 9; // temporary global until account login is created
$DATEID = $dateID; 

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

            echo "Exercise exists in the compendium.Logging. <br>";

            print_r($new_array);

            // Store search results
            $metCode = $new_array[0]["metCode"];

            $mets = findMets($metCode, $link);
            echo "Mets found are ".$mets;

            $weightKg = findWeight($ACTID, $link);
            echo "Weight found is ".$weightKg;

            $calsBurned = metsToCals($weightKg, $mets, $duration);
            echo "CalsBurned per ".$duration." minutes is ".$calsBurned;

            //Add entry to activity log
            $query = "INSERT INTO `stat_bench_3497853`.`activityLog` (`activityID`, `actID`, `dateID`, `metCode`, `duration`, `calsBurned`) VALUES (NULL, '$ACTID', '$DATEID', '$metCode', '$duration', '$calsBurned')";

            $run = mysqli_query($link, $query) or die(mysqli_error($link));


            // NEXT: OUTPUT SUCCESS MESSAFE ON EXERCISE.HTML USING AJAX



            echo "Activity successfully logged into database";
        }

    } else {

      echo "All fields are required. <br>";

  }

}

// Find the mets for a particular activity by looking up the corresponding met code in the activity table
function findMets($metCode, $link){

  $query = 'SELECT `mets` FROM `stat_bench_3497853`.`activity` WHERE `metCode` = "'.$metCode.'"';

  $run = mysqli_query($link, $query) or die(mysqli_error($link));

  while ($row = mysqli_fetch_assoc($run)){

    $new_array[] = $row;

  }

  $mets = $new_array[0]["mets"];

  return $mets;

}

// Find weight in KG of user with ACTID in the profile table
function findWeight($ACTID, $link){

  $query = 'SELECT `kg` FROM `stat_bench_3497853`.`profile` WHERE `actID` = "'.$ACTID.'"';

  $run = mysqli_query($link,$query) or die(mysqli_error($link));
  
  while( $row = mysqli_fetch_assoc($run)){

    $new_array[] = $row;

  }

  $weightKg = $new_array[0]["kg"];

  return $weightKg;

}

// Use the met forumula to convert mets to calories burned
function metsToCals($weightKg, $mets, $duration){

  $o2ml = 3.5; // 3.5 mlof oxygen per kg

  $metMinRate = 200;

  $calsPerMin = $mets * $o2ml * $weightKg / $metMinRate;

  $calsBurned = $calsPerMin * $duration;

  $calsBurned = round($calsBurned);

  return $calsBurned;

}

?>
