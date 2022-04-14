<?php
$cError = "" ; 

if(isset($_POST['submitlogin'])){
    $cUserName = $_POST['cUserName'];
    $cPassword = md5($_POST['cPassword']);
    $dbData = mysqli_query($db,"select * from admin where username='$cUserName'");
    if($dbRow = mysqli_fetch_array($dbData)){
        $cUserPassword = $dbRow['password'];
        if($cUserPassword == $cPassword){
            header('location: admin.php?page=home');
        }else{
            $cError = "Password Salah ....!" ;
          }
    }else{
      $cError = "Username Tidak Ditemukan .....!" ;
    }
}else{
    $cError = "" ; 
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Login Admin</title>

  <!-- Custom fonts for this template-->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">

  <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/x-icon">

</head>

<body class="bg-gradient-light">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-5 col-lg-7 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Login Admin!</h1>
                  </div>
                  <?php
                    if($cError <> ""){
                        echo "<div class='alert alert-warning'>".$cError."</div>";
                    }
                  ?>
                  <form class="user" action="" method="post">
                    <div class="form-group">
                      <label for="username">Username</label>
                      <input type="text" autocomplete="off" id="username" name="cUserName" required class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" autocomplete="off" id="password" name="cPassword" required class="form-control">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="cookie" name="cookie">
                        <label class="custom-control-label" for="cookie">Remember me</label>
                      </div>
                    </div>
                    <button type="submit" name="submitlogin" class="btn btn-block btn-info">Login</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="assets/js/sb-admin-2.min.js"></script>

</body>

</html>