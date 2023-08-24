<?php
session_start();
include_once('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering System | About us</title>

    

    <link rel="stylesheet" href="assets/css/icons.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/red-color.css">
    <link rel="stylesheet" href="assets/css/yellow-color.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body itemscope>
   
<?php include_once('includes/header.php');?>
        <section>
            <div class="block">
                <div class="fixed-bg" style="background-image: url(assets/images/topbg.jpg);"></div>
                <div class="page-title-wrapper text-center">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="page-title-inner">
                            <h1 itemprop="headline">About Us</h1>
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="bread-crumbs-wrapper">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" title="" itemprop="url">Home</a></li>
                    <li class="breadcrumb-item active">About Us</li>
                </ol>
            </div>
        </div>

        <section>
            <div class="block less-spacing gray-bg top-padd30">
                
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <div class="sec-box">
                                <div class="about-feat text-center wow fadeIn" data-wow-delay="0.2s">
                                    <h2 class="title3" itemprop="headline">The Face Behind it All</h2>
                                    <img src="assets/images/about-img.jpeg" alt="about-img.jpeg" itemprop="image">
                                </div>
                               
                             
                                <div class="title1-wrapper text-center style2">
                                    <div class="title1-inner">
                                        <h2 itemprop="headline">About us</h2>
                                        <p itemprop="description"><p>Ghislaine Angoulangouli, a visionary and trailblazing CEO, has revolutionized the culinary landscape with her innovative approach to dining experiences. As the driving force behind the creation and establishment of the fast-food online management system, her dynamic leadership has not only disrupted the conventional restaurant model but has also introduced a refreshing paradigm shift in the way we engage with food. With an unyielding commitment to excellence and a keen eye for opportunities, Ghislaine identified the need for a seamless, efficient, and modern dining solution that would transcend the limitations of traditional restaurants. Her commitment to redefining norms, embracing technology, and enhancing customer satisfaction resonates through every word. Her mission to bridge the gap between traditional dining and contemporary lifestyles, while fostering a sense of community among food enthusiasts, is evident in the passion that permeates the page. As the founder and CEO of Gigi’s, Ghislaine Angoulangouli indomitable spirit continues to drive the evolution of the fast food online management system, inspiring a new era where culinary excellence meets digital innovation, all within the virtual walls of a dining experience like no other.</p></p>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        

           <?php include_once('includes/footer.php');
include_once('includes/signin.php');
include_once('includes/signup.php');
      ?>

    </main><!-- Main Wrapper -->

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
</body>	

</html>
