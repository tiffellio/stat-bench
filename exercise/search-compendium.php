<?php

  require_once("../private/dbinfo.inc.php");

  $db = new mysqli($host, $username, $password, $db_name);

  if($db->connect_error){
    echo "Failed to connect to database.";
  } else {
    echo "Successfully connected to database.";
  }

// get search term
  $searchTerm = "b";

  // fetch matched data from the database
  $query = $db->query("SELECT * FROM activity WHERE specificActivities LIKE '%".$searchTerm."%' limit 5");


  // generate array with activity data
  $activityData = array();
  if($query->num_rows > 0) {
    while($row = $query->fetch_assoc()){
      $data['id'] = $row['metCode'];
      $data['value'] = $row['specificActivities'];
      array_push($activityData, $data);
    }
  } else {
    echo "no data";
  }

echo json_encode($activityData);
/*
// Get search term
$searchTerm = $_GET['term'];

// Fetch matched data from the database
$query = $db->query("SELECT * FROM activity WHERE specificActivities LIKE '%".$searchTerm."%' AND status = 1 ORDER BY skill ASC");

// Generate array with skills data
$skillData = array();
if($query->num_rows > 0){
    while($row = $query->fetch_assoc()){
        $data['id'] = $row['id'];
        $data['value'] = $row['skill'];
        array_push($skillData, $data);
    }
}

// Return results as json encoded array
echo json_encode($skillData);
*/
?>
