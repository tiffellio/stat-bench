
<?php
require_once("../private/dbinfo.inc.php");

$conn = mysqli_connect($host, $username, $password, $db_name) or die($conn);
$res = mysqli_query($conn, "SELECT * FROM activity WHERE specificActivities = `bicycling, mountain, uphill, vigorous`") or die( mysqli_error($conn));
$arr = mysqli_fetch_row($res);

echo $arr[0];  // name
echo $arr[1];  // city
echo $arr[2];  // country



?>
