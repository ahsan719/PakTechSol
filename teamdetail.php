<?php
include "header.php";
include "z_db.php";
$todo= mysqli_real_escape_string($con,$_GET["id"]);
?>
        <!-- ***** Breadcrumb Area Start ***** -->
        <section class="section breadcrumb-area overlay-dark d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Breadcrumb Content -->
                        <div class="breadcrumb-content d-flex flex-column align-items-center text-center">
                            <h2 class="text-white text-uppercase mb-3">Our Team</h2>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a class="text-uppercase text-white" href="index.html">Home</a></li>
                                <li class="breadcrumb-item text-white active">Team</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Breadcrumb Area End ***** -->

        <?php
        $rt=mysqli_query($con,"SELECT * FROM team WHERE id='$todo'");
        $tr = mysqli_fetch_array($rt);
        $name = "$tr[name]";
        $position = "$tr[position]";
        $bio = "$tr[bio]";
        $profile_picture = "$tr[profile_picture]";
        ?>

        <!-- ***** Team Member Details Area Start ***** -->
        <section class="section team-details-area ptb_100">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-12 col-lg-6">
                        <!-- Team Member Picture -->
                        <div class="team-thumb text-center">
                            <img src="dashboard/uploads/team/<?php print $profile_picture;?>" alt="Team Member Image" class="img-fluid rounded">
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <!-- Team Member Info -->
                        <div class="team-content section-heading text-center text-lg-left pl-md-4 mt-5 mt-lg-0 mb-0">
                            <h2 class="mb-3"><?php print $name?></h2>
                            <h4 class="mb-3"><?php print $position?></h4>
                            <p><?php print $bio;?></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Team Member Details Area End ***** -->

        <!--====== Contact Area Start ======-->
        <section id="contact" class="contact-area ptb_100">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-12 col-lg-5">
                        <!-- Section Heading -->
                        <div class="section-heading text-center mb-3">
                            <h2><?php print $contact_title ?></h2>
                            <p class="d-none d-sm-block mt-4"><?php print $contact_text ?></p>
                        </div>
                        <!-- Contact Us -->
                        <div class="contact-us">
                            <ul>
                                <li class="contact-info color-1 bg-hover active hover-bottom text-center p-5 m-3">
                                    <span><i class="fas fa-mobile-alt fa-3x"></i></span>
                                    <a class="d-block my-2" href="tel:<?php print $phone1 ?>">
                                        <h3><?php print $phone1 ?></h3>
                                    </a>
                                </li>
                                <li class="contact-info color-3 bg-hover active hover-bottom text-center p-5 m-3">
                                    <span><i class="fas fa-envelope-open-text fa-3x"></i></span>
                                    <a class="d-none d-sm-block my-2" href="mailto:<?php print $email1 ?>">
                                        <h3><?php print $email1 ?></h3>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 pt-4 pt-lg-0">
                        <!-- Contact Box -->
                        <div class="contact-box text-center">
                            <!-- Contact Form -->
                            <?php
                                $status = "OK";
                                $msg = "";
                                if(ISSET($_POST['save'])){
                                    $name = mysqli_real_escape_string($con,$_POST['name']);
                                    $email = mysqli_real_escape_string($con,$_POST['email']);
                                    $phone = mysqli_real_escape_string($con,$_POST['phone']);
                                    $message = mysqli_real_escape_string($con,$_POST['message']);

                                    if (strlen($name) < 5) {
                                        $msg .= "Name must be more than 5 characters.<br>";
                                        $status = "NOTOK";
                                    }
                                    if (strlen($email) < 9) {
                                        $msg .= "Email must be more than 10 characters.<br>";
                                        $status = "NOTOK";
                                    }
                                    if (strlen($message) < 10) {
                                        $msg .= "Message must be more than 10 characters.<br>";
                                        $status = "NOTOK";
                                    }
                                    if (strlen($phone) < 8) {
                                        $msg .= "Phone must be more than 8 characters.<br>";
                                        $status = "NOTOK";
                                    }

                                    if ($status == "OK") {
                                        $recipient = "awolu_faith@live.com";
                                        $formcontent = "NAME: $name \n EMAIL: $email \n PHONE: $phone \n MESSAGE: $message";
                                        $subject = "New Enquiry from Vogue Website";
                                        $mailheader = "From: noreply@vogue.com \r\n";
                                        $result = mail($recipient, $subject, $formcontent);

                                        if ($result) {
                                            $errormsg = "
                                                <div class='alert alert-success alert-dismissible alert-outline fade show'>
                                                    Enquiry sent successfully. We shall get back to you ASAP.
                                                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                                                </div>";
                                        }
                                    } else {
                                        $errormsg = "
                                            <div class='alert alert-danger alert-dismissible alert-outline fade show'>
                                                $msg
                                                <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                                            </div>";
                                    }
                                }
                            ?>

                            <?php
                                if($_SERVER['REQUEST_METHOD'] == 'POST'){
                                    print $errormsg;
                                }
                            ?>

                            <form action="" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" placeholder="Name" required="required">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Email" required="required">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="phone" placeholder="Phone" required="required">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea class="form-control" name="message" placeholder="Message" required="required"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-bordered active btn-block mt-3" name="save">
                                            <span class="text-white pr-3"><i class="fas fa-paper-plane"></i></span>Send Message
                                        </button>
                                    </div>
                                </div>
                            </form>
                            <p class="form-message"></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--====== Contact Area End ======-->

        <!--====== Call To Action Area Start ======-->
        <section class="section cta-area bg-overlay ptb_100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10">
                        <!-- Section Heading -->
                        <div class="section-heading text-center m-0">
                            <h2 class="text-white"><?php print $enquiry_title; ?></h2>
                            <p class="text-white d-none d-sm-block mt-4"><?php print $enquiry_text; ?></p>
                            <a href="contact" class="btn btn-bordered-white mt-4">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--====== Call To Action Area End ======-->
<?php include "footer.php"; ?>
