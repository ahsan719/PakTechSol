<?php
// Include the database connection file
include "z_db.php"; // Make sure your database connection is established in this file

include "header.php";
?>

<section class="section breadcrumb-area overlay-dark d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <!-- Breadcrumb Content -->
                <div class="breadcrumb-content text-center">
                    <h2 class="text-white text-uppercase mb-3">Meet Our Team</h2>
                    <ol class="breadcrumb d-flex justify-content-center">
                        <li class="breadcrumb-item"><a class="text-uppercase text-white" href="index.html">Home</a></li>
                        <li class="breadcrumb-item text-white active">Our Team</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Breadcrumb Area End ***** -->

<!-- ***** Team Area Start ***** -->
<section id="team" class="team-area overflow-hidden ptb_100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 col-lg-7">
                <!-- Section Heading -->
                <div class="section-heading text-center">
                    <!-- You can set a default position and name here or from the database -->
                    <h2>Our Team</h2>
                </div>
            </div>
        </div>
        <!-- Team Members -->
        <div class="row items team-items">
            <?php
            // Query to fetch team members from the 'team' table
            $query = "SELECT * FROM team ORDER BY id DESC LIMIT 6";
            $result = mysqli_query($con, $query);

            // Check if the query returns any rows
            if (mysqli_num_rows($result) > 0) {
                while ($ro = mysqli_fetch_array($result)) {
                    // Fetch data from each row
                    $id = $ro['id'];
                    $name = $ro['name'];
                    $position = $ro['position'];
                    $bio = $ro['bio'];
                    $profile_picture = $ro['profile_picture'];

                    // Display team member data
                    echo "
                    <div class='col-12 col-sm-6 col-lg-4 team-item'>
                        <!-- Single Team Member -->
                        <div class='single-team-member'>
                            <!-- Team Member Thumb -->
                            <img src='dashboard/uploads/team/$profile_picture' alt='$name' class='img-fluid'>
                            <!-- Team Member Info -->
                            <div class='team-info text-center mt-4'>
                                <h5 class='mb-0'>$name</h5>
                                <p class='text-muted'>$position</p>
                                <p class='text-muted'>$bio</p>
                            </div>
                        </div>
                    </div>
                    ";
                }
            } else {
                echo "<p class='text-center'>No team members found.</p>";
            }
            ?>
        </div>
        
    </div>
</section>
<!-- ***** Team Area End ***** -->

<?php include "footer.php"; ?>
