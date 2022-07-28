<?php
include('partials/menu.php');

// query to get all admin
$sql = "select full_name FROM tbl_admin WHERE id=".$_GET['id'];
//execute the query
$res = mysqli_query($conn, $sql);
$row=$res->fetch_assoc();

// query to get all admin
$sql = "DELETE FROM tbl_admin WHERE id=".$_GET['id'];

//execute the query
$res = mysqli_query($conn, $sql);

//send Message Delete Success
$_SESSION['deleteMsg'] = $row["full_name"]." Deleted Successfully";
//redirect page to Add admin page
header("location:" . SITEURL . 'admin/manage-admin.php');