<?php
// Enter your database connection here
$hostname = "localhost";
$username = "root";
$password = "";
 
// Connection to the database
$dbhandle = mysql_connect($hostname, $username, $password) 
	or die("Unable to connect to MySQL");

// Select a database to work with
$selected = mysql_select_db("tiva_events", $dbhandle) 
	or die("Could not select database");

// Select timetables table
$result = mysql_query("SELECT * FROM events");

//fetch tha data from the database 
$events = array();
while ($row = mysql_fetch_array($result)) {
	$event = new stdClass();
	$event->name = $row{'name'};
	$event->image = $row{'image'};
	$event->day = date('j', strtotime($row{'start_date'}));
	$event->month = date('n', strtotime($row{'start_date'}));
	$event->year = date('Y', strtotime($row{'start_date'}));
	if (!$row{'end_date'} || ($row{'end_date'} == '0000-00-00')) {
		$event->duration = 1; // If end_time is blank -> event's duration = 1 (day).	
	} else {
		if (date('Ymd', strtotime($row{'start_date'})) == date('Ymd', strtotime($row{'end_date'}))) { // If start date and end date are same day -> event's duration = 1 (day).
			$event->duration = 1;
		} else {
			$start_day = date('Y-m-d', strtotime($row{'start_date'}));
			$end_day = date('Y-m-d', strtotime($row{'end_date'}));
			$event->duration = ceil(abs(strtotime($end_day) - strtotime($start_day)) / 86400) + 1; // Get event's duration = days between start date and end date.
		}
	}
	$event->time = $row{'time'};
	$event->color = $row{'color'};
	$event->location = $row{'location'};
	$event->description = utf8_encode($row{'description'});
	array_push($events, $event);
}

echo json_encode($events);

//close the connection
mysql_close($dbhandle);
?>