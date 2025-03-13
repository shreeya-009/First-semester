<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "weather";

// Create a connection to the database
$conn = mysqli_connect($servername, $username, $password, $dbname);

if ($conn) {
   // echo "SQL connected";  
} else {
    echo json_encode(["error" => "Failed to connect SQL" . mysqli_connect_error()]);
    exit;
}


/*$createDatabase = "CREATE DATABASE weather";
if(mysqli_query($conn,$createDatabase)){
    echo "Database created";
} else {
    echo "Failed to create database";
}

$createTable = "CREATE TABLE weather_data(id int(11) auto_increment PRIMARY KEY, weather_date date unique, temperature int(11), humidity int(11), pressure int(11), wind_speed float)";
if(mysqli_query($conn, $createTable)){
    echo "Table created";
} else {
    echo "Failed to create table".mysqli_error($conn);
}*/


$db = $conn;
$tableName = "weather_data";
$columns = ['id', 'weather_date', 'temperature', 'pressure', 'humidity', 'wind_speed'];

// Fetch current data
$fetchData = fetch_data($db, $tableName, $columns);

function fetch_data($db, $tableName, $columns)
{
    if (empty($db)) {
        $msg = "Database connection error";
    } elseif (empty($columns) || !is_array($columns)) {
        $msg = "Columns name must be defined in an indexed array";
    } elseif (empty($tableName)) {
        $msg = "Table name is empty";
    } else {
        $columnName = implode(", ", $columns);

        $query = "SELECT " . $columnName . " FROM $tableName ORDER BY id LIMIT 7";
        $result = $db->query($query);

        if ($result == true) {
            if ($result->num_rows > 0) {
                $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
                $msg = $row;
            } else {
                $msg = "No data found";
            }
        } else {
            $msg = mysqli_error($db);
        }
    }

    return $msg;
}
?>