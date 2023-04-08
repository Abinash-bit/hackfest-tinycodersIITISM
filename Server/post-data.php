<?php
$servername = "localhost";
$dbname = "id20560043_aahaardb";
$username = "id20560043_aahaar_123";
$password = "Abinashmahapatra@123";
 
$api_key_value = "#54321";
$api_key= $SensorData =  $value1 = "";
 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $api_key = test_input($_POST["api_key"]);
    if($api_key == $api_key_value) {
        $SensorData = test_input($_POST["SensorData"]);
        $value1 = test_input($_POST["value1"]);
        
        
        $conn = new mysqli($servername, $username, $password, $dbname);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } 
        
        $sql = "INSERT INTO ESPData (SensorData, value1, val)
        VALUES ('" . $SensorData . "',  '" . $value1 . "')";
        
        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } 
        else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    
        $conn->close();
    }
    else {
        echo "Wrong API Key";
    }
 
}
else {
    echo "No data posted HTTP POST.";
}
 
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}