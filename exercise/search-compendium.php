<?php

  require_once("../private/dbinfo.inc.php");

  $conn = mysqli_connect($host, $username, $password, $db_name) or die($conn);

  function get_activity($conn , $term){

     $query = "SELECT * FROM activity WHERE specificActivities LIKE '%".$term."%' limit 10";

     $result = mysqli_query($conn, $query);

     $data = mysqli_fetch_all($result, MYSQLI_ASSOC);

     return $data;
  }


  if (isset($_GET['term'])) {

     $getActivity = get_activity($conn, $_GET['term']);

     $activityList = array();

     foreach($getActivity as $activity){

     $activityList[] = $activity['specificActivities'];

   }

   echo json_encode($activityList);

  }

?>
