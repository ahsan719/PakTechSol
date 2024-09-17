<?php
header("refresh:2;url=team"); // Redirect to the team list page after 2 seconds
include_once("../z_db.php");

// Initialize session
session_start();
// Check, if username session is NOT set then this page will jump to login page

// Retrieve the ID of the team member to be deleted
$todelete = mysqli_real_escape_string($con, $_GET["id"]);

// Query to delete the team member from the database
$result = mysqli_query($con, "DELETE FROM team WHERE id='$todelete'");

// Check if the deletion was successful
if ($result) {
    print "<center>Team member deleted<br/>Redirecting in 2 seconds...</center>";
} else {
    print "<center>Action could not be performed, check back again<br/>Redirecting in 2 seconds...</center>";
}

?>
