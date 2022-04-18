<?php

require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/dbinfo.inc.php");

$link = mysqli_connect($host, $username, $password, $db_name);

// check if connection is successful

if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

} 


//Get the current date with PHP
$currentDate = date("Y-m-d");

//echo "Current date is ".$currentDate;


//Check if the date exists in the dateLog table

$dateID = getDateID($link, $currentDate);

if ($dateID === 0){

    $NewdateID = createDate($link, $currentDate);

}


// Fetch the current DateID for today's date and return 0 if it hasn't been created yet
function getDateID($link, $currentDate){

    $qry = 'SELECT `dateID` FROM `stat_bench_3497853`.`dateLog` WHERE "'.$currentDate.'" = `date`';

    $run = mysqli_query($link, $qry) or die(mysqli_error($link));

    
    if (mysqli_num_rows($run) == 0) { // no entries found

        return 0;
        

    } else {     // Entry found, get the dateID
        
        $row = mysqli_fetch_row($run);

        if (is_numeric($row[0])){

            //echo "DateID is ".$row[0]."<br";

            return $row[0];

        } else {

            die("Error: Current DateID is not a number");

        }

    }

}


function createDate($link, $currentDate){

    // create a new dateLog entry for today's date
    $qry= "INSERT INTO `stat_bench_3497853`.`dateLog` (`dateID`, `date`) VALUES (NULL, '".$currentDate."')";

    $run = mysqli_query($link, $qry) or die(mysqli_error($link));


    // verify it was created correctly by fetching the date entry for today's date
    $qry2 = 'SELECT `dateID` FROM `stat_bench_3497853`.`dateLog` WHERE "'.$currentDate.'" = `date`';

    $run2 = mysqli_query($link, $qry2) or die(mysqli_error($link));


    // If no entries are found, it was not created correctly
    if (mysqli_num_rows($run2) == 0) { 

        die("Error: Something went wrong with creating the new date");
        
    // If found, return the new dateID
    } else {     

        
        $row = mysqli_fetch_row($run2);

        $newID = $row[0];

        if(is_numeric($newID) && $newID > 0){

            //echo "The NEW DateID is ".$newID."<br";

            return $newID;

        } else {

            die("Error: Failed to create new date");

        }
    }

}

?>