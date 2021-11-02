
<?php
require_once("../private/dbinfo.inc.php");

$conn = mysqli_connect($host, $username, $password, $db_name) or die($conn);
$qry = "SELECT * FROM activity";
$res = mysqli_query($conn, $qry);


$arr = mysqli_fetch_assoc($res);

echo $arr['specificActivities'];    // name
echo $arr['mets'];    // city




?>
