<?php
// Gather all sleep minutes for the dateID and actID
// Add them all together and convert into hours and minutes array
// Output on homepage
// I think fetching from the DB is best because then  you can add naps and stuff for the day...

require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/dbinfo.inc.php");
require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/profileData/setDate.php"); // Checks if a date entry has been added to the database yet and creates one if not (my DB doesn't support crons so it's the best workaround I can think of...)

//Connect to database
$link = mysqli_connect($host, $username, $password, $db_name);

// Check if connection is successful
if (mysqli_connect_error()){

die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

}


$ACTID = 9; // temporary global until account login is created
$DATEID = $dateID;


// Fetch all exercise activities entered in the foodLog for todays date for our user
$query = 'SELECT `sleepTime` FROM `stat_bench_3497853`.`sleepLog` WHERE `actID` = "'.$ACTID.'" AND `dateID` = "'.$DATEID.'"';

$run = mysqli_query($link, $query) or die(mysqli_error($link)); 

if (mysqli_num_rows($run) == 0) { 

    $sleepEntries = 0;
    
    echo "0h 0m";

} else {

    while( $row = mysqli_fetch_assoc($run) ){

        $sleep_array[] = $row;

    }

    // Store fetched food log data to display on dashboard
    $sleepMins[] = 0;

    $i = 0; 

    while ($i <= mysqli_num_rows($run)){

        $sleepMins[] = $sleep_array[$i]["sleepTime"];

        $i++;

    }


    $sleepEntries = $i; // keep track of result count
   

    if($sleepEntries == 0 ){

        echo "Start logging your activity!";

      } else {

        $m = 1;
        $totalMins = 0;
        while ($m < $sleepEntries){

          $totalMins += $sleepMins[$m];

          $m++;

        }

      }

      $timeHr = getHrs($totalMins);
      $timeMin = getMins($totalMins);

}

function getHrs($totalMins){

  $hours = intval($totalMins / 60);

  return $hours;

}

function getMins($totalMins){

  $minutes = ($totalMins % 60);

  return $minutes;

}

?>