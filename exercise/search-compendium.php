<?php

  require_once("../private/dbinfo.inc.php");

  $conn = mysqli_connect($host, $username, $password, $db_name) or die($conn);

  function get_city($conn , $term){

     $query = "SELECT * FROM activity WHERE specificActivities LIKE '%".$term."%' limit 5";

     $result = mysqli_query($conn, $query);

     $data = mysqli_fetch_all($result,MYSQLI_ASSOC);

     return $data;
  }


  if (isset($_GET['term'])) {

     $getCity = get_city($conn, $_GET['term']);

     $cityList = array();

     foreach($getCity as $city){

     $cityList[] = $city['specificActivities'];

   }

   echo json_encode($cityList);

  }
  
?>
