<?php
// Fetch total daily calories remaining
// Calculated with the following 
// ( USER'S BMR ) + ( TOTAL CALS BURNED ) - ( TOTAL CALS FROM FOOD ) = CALS REMAINING

require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/dbinfo.inc.php");
require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/profileData/setDate.php"); 

$link = mysqli_connect($host, $username, $password, $db_name);

// Check if connection is successful
if (mysqli_connect_error()){

die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

}

$ACTID = 9; // temporary global until account login is created
//$DATEID = $dateID;
$DATEID = 6;

// ************************************************** FETCH USER PROFILE STATS ***********************************************************

$qry0 = 'SELECT * FROM `stat_bench_3497853`.`profile` WHERE `actID` = "'.$ACTID.'"';

$run0 = mysqli_query($link, $qry0) or die(mysqli_error($link));

if (mysqli_num_rows($run0) == 0) { // No entries found

    return 0;
    
} else {     // Entry found, get the dateID

    while( $row0 = mysqli_fetch_assoc($run0) ){

        $profile_array[] = $row0;

    }

    $kg[] = 0;
    $gender[] = -1;
    $centimetres[] = 0;
    $weightGoal[] = -1;
    $dob[] = 0;


    if ($row0[0] >= 0){

        echo "<p> Profile results found. </p>";

        $kg[] = $profile_array[0]["kg"]; //1 indexed array

        $gender[] = $profile_array[0]["gender"];

        $centimetres[] = $profile_array[0]["centimetres"];

        $weightGoal[] = $profile_array[0]["weightGoal"];

        $dob[] = $profile_array[0]["dob"];

    }

}



// ************************************************** TOTAL CALS FROM FOOD ***************************************************************
//Fetch total calories consumed (+ cals)
$qry = 'SELECT SUM(`caloriesEntry`) FROM `stat_bench_3497853`.`foodLog` WHERE `actID` = "'.$ACTID.'" AND `dateID` = "'.$DATEID.'"';

$run = mysqli_query($link, $qry) or die(mysqli_error($link));

    
if (mysqli_num_rows($run) == 0) { // No entries found

    return 0;
    
} else {     // Entry found, get the dateID
    
    $row = mysqli_fetch_row($run);

    $totalCalsIn = 0;

    if (is_numeric($row[0]) && $row[0] > 0){

        echo "<p>TOTAL CALS IN ".$row[0]."</p>";

        $totalCalsIn = $row[0];

    } 

}


// ************************************************** TOTAL CALS BURNED ***************************************************************
$qry2 = 'SELECT SUM(`calsBurned`) FROM `stat_bench_3497853`.`activityLog` WHERE `actID` = "'.$ACTID.'" AND `dateID` = "'.$DATEID.'"';

$run2 = mysqli_query($link, $qry2) or die(mysqli_error($link));

if (mysqli_num_rows($run2) == 0) { // No entries found

    return 0;
    
} else {     // Entry found, get the dateID
    
    $row2 = mysqli_fetch_row($run2);

    $totalCalsOut = 0;

    if (is_numeric($row2[0]) && $row2[0] > 0){

        echo "<p>TOTAL CALS OUT ".$row2[0]."</p>";

        $totalCalsOut = $row2[0];

    } 

}

?>