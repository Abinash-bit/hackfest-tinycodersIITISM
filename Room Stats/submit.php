<?php
// Retrieve form data
$total_persons = $_POST['total-persons'];
$persons_entered = $_POST['persons-entered'];
$persons_left = $_POST['persons-left'];
$food_consumed = $_POST['food-consumed'];
$food_left = $_POST['food-left'];

// Connect to database
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "room_statistics";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Insert data into database
$sql = "INSERT INTO statistics (total_persons, persons_entered, persons_left, food_consumed, food_left) VALUES ('$total_persons', '$persons_entered', '$persons_left', '$food_consumed', '$food_left')";

if ($conn->query($sql) === TRUE) {
    echo "Form submitted successfully!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close database connection
$conn->close();
?>
