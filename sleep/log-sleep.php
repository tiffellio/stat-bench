
<?php

require_once("/misc/14/000/350/750/0/user/web/statbench.ca/private/profileData/setDate.php"); 
/**********TEMP VALS, REMEMBER TO UPDATE ************** */
$ACTID = 9; // temporary global until account login is created
$DATEID = $dateID; //will need to create date function when user logs in to call dateLog

require_once("../private/dbinfo.inc.php");

$link = mysqli_connect($host, $username, $password, $db_name);

if(isset($_POST['submit'])){
    
    if(!empty($_POST['sleep-quality'])){

        if(empty($_POST['hours']) && empty($_POST['minutes'])) { // make sure both fields are set

            echo "Please enter your time slept (cannot be 0)";

        } else {

            $hours = $_POST['hours'];
            $minutes = $_POST['minutes'];
            $sleepQuality = $_POST['sleep-quality'];

            // convert to minutes
            if ($hours > 0){

                $totalMinutes = minutesAsleep($hours, $minutes);
                echo "<br> Total minutes returned: ".$totalMinutes;

            } else {

                $totalMinutes = $minutes;

            }


            // log sleep in database
            $query = "INSERT INTO `stat_bench_3497853`.`sleepLog`  (`sleepID`, `actID`, `dateID`, `sleepTime`, `quality`) VALUES (NULL, '$ACTID', '$DATEID', '$totalMinutes', '$sleepQuality')";
            $run = mysqli_query ($link, $query) or die(mysqli_error($link));
            echo "successfully added to sleepLog table";

        }

    }
}


function minutesAsleep($hours, $minutes){

    $minsPerHr = 60;

    $hrsToMin = $hours * $minsPerHr;

    $totalMinutes = $hrsToMin + $minutes;

    echo $totalMinutes;

    return $totalMinutes;

}





?>