<?php
// Include constants.php file here
include('../config/constants.php');

// 1. get the ID of Admin to be deleted
$id = $_GET['id'];

// 2. create SQL query to delete admin
$sql = "DELETE FROM tbl_admin WHERE id=$id";

// Execute the query
$res = mysqli_query($conn, $sql);

// check wether the query executed succesfully or not
if($res==true)
{
    // quers executed successfully and admin deleted
    // echo "Admin deleted";
    // create session variable to display message
    $_SESSION['delete'] = "<div class='success'>Admin Deleted successfully</div>";
    // redirect to manage Admin
    header('location:'.SITEURL.'admin/manage-admin.php');
}
else
{
    //failed to delete admin
    //echo "Failed to delete admin";

    $_SESSION['delete'] = "<div class='error'>Failed to delete admin. Try again later.</div>";
    header('location:'.SITEURL.'admin/manage-admin.php');
}

// 3. redirect to manage admin page with message (succes/error)


?>