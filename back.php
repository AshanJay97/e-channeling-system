<?php 

$fname = filter_input (INPUT_POST,'fname');
$username = filter_input (INPUT_POST,'username');
$mail = filter_input (INPUT_POST,'mail');
$password1 = filter_input (INPUT_POST,'password1');


$conn = new mysqli('localhost','root','','web');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
    } 
    else {
		$stmt = $conn->prepare("insert into user(fname, username, mail, password1) values(?, ?, ?, ?)");
		$stmt->bind_param("ssss", $fname, $username, $mail, $password1);
		$execval = $stmt->execute();
		echo $execval;
		echo " - Registration successfully...";
		$stmt->close();
		$conn->close();
    }
    
?>
