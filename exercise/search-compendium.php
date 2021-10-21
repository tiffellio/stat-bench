<?php

  require_once("../private/dbinfo.inc.php");

  $link = mysqli_connect($host, $username, $password, $db_name);

  if(mysqli_connect_error()){
    echo "Failed to connect to database.";
  } else {
    echo "Successfully connected to database.";
  }

  $qry = "SELECT specificActivities FROM activity limit 10";
  $result = $conn->query($qry);

  if($result->num_rows > 0){

      while($row = $result->fetch_assoc()) {
        echo $row["book title"]."<br>";
      }

  } else {

    echo "0 results";

  }
  $conn->close();
?>
