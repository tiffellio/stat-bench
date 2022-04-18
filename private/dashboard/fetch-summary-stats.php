<?php
// Fetch miscellaneous stats for the dashboard including total daily calories, water and activity minutes 
//Connect to database
$link = mysqli_connect($host, $username, $password, $db_name);

// Check if connection is successful
if (mysqli_connect_error()){

die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

}

$ACTID = 9; // temporary global until account login is created
$DATEID = $dateID;


// ************************************************** CALORIES ***************************************************************
//Fetch total calories consumed (+ cals)
$qry = 'SELECT SUM(`caloriesEntry`) FROM `stat_bench_3497853`.`foodLog` WHERE `actID` = "'.$ACTID.'" AND `dateID` = "'.$DATEID.'"';

$run = mysqli_query($link, $qry) or die(mysqli_error($link));

    
if (mysqli_num_rows($run) == 0) { // No entries found

    return 0;
    
} else {     // Entry found, get the dateID
    
    $row = mysqli_fetch_row($run);

    $totalCalsIn = 0;

    if (is_numeric($row[0]) && $row[0] > 0){

        echo "TOTAL CALS FOUND ".$row[0]."<br";

        $totalCalsIn = $row[0];

    } 

}


//Fetch total calories burned (- cals)

?>