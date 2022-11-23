<?php include('partials/menu.php'); ?>

<!-- Main Content Section Starts -->
<div class="main-content">
    <div class="wrapper">
        <h1>Manage Admin</h1>
        <br>

        <?php
        if (isset($_SESSION['add'])) {
            echo $_SESSION['add']; // display session message
            unset($_SESSION['add']); // removing session message
        }
        ?>
        <br>
        <br>
        <br>
        <!-- Button to Add Admin -->

        <a href="add-admin.php" class="btn-primary">Add Admin</a>
        <br>
        <br>
        <br>

        <table class="tbl-full">
            <tr>
                <th>S.N.</th>
                <th>Full Name</th>
                <th>Username</th>
                <th>Actions</th>
            </tr>

            <?php
            // query to get all Admin user
            $sql = "SELECT * FROM tbl_admin";

            //execute the query
            $res = mysqli_query($conn, $sql);

            //check whether the query is executed or not
            if ($res == TRUE) {
                // count rows in db to check whether we have data in database or not
                $count = mysqli_num_rows($res); //Function to get all the rows in database

                $sn=1; // create a variable and assign the value

                //check the num of rows
                if ($count > 0) {
                    //we have data in database
                    while ($rows = mysqli_fetch_assoc($res)) {
                        // using while loop to get all the data form database
                        // and while loop will run as long as we have data in database

                        //get individual data
                        $id = $rows['id'];
                        $full_name = $rows['full_name'];
                        $username = $rows['username'];

                        //display the values in our table
                        ?>

                        <tr>
                            <td><?php echo $sn++; ?>.</td>
                            <td><?php echo $full_name; ?></td>
                            <td><?php echo $username; ?></td>
                            <td>
                                <a href="#" class="btn-secondary">Update Admin</a>
                                <a href="#" class="btn-danger">Delete Admin</a>
                            </td>
                        </tr>

                        <?php
                    }
                } else {
                    // we do not have data in database
                }
            }

            ?>

            
        </table>

    </div>
</div>

<!-- Main Content Section Ends -->

<?php include('partials/footer.php'); ?>