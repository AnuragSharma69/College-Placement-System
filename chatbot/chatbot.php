<?php
// Connect to your database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "recruitment_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to retrieve response from the database
function getResponse($message) {
    global $conn;
    $sql = "SELECT response FROM responses WHERE question = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $message);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return $row["response"];
    } else {
        return "Sorry, I don't understand.";
    }
}

// Handle user input
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST["user"];
    $message = $_POST["message"];
    
    // Insert user message into the database
    $sql = "INSERT INTO chat (user, message) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $user, $message);
    $stmt->execute();
    
    // Get response from the chatbot
    $response = getResponse($message);
    
    // Insert chatbot response into the database
    $sql = "INSERT INTO chat (user, message) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $chatbot_user, $chatbot_message);
    $chatbot_user = 'Chatbot';
    $chatbot_message = $response;
    $stmt->execute();
    
    echo $response;
}

$conn->close();
?>
