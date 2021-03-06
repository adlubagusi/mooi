
<?php   
    $dbSettings    = mysqli_query($db,"select * from settings");
    $vaSettings    = mysqli_fetch_array($dbSettings);
    
    $dbGeneral     = mysqli_query($db,"select * from general");
    $vaGeneral     = mysqli_fetch_array($dbGeneral);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="assets/css/fonts.css">
    <link rel="stylesheet" type="text/css" href="assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="assets/css/app-responsive.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style-responsive.css">
    <link rel="stylesheet" type="text/css" href="assets/css/page.css">

    <link
      rel="shortcut icon"
      href="assets/images/logo/<?= $vaSettings['favicon']; ?>"
      type="image/x-icon"
    />

            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script
      src="https://kit.fontawesome.com/2baad1d54e.js"
      crossorigin="anonymous"
    ></script>

    <link rel="stylesheet" href="assets/icofont/icofont.min.css">

    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      
    <link rel="stylesheet" href="assets/select2-4.0.6-rc.1/dist/css/select2.min.css">

    <link rel="stylesheet" href="assets/lightbox2-2.11.1/dist/css/lightbox.css">

    <title>Mooi</title>
  </head>
  <body>

  <div class="loading-animation-screen">
    <div class="overlay-screen"></div>
    <img src="assets/images/icon/loading.gif" alt="loading.." class="img-loading">
  </div>

  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light" style="background-color:#fff!important;box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;">
  <div class="container">
  <a class="navbar-brand mr-5" href="index.php"><img src="assets/images/logo/<?= $vaSettings['logo']; ?>" alt="logo" height="40"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <i class="fa text-light ml-3 icon-search-navbar mobile-search fa-search"></i>

    <div class="collapse navbar-collapse ml-3" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="?page=products">All products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="?page=cara_pemesanan">Cara memesan</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="?page=about">Tentang kami</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="login.php">Login</a>
        </li>
      </ul>
      <i class="fa text-dark icon-search-navbar desktop-search fa-search"></i>
      <br>
      <a href="?page=cart" class="text-dark navbar-cart-inform">
        <i class="fa fa-shopping-cart"></i>
                  Cart
       </a>        
      <br>
      <br>
    </div>
  </div>
</nav>
<div class="top-nav"></div>

<div class="search-form">
  <i class="fa fa-times"></i>
  <form action="http://localhost/olshop/search" method="get">
    <input type="text" placeholder="Search a product" autocomplete="off" name="q"><!--
    --><button type="submit" style="background-color: #bbaaa4">Search</i></button>
  </form>
</div>
<div class="top-nav"></div>

<!-- Carousel -->

<style>
  div.promo div.bottom div.card:hover div.card-body p.card-text {
    color: #bbaaa4;
  }
  div.product-wrapper div.main-product div.card:hover div.card-body p.card-text {
    color: #bbaaa4;
  }

</style>



       <?php include $page; ?> 
 <style>
     footer div.information div.main div.about div.sosmed a:hover {
        color: #bbaaa4;
    }
    footer div.information div.main div.item a:hover {
        color: #bbaaa4;
    }
    footer div.contact div.main div.item i{
        color: #bbaaa4;
    }
 </style>
     <footer>
        <div class="contact">
            <div class="main">
                <div class="item">
                    <i class="fa fa-map-marker-alt"></i>
                    <p><?=$vaSettings['address']?></p>
                </div>
                <div class="item">
                    <i class="fa fa-phone"></i>
                    <p><?=$vaGeneral['whatsapp']?></p>
                </div>
                <div class="item">
                    <i class="fa fa-envelope"></i>
                    <p><?=$vaGeneral['email_contact']?></p>
                </div>
            </div>
        </div>
        <div class="copyright" style="background-color: #363f4d">
            <p class="mb-0">Copyright &copy; <span id="footer-cr-years"></span> BT Store. All Right Reserved.</p>
        </div>
        </footer>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="http://localhost/olshop/assets/js/jquery.countdown.min.js"></script>
    <script>

        $("i.icon-search-navbar").on('click', function(){
            $("div.search-form").slideDown('fast');
            $("div.search-form input").focus();
        })

        $("div.search-form i").on('click', function(){
            $("div.search-form").slideUp('fast');
        })

        const years = new Date().getFullYear();
        $("#footer-cr-years").text(years);

        $("#countdownPromo").countdown({
            date: "2020-10-24T01:00",
            render: function (data) {
                var el = $(this.el);
                el.empty()
                .append(
                    this.leadingZeros(data.days, 2) + " : "
                )
                .append(
                    this.leadingZeros(data.hours, 2) + " : "
                )
                .append(
                    this.leadingZeros(data.min, 2) + " : "
                )
                .append(
                    this.leadingZeros(data.sec, 2)
                );
            },
        });

        //loading screen
        $(window).ready(function(){
            $(".loading-animation-screen").fadeOut("slow");
        })

        // detail
        $("#detailBtnPlusJml").click(function(){
            var val = parseInt($(this).prev('input').val());
            $(this).prev('input').val(val + 1).change();
            return false;
        })

        $("#detailBtnMinusJml").click(function(){
            var val = parseInt($(this).next('input').val());
            if (val !== 1) {
                $(this).next('input').val(val - 1).change();
            }
            return false;
        })

    </script>
</html>
