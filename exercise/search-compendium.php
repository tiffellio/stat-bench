<?php

  require_once("../private/dbinfo.inc.php");

  $db = new mysqli($host, $username, $password, $db_name);

  if($db->connect_error){
    echo "Failed to connect to database.";
  } else {
    echo "Successfully connected to database.";
  }

  // get search term
  $searchTerm = $_GET['term'];

  // fetch matched data from the database
  $query = $db->query("SELECT specificActivities FROM activity WHERE specificActivities LIKE '%".$searchTerm."%' limit 100");


  // generate array with activity data
  $activityData = array();
  if($query->num_rows > 0) {
    while($row = $query->fetch_assoc()){
      $data['id'] = $row['metCode'];
      
      $data['value'] = $row['specificActivities'];
      array_push($activityData, $data);
    }
  }

echo json_encode($activityData);
?>
