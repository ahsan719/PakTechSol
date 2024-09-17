<?php include "header.php";?>
        <!-- ***** Breadcrumb Area Start ***** -->
        <section class="section breadcrumb-area overlay-dark d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Breamcrumb Content -->
                        <div class="breadcrumb-content text-center">
                            <h2 class="text-white text-uppercase mb-3">Contact Us</h2>
                            <ol class="breadcrumb d-flex justify-content-center">
                                <li class="breadcrumb-item"><a class="text-uppercase text-white" href="index.html">Home</a></li>
                                <li class="breadcrumb-item"><a class="text-uppercase text-white" href="#">Pages</a></li>
                                <li class="breadcrumb-item text-white active">Contact</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Breadcrumb Area End ***** -->


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
                                <!-- Contact Info -->
                                <li class="contact-info color-1 bg-hover active hover-bottom text-center p-5 m-3">
                                    <span><i class="fas fa-mobile-alt fa-3x"></i></span>
                                    <a class="d-block my-2" href="tel:<?php print $phone1 ?>">
                                        <h3><?php print $phone1 ?></h3>
                                    </a>

                                </li>
                                <!-- Contact Info -->
                                <li class="contact-info color-3 bg-hover active hover-bottom text-center p-5 m-3">
                                    <span><i class="fas fa-envelope-open-text fa-3x"></i></span>
                                    <a class="d-none d-sm-block my-2" href="mailto:<?php print $email1 ?>">
                                        <h3><?php print $email1 ?></h3>
                                    </a>
                                    <a class="d-block d-sm-none my-2" href="mailto:<?php print $email1 ?>">
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
$errormsg = ""; // Initialize the variable
$status = "OK"; // Initial status
$msg = "";

if (isset($_POST['save'])) {
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $phone = mysqli_real_escape_string($con, $_POST['phone']);
    $message = mysqli_real_escape_string($con, $_POST['message']);

    if (strlen($name) < 5) {
        $msg .= "Name Must Be More Than 5 Char Length.<br>";
        $status = "NOTOK";
    }
    if (strlen($email) < 9) {
        $msg .= "Email Must Be More Than 10 Char Length.<br>";
        $status = "NOTOK";
    }
    if (strlen($message) < 10) {
        $msg .= "Message Must Be More Than 10 Char Length.<br>";
        $status = "NOTOK";
    }
    if (strlen($phone) < 8) {
        $msg .= "Phone Must Be More Than 8 Char Length.<br>";
        $status = "NOTOK";
    }

    if ($status == "OK") {
        $recipient = "awolu_faith@live.com";
        $formcontent = "NAME: $name\nEMAIL: $email\nPHONE: $phone\nMESSAGE: $message";
        $subject = "New Enquiry from Pak Tech Sol";
        $mailheader = "From: noreply@paktechsol.com\r\n";
        $result = mail($recipient, $subject, $formcontent);

        if ($result) {
            $errormsg = "
                <div class='alert alert-success alert-dismissible alert-outline fade show'>
                    Enquiry Sent Successfully. We shall get back to you ASAP.
                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                </div>";
        } else {
            $errormsg = "
                <div class='alert alert-danger alert-dismissible alert-outline fade show'>
                    Some Technical Glitch Is There. Please Try Again Later Or Ask Admin For Help.
                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                </div>";
        }
    } else {
        $errormsg = "
            <div class='alert alert-danger alert-dismissible alert-outline fade show'>
                $msg <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
            </div>";
    }
}
?>

<?php if ($_SERVER['REQUEST_METHOD'] == 'POST') { echo $errormsg; } ?>

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


        <!--====== Map Area Start ======-->
        <section class="section map-area">
        <iframe src="https://www.bing.com/maps?where=Haripur%2C+Khyber+Pakhtunkhuwa%2C+PK&cp=34.018598%7E72.915359&lvl=14.8"></iframe>

            </section>
        <!--====== Map Area End ======-->
        <?php include "footer.php";?>
