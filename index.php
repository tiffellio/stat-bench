<?php
/*
Project: STATBENCH
File: Homepage
Author: Tiffany Elliott (email info@elliottt.space)
Date: July 2021 - 2022
*/

  require_once("./private/dbinfo.inc.php"); // Grab db info
  require_once("./private/profileData/setDate.php"); // Checks if a date entry has been added to the database yet and creates one if not (my DB doesn't support crons so it's the best workaround I can think of...)
  require_once("./private/dashboard/fetch-food-stats.php");  // Grab the stats for the dashboard
  require_once("./private/dashboard/fetch-exercise-stats.php");  // Grab the stats for the dashboard
  require_once("./private/dashboard/fetch-sleep-stats.php");  // Grab the stats for the dashboard
  require_once("./private/dashboard/fetch-summary-stats.php");  // Grab the stats for the dashboard

  // Connect to database
  $link = mysqli_connect($host, $username, $password, $db_name);

  // Check if connection is successful
  if (mysqli_connect_error()){

    die("There was a problem connecting to the MySQL database: ".mysqli_connect_error());

  } 

?>
<!DOCTYPE html>
<html lang="en">

  <meta charset="UTF-8">
  <title>STATBENCH</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="home/css/light/gridsheet.css">
  <link rel="stylesheet" href="home/css/light/stylesheet.css">
  <link href='https://fonts.googleapis.com/css?family=Pontano Sans' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


  <body>
      <script src="home/js/bmr-calc.js"> </script>
      <div class="container">

        <!-- *********** SIDE BAR *********** -->

        <div class="item" id="sidebar">
          <div id="logo">
            <span id="stat">STAT</span>
            <span id="bench">BENCH</span>
          </div>
          <div class="sidebar-item" id="homepage"><a href="index.php">Dashboard</a></div>
          <div class="sidebar-item"><a href="nutrition/nutrition.html">Nutrition</a></div>
          <div class="sidebar-item"><a href="exercise/exercise.html">Exercise</a></div>
          <div class="sidebar-item"><a href="sleep/sleep.html">Sleep</a></div>
          <!-- Future Feature: Goals -->
          <div class="sidebar-item"><a href="profile/profile.html"> Profile </a></div>
        </div>

        <script src="home/js/fade.js"> </script>


        <!-- *********** CALORIES *********** -->
        <!-- Display remaining calorie intake for the day
        calculated by BMR, (+) activity, (-) food -->
        <div class="item sub-container" id="calories">
          <div id="calories-label"> Calories </div>
          <div id="calories-num"> <?php $totalCalsIn; ?> </div> <!-- why won't this update? -->
          <img src="media/icons/flame-icon.png">
        </div>

        <!-- *********** WATER ************* -->
        <!-- Track how many cups of water you had -->
        <div class="item sub-container" id="water">
          <div id="water-label"> Water </div>
          <div id="water-num"> 0 <span style="font-size:medium">cups</span></div>
          <img src="media/icons/water-icon.png">
        </div>


        <!-- ********** ACTIVITY *********** -->
        <!-- Track exercise in calories spent -->
        <div class="item sub-container" id="activity">
          <div id="activity-label"> Activity </div>
          <div id="activity-num"> 40 <span style="font-size:medium">mins</span></div>
          <img src="media/icons/electric-icon.png">
        </div>

        <!-- ********* GREETING *********** -->
        <!-- Greet user based on time of day -->
        <div class="item" id="greeting">
          <div id="date-container">

            <span id="daytime"></span>
            <script src="home/js/timeofday.js"> </script>

            <span id="name">Tiffany!</span>
            <div id="date"></div>

          </div>
          <!-- add emoji
          <a href='https://www.freepik.com/vectors/icons'>Icons vector created by freepik - www.freepik.com</a>
          <a href="https://www.freepik.com/vectors/background">Background vector created by starline - www.freepik.com</a>
          <img src="" height="80" width="80"/> -->
        </div>
        <script src="home/js/date.js"></script>

        <!-- ********** FOOD LOG ********** -->
        <!-- Display a daily food journal, displaying quanity,
        macros & calories -->
        <div class="label" id="foodlabel"> Food Log </div>
        <div class="item" id="foodlog">
          
          <?php 

          if($entries == 0){

            echo "Start logging your food!";

          } else {

            $j = 1;

            while ($j < $entries){

              echo '<div id ="fooditem"><span>'.$foodType[$j].'&nbsp'.$quantity[$j].'&nbsp'.$measurement[$j].'&nbsp'.$foodCals[$j].'&nbsp'.$protein[$j].'g protein &nbsp'.$fat[$j].'g fat &nbsp'.$carbs[$j].'g carbs </span></div><br>';

              $j++;

            }

          }

          ?>
          
        </div>

        <!-- ********** EXERCISE LOG ********** -->
        <!-- Display a daily fitness journal,
        displaying type and calories burned -->
        <div class="label" id="exerlabel"> Exercise Log </div>
        <div class="item" id="exerlog">
          <?php

          if($activityEntries == 0 ){

            echo "Start logging your activity!";

          } else {

            $k = 1;

            while ($k < $activityEntries){

              echo 'Metcode: '.$metCode[$k].', Duration: '.$duration[$k].' minutes, Calories: '.$calsBurned[$k];
              echo '<br>';
              $k++;

            }

          }

          ?>
        </div>

        <!-- ********** SLEEP LOG ********** -->
        <!-- Display a daily sleep journal-->
        <div class="item sleep-container" id="sleep">
          <div id="sleep-label"> Sleep </div>
          <div id="sleep-num">
          <?php

            if($sleepEntries <= 0 ){

              echo "0H 0M";

            } else {

              echo $timeHr."h ".$timeMin."m";

            }

          ?>
          </div>
          <img src="media/icons/moon-icon.png">
        </div>

        <!-- ********** MACRO LOG ********** -->
        <!-- Display a pie chart breaking down carbs, fats, proteins
        from daily food journal -->
        <div class="item" id="macros">
          <div id="macro-label"> Macros </div>
          <!-- Add widget later -->
          <!-- protein, carbs, fat -->
        </div>

      </div> <!-- End container -->

  </body>
</html>
