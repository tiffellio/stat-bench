<?php

require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/dbinfo.inc.php");

$link = mysqli_connect($host, $username, $password, $db_name);

// check if connection is successful


if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

} else {

    echo "Connection to new database was sucessful <br><br>";

}


//Get the current date with PHP
$currentDate = date("Y-m-d");

echo "Current date is ".$currentDate;


//Check if the date exists in the dateLog table


$dateID = getDateID($link, $currentDate);
echo "The dateID for today is ".$dateID;

// check if $date is a Numbber

// then check
if ($dateID === 0){

    $NewdateID = createDate($link, $currentDate);

    echo "The dateID for today is NOW CREATED AS:".$NewdateID;                  // WHY WONT THIS BE OUTPUT???

}

// $newID = createDate($currentDate);


function getDateID($link, $currentDate){

    $qry = 'SELECT `dateID` FROM `stat_bench_3497853`.`dateLog` WHERE "'.$currentDate.'" = `date`';

    $run = mysqli_query($link, $qry) or die(mysqli_error($link));

    if (mysqli_num_rows($run) == 0) { // If no, create the date in the dateLog and grab the new dateID

        return 0;
        

    } else {     // If yes, get the dateID

        
        $row = mysqli_fetch_row($run);

        echo "DateID is ".$row[0]."<br";

        return $row[0];

    }

}






function createDate($link, $currentDate){

    // run a query to create a new dateLog entry

    $qry= "INSERT INTO `stat_bench_3497853`.`dateLog` (`dateID`, `date`) VALUES (NULL, '".$currentDate."')";

    $run = mysqli_query($link, $qry) or die(mysqli_error($link));


    // verify it was created correctly

    $qry2 = 'SELECT `dateID` FROM `stat_bench_3497853`.`dateLog` WHERE "'.$currentDate.'" = `date`';

    $run2 = mysqli_query($link, $qry2) or die(mysqli_error($link));

    if (mysqli_num_rows($run2) == 0) { // If no, create the date in the dateLog and grab the new dateID

        // ************************************************************* ADD PROPER ERROR HANDLING HERE ************************************* /
        echo "Something went wrong with creating the new date";
        

    } else {     // If yes, get the dateID

        
        $row = mysqli_fetch_row($run2);

        $newID = $row[0];

        echo "The NEW DateID is ".$newID."<br";

        // reutrn the right type? It has to be a number.
        return $newID;
    }

}

?>