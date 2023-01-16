<?php
error_reporting(0);
include('includes/config.php'); 
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Student Result Management System</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="bootstrap5\css\bootstrap.min.css">
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="index.php"><img src="images/logoa.png">SRMS-(Student Result Management System) By Ankit Shukla (20MCA008)</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link active" href="Cantact.php">Contact us</a></li>
                        <li class="nav-item"><a class="nav-link active" href="find-result.php">Students</a></li>
                        <li class="nav-item"><a class="nav-link active" href="admin-login.php">Admin</a></li>
                    </ul>
                </div>
            </div>
        </nav>
         <div id="carouselExampleIndicators" class="carousel slide h-50 w-100" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="an\an8.jpg" class="d-block w-100 " alt="...">
    </div>
    <div class="carousel-item">
      <img src="an\an2.jpg" class="d-block w-100 " alt="...">
    </div>
    <div class="carousel-item">
      <img src="an\an3.jpg" class="d-block w-100 " alt="...">
    </div>
    <div class="carousel-item">
      <img src="an\an5.jpg" class="d-block w-100 " alt="...">
    </div>
    <div class="carousel-item">
      <img src="an\an6.jpg" class="d-block w-100 " alt="...">
    </div>
    <div class="carousel-item">
      <img src="an\an7.jpg" class="d-block w-100 " alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>


        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2><u>*Notice Board*</u></h2>
                        <hr color="#000" />
                        <marquee direction="up"  onmouseover="this.stop();" onmouseout="this.start();">
                   <ul>
 <?php $sql = "SELECT * from tblnotice";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{   ?>                      
<li><a href="notice-details.php?nid=<?php echo htmlentities($result->id);?>" target="_blank"><?php echo htmlentities($result->noticeTitle);?></li>
<?php }} ?>

                   </ul>
               </marquee>

                    </div>
                </div>
            </div>
        </section>


        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; SRMS Ankit Shukla <?php echo date('Y');?></p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="jquery-3.5.1.min.js"></script>
        <script src="popper.min.js"></script>
        <script src="bootstrap5\js\bootstrap.min.js"></script>
    </body>
</html>
