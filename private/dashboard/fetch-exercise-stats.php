<?php

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
$query = 'SELECT * FROM `stat_bench_3497853`.`activityLog` WHERE `actID` = "'.$ACTID.'" AND `dateID` = "'.$DATEID.'"';

$run = mysqli_query($link, $query) or die(mysqli_error($link)); 

if (mysqli_num_rows($run) == 0) { 

    $activityEntries = 0; //No activity entries found

} else {

    while( $row = mysqli_fetch_assoc($run) ){

        $activity_array[] = $row;

    }

    // Store fetched food log data to display on dashboard
    $metCode[] = 0;
    $duration[] = 0;
    $calsBurned[] = 0;

    $i = 0; 

    while ($i <= mysqli_num_rows($run)){

        $metCode[] = $activity_array[$i]["metCode"];

        $duration[] = $activity_array[$i]["duration"];

        $calsBurned[] = $activity_array[$i]["calsBurned"];

        $i++;

    }

    $activityEntries = $i; // keep track of result count

}

?>