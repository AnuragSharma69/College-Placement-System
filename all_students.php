<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filtered Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            background-color: #fff;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "recruitment_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch all student details
$sql = "SELECT username, branch, start_year, end_year, resume_path FROM student_login";
$result = $conn->query($sql);
?>
    <input type="text" id="searchInput" placeholder="Search for student...">
    <div id="studentDetails">
        <table>
            <tr>
                <th>Serial No</th>
                <th>Student Name</th>
                <th>Branch</th>
                <th>Start Year</th>
                <th>End Year</th>

            </tr>
            <?php
            // Initialize serial number
            $serial_number = 1;

            // Check if any rows were returned
            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $serial_number . "</td>";
                    echo "<td>" . $row["username"] . "</td>";
                    echo "<td>" . $row["branch"] . "</td>";
                    echo "<td>" . $row["start_year"] . "</td>";
                    echo "<td>" . $row["end_year"] . "</td>";

                    
                    // Increment serial number
                    $serial_number++;
                }
            } else {
                echo "<tr><td colspan='6'>No students found</td></tr>";
            }
            ?>
        </table>
    </div>
</body>
</html>
<?php
// Close connection
$conn->close();
?>

<script>
    document.getElementById("searchInput").addEventListener("keyup", function() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        tr = table.getElementsByTagName("tr");
        for (i = 1; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1]; // Column index for student name
            var branch = tr[i].getElementsByTagName("td")[2].textContent.toUpperCase();
            var startYear = tr[i].getElementsByTagName("td")[3].textContent.toUpperCase();
            if (td || branch || startYear) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1 || branch.indexOf(filter) > -1 || startYear.indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    });
</script>
