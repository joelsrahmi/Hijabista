<?php
error_reporting(E_ALL ^ E_NOTICE); //untuk menghilangkan report notice, terpaksa dipake karna noticenya gabisa ilang-_-
session_start();

include('connectdb.php');

$query_news = "select id_posting, date, judul, kriteria, artikel, gambar from posting order by id_posting desc";

$news = mysql_query($query_news);

if(!$news)
{
  die("Tidak bisa mengambil data: ".mysql_error()."<br>");
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Hijabista</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
   <link href='https://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
    <!--<link href="style.css" rel="stylesheet">-->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="bootstrap-3.2.0/docs/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="bootstrap-3.2.0/docs/assets/js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          <a class="blog-nav-item" style="font-family: 'Oleo Script', cursive;" href="index.php">Hijabista</a>
          <a class="blog-nav-item active" href="#">News</a>
          <a class="blog-nav-item" href="inspiring.php">Inspiring People</a>
          <a class="blog-nav-item" href="tutorial.php">Tutorial</a>
        </nav>
      </div>
    </div>

    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">Hijabista</h1>
        <p class="lead blog-description" >The official hijabist news portal</p>
      </div>

      <div class="row">

        <div class="col-sm-7 blog-main">

          <div class="blog-post">
            <?php
            $i = 1;
            while($row = mysql_fetch_assoc($news))
            {
              ?>
              <div class="blog-content">
                <h6 class="blog-post-title"><?php echo $row["judul"]; ?></h6>
                <p class="blog-post-meta"><?php echo $row["date"]; ?></p>
                <?php
                if ($row['gambar']==null){ ?>
                <p align="justify"><?php echo(substr($row["artikel"],0,350)); ?>...</p>
                <?php
                }
                if ($row['gambar']){ ?>
                <img style="max-width:550px;max-height:600px;" src="admin/temp/<?php echo $row["gambar"]; ?>" /><br/><br/>
                <p align="justify"><?php echo(substr($row["artikel"],0,350)); ?>...</p>
                <?php
                }
                ?>
                <a class="btn btn-primary" href="artikel.php?artikel=<?php echo $row["id_posting"]; ?>">Read More</a>
              </div>
            <?php
            $i++;
            }
            ?>
          </div><!-- /.blog-post -->
          

          <ul class="pager">
            <li><a href="#">Previous</a></li>
            <li><a href="#">Next</a></li>
          </ul>

        </div><!-- /.blog-main -->

        <div class="col-sm-4 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module">
            <blockquote class="quotes">
              <p>Berhijab <strong>bukanlah halangan</strong> wanita untuk tetap berkarya</p> <p>-Anonim</p>
            </blockquote>
          </div>
        </br></br></br></br></br></br></br>
          <div class="sidebar-module">
            <blockquote class="quotes">
              <p>Hijab includes the way a person walk, talks, looks and thinks, All of it should be Done modestly and applies to both Men and Women</p> <p>-Anonim</p>
            </blockquote>
          </div>
        </div><!-- /.blog-sidebar -->


      </div><!-- /.row -->

    </div><!-- /.container -->

    <div class="blog-footer">
      <p>&copy; 2016 JoelNoem's, Inc.</p>
        <a href="#">Back to top</a>
      </p>
    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="bootstrap-3.2.0/dist/js/bootstrap.min.js"></script>
    <script src="bootstrap-3.2.0/assets/js/docs.min.js"></script>
  </body>
</html>
