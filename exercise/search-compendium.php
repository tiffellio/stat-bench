<?php

  require_once("../private/dbinfo.inc.php");

  $link = mysqli_connect($host, $username, $password, $db_name);

  if(mysqli_connect_error()){
    echo "Failed to connect to database.";
  } else {
    echo "Successfully connected to database.";
  }

  $id = $_GET['q'];

  $qry = "SELECT specificActivities FROM activity WHERE specificActivities LIKE '%".$id."%' limit 100";
  $result = $link->query($qry);

  if($result->num_rows > 0){

      while($row = $result->fetch_assoc()) {
        echo $row["specificActivities"]."<br>";
      }

  } else {

    echo "0 results";

  }
  $link->close();
?>
