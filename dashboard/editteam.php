<?php 
include "header.php";
$todo = mysqli_real_escape_string($con, $_GET['id']);
include "sidebar.php";

// Initialize $errormsg to avoid undefined variable warning
$errormsg = "";
?>

<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="main-content">
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Edit Team Member</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Team</a></li>
                                <li class="breadcrumb-item active">Edit</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->

            <?php
            // Fetch existing team member data
            $query = "SELECT * FROM team WHERE id='$todo'";
            $result = mysqli_query($con, $query);
            $team_member = mysqli_fetch_array($result);

            $id = $team_member['id'];
            $name = $team_member['name'];
            $position = $team_member['position'];
            $bio = $team_member['bio'];
            $profile_picture = $team_member['profile_picture'];
            ?>

            <div class="row">
                <!--end col-->
                <div class="col-xxl-9">
                    <div class="card mt-xxl-n5">
                        <div class="card-header">
                            <ul class="nav nav-tabs-custom rounded card-header-tabs border-bottom-0" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="tab" href="#personalDetails" role="tab" aria-selected="false">
                                        <i class="fas fa-user"></i> Edit Team Member
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <?php
                        $status = "OK"; // Initial status
                        $msg = "";

                        if (isset($_POST['save'])) {
                            $name = mysqli_real_escape_string($con, $_POST['name']);
                            $position = mysqli_real_escape_string($con, $_POST['position']);
                            $bio = mysqli_real_escape_string($con, $_POST['bio']);

                            // File upload handling
                            $uploads_dir = 'uploads/team';
                            if (!empty($_FILES["profile_picture"]["name"])) {
                                $tmp_name = $_FILES["profile_picture"]["tmp_name"];
                                $file_name = basename($_FILES["profile_picture"]["name"]);
                                $random_digit = rand(0000, 9999);
                                $new_file_name = $random_digit . $file_name;
                                move_uploaded_file($tmp_name, "$uploads_dir/$new_file_name");
                                $profile_picture = $new_file_name; // Update profile picture filename
                            }

                            if (strlen($name) < 3) {
                                $msg .= "Name must be more than 3 characters.<br>";
                                $status = "NOTOK";
                            }
                            if (strlen($position) < 3) {
                                $msg .= "Position must be more than 3 characters.<br>";
                                $status = "NOTOK";
                            }
                            if (strlen($bio) < 10) {
                                $msg .= "Bio must be more than 10 characters.<br>";
                                $status = "NOTOK";
                            }

                            if ($status == "OK") {
                                $query = "UPDATE team SET name='$name', position='$position', bio='$bio', profile_picture='$profile_picture' WHERE id='$todo'";
                                $result = mysqli_query($con, $query);

                                if ($result) {
                                    $errormsg = "
<div class='alert alert-success alert-dismissible alert-outline fade show'>
    Team member updated successfully.
    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
</div>";
                                }
                            } else {
                                $errormsg = "
<div class='alert alert-danger alert-dismissible alert-outline fade show'>
    " . $msg . " <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
</div>";
                            }
                        }
                        ?>

                        <div class="card-body p-4">
                            <div class="tab-content">
                                <div class="tab-pane active" id="personalDetails" role="tabpanel">
                                    <?php
                                    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                                        echo $errormsg;
                                    }
                                    ?>
                                    <form action="" method="post" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="mb-3">
                                                    <label for="nameInput" class="form-label">Name</label>
                                                    <input type="text" class="form-control" id="nameInput" name="name" value="<?php echo htmlspecialchars($name); ?>" placeholder="Enter Team Member Name">
                                                </div>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="mb-3">
                                                    <label for="positionInput" class="form-label">Position</label>
                                                    <input type="text" class="form-control" id="positionInput" name="position" value="<?php echo htmlspecialchars($position); ?>" placeholder="Enter Team Member Position">
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label for="bioInput" class="form-label">Bio</label>
                                                    <textarea class="form-control" id="bioInput" name="bio" rows="3" placeholder="Enter Team Member Bio"><?php echo htmlspecialchars($bio); ?></textarea>
                                                </div>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="mb-3">
                                                    <label for="profilePictureInput" class="form-label">Profile Picture</label>
                                                    <input type="file" class="form-control" id="profilePictureInput" name="profile_picture">
                                                    <?php if ($profile_picture): ?>
                                                        <img src="uploads/team/<?php echo htmlspecialchars($profile_picture); ?>" alt="Profile Picture" width="100">
                                                    <?php endif; ?>
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="hstack gap-2 justify-content-end">
                                                    <button type="submit" name="save" class="btn btn-primary">Update Team Member</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!--end tab-pane-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--end col-->
            </div>

        </div>
        <!-- container-fluid -->
    </div>
    <!-- End Page-content -->

    <?php include "footer.php"; ?>
