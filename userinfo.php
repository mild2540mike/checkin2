<?php
// mysql hostname, username, password, database
$mysqli = new mysqli("localhost", "root", "root123456", "students");	

$studentid = $_POST['studentid'];

// clean comma qrcode ex. text,12345 > 12345
if (strpos($studentid,',')!==false) {
	$studentid = explode(',', $studentid)[1];
}

if ($mysqli->query("INSERT INTO usercheckin (studentid) VALUES ($studentid)")) {

	$myArray = array();
	if ($result = $mysqli->query("SELECT usercheckin.checkin,userinfo.id,userinfo.firstname,userinfo.lastname,userinfo.level 
	FROM userinfo, usercheckin WHERE usercheckin.studentid=userinfo.id ORDER BY usercheckin.id DESC LIMIT 5")) {

		while($row = $result->fetch_array(MYSQLI_ASSOC)) {
				$myArray[] = $row;
		}
		echo json_encode($myArray);
	}

	$result->close();
	$mysqli->close();
}