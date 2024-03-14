<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $username = $_POST["username"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];
    $branch = $_POST["branch"];
    $start_year = $_POST["start_year"];
    $end_year = $_POST["end_year"];

    // Validate form data
    if ($password !== $confirm_password) {
        echo "Password and confirm password do not match.";
    } else {
        // Hash the password
        $hashed_password = password_hash($password, PASSWORD_BCRYPT);

        // File upload handling
        $resume_path = ""; // Initialize resume path variable

        if (isset($_FILES['resume']) && $_FILES['resume']['error'] === UPLOAD_ERR_OK) {
            $resume_tmp_name = $_FILES['resume']['tmp_name'];
            $resume_name = $_FILES['resume']['name'];
            $resume_path = "resumes/" . $resume_name; // Save resume in a folder named 'resumes'

            // Move uploaded resume to the desired location
            if (move_uploaded_file($resume_tmp_name, $resume_path)) {
                echo "Resume uploaded successfully.";
            } else {
                echo "Failed to upload resume.";
            }
        } else {
            echo "Please upload a resume.";
        }

        // Database connection
        $servername = "localhost";
        $username_db = "root";
        $password_db = "";
        $dbname = "recruitment_db";

        $conn = new mysqli($servername, $username_db, $password_db, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Begin transaction
        $conn->begin_transaction();

        // Insert into 'user' table
        $sql_user = "INSERT INTO user (username, password, resume_path) VALUES (?, ?, ?)";
        $stmt_user = $conn->prepare($sql_user);
        $stmt_user->bind_param("sss", $username, $hashed_password, $resume_path);
        $user_inserted = $stmt_user->execute();
        $stmt_user->close();

        // Insert into 'student_login' table
        $sql_student_login = "INSERT INTO student_login (username, password, branch, start_year, end_year, resume_path) 
                              VALUES (?, ?, ?, ?, ?, ?)";
        $stmt_student_login = $conn->prepare($sql_student_login);
        $stmt_student_login->bind_param("ssssss", $username, $hashed_password, $branch, $start_year, $end_year, $resume_path);
        $student_login_inserted = $stmt_student_login->execute();
        $stmt_student_login->close();

        // Commit or rollback transaction based on success
        if ($user_inserted && $student_login_inserted) {
            $conn->commit();
            echo "Registration successful!";
            // Redirect to login.php after successful registration
            header("Location: login.php");
            exit();
        } else {
            $conn->rollback();
            echo "Error occurred during registration. Please try again.";
        }

        // Close the database connection
        $conn->close();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 50px;
            background-color: black;
        }

        h2 {
            color: white;
        }

        form {
            height: 575px;
            width: 380px;
            background-color: white;
            position: absolute;
            transform: translate(-50%, -50%);
            top: 59%;
            left: 50%;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
            padding: 50px 35px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input, select, button {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        button {
            color:white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #0056b3;
        }

        button:hover {
            background-color: #003366;
        }
    </style>
</head>
<body>
    <h2>Student Registration</h2>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" name="password" required><br>

        <label for="confirm_password">Confirm Password:</label>
        <input type="password" name="confirm_password" required><br>

        <label for="branch">Branch:</label>
        <select name="branch" required>
            <option value="CSE">Computer Science Engineering</option>
            <option value="IT">Information Technology</option>
            <option value="Mechanical">Mechanical Engineering</option>
        </select><br>

        <label for="start_year">Start Year:</label>
        <select name="start_year" required>
            <?php
            $current_year = date("Y");
            for ($year = $current_year; $year >= 2010; $year--) {
                echo "<option value='$year'>$year</option>";
            }
            ?>
        </select><br>

        <label for="end_year">End Year:</label>
        <select name="end_year" required>
            <?php
            for ($year = $current_year; $year <= $current_year + 5; $year++) {
                echo "<option value='$year'>$year</option>";
            }
            ?>
        </select><br>

        <label for="resume">Resume (PDF only):</label>
        <input type="file" name="resume" accept="application/pdf" required><br>

        <button type="submit">Register</button>
    </form>
</body>
</html>
