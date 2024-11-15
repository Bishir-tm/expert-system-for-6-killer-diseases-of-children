<?php
$host = 'localhost';
$user = 'root'; // Replace with your database username
$password = ''; // Replace with your database password
$database = 'six_killer_diseases'; // Replace with your database name

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
