<?php
include('partials/menu.php');
?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Admin</h1>
        <br><br>

        <form action="" method="POST">

            <table class="tbl-30">
                <tr>
                    <td>Full Name: </td>
                    <td>
                        <input type="text" name="full_name" placeholder="Enter Your Name">
                    </td>
                </tr>

                <tr>
                    <td>Username: </td>
                    <td>
                        <input type="text" name="username" placeholder="Your Username">
                    </td>
                </tr>

                <tr>
                    <td>Password: </td>
                    <td>
                        <input type="password" name="password" placeholder="Your Password">
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" value="Add Admin" name="submit" class="btn-secondary">
                    </td>
                </tr>

            </table>

        </form>


    </div>
</div>



<?php
include('partials/footer.php');
?>

<?php
//Process the value from Form and save it in database

//Check whether the submit button is clicked or nor

if (isset($_POST['submit'])) {
    // Button Clicked
    // echo "Button Clicked";

    //1. Get the data from form
    $full_name = $_POST['full_name'];
    $username = $_POST['username'];
    $password = md5($_POST['password']); // password encryption with MD5

    //2. SQL query to save the data into database
    $sql = "INSERT INTO tbl_admin SET
        full_name='$full_name',
        username='$username',
        password='$password'
    ";

//3. Execute query and save data in database
    $conn = mysqli_connect('localhost', 'root', '') or die(mysqli_error()); // database connection
    $db_select = mysqli_select_db($conn, 'food-order') or die(mysqli_error()); //selecting database

    //$res = mysqli_query($conn, $sql) or die(mysqli_error());
    
}
?>