<!-- HTML Form -->
<form action="prem.php" method="post">
  <label for="username">Username:</label>
  <input type="text" name="username" required>
  <br>
  <label for="password">Password:</label>
  <input type="password" name="password" minlength="8" required>
  <br>
  <input type="submit" value="Submit">
</form>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "expt11";

$conn = mysqli_connect($servername, $username, $password, $dbname);


if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['username']) && isset($_POST['password'])) {
  
  if (empty($_POST['username']) || empty($_POST['password'])) {
    echo "Username and Password fields must not be empty!";
  } else if (strlen($_POST['password']) < 8) {
    echo "Password must be at least 8 characters!";
  } else {
    
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sql = "INSERT INTO users (username, password) VALUES ('$username', '$password')";
   
    if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }
}


mysqli_close($conn);
?>

