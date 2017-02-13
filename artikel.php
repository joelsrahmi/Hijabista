<?php
error_reporting(E_ALL ^ E_NOTICE); //untuk menghilangkan report notice, terpaksa dipake karna noticenya gabisa ilang-_-
session_start();
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

    <!--<link href="style.css" rel="stylesheet">-->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="bootstrap-3.2.0/docs/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="bootstrap-3.2.0/docs/assets/js/ie10-viewport-bug-workaround.js"></script>

    <!--editor tinymce-->
    

    
  </head>

  <body>

    <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          <a class="blog-nav-item" style="font-family: 'Oleo Script', cursive;" href="index.php">Hijabista</a>
          <a class="blog-nav-item" href="news.php">News</a>
          <a class="blog-nav-item" href="inspiring.php">Inspiring People</a>
          <a class="blog-nav-item" href="tutorial.php">Tutorial</a>
        </nav>
      </div>
    </div>

    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">Hijabista</h1>
        <p class="lead blog-description">The official hijabist news portal</p>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post">
            <?php
              include('connectdb.php');

              $query_artikel = "select id_posting, judul, date, artikel, gambar from posting where id_posting=".$_GET["artikel"];

              $artikel = mysql_query($query_artikel);

              if(!$artikel)
              {
                die("could not get data : ".mysql_error());
              }

              while($row = mysql_fetch_assoc($artikel))
              {
            ?>

            <h6 class="blog-post-title"><?php echo $row["judul"]; ?></h6>
            <p class="blog-post-meta"><?php echo $row["date"]; ?></p>
            <?php
            if ($row['gambar']==null){ ?>
            <p align="justify"><?php echo $row["artikel"]; ?></p>
            <?php
            }
            if ($row['gambar']){ ?>
            <img style="max-width:550px;max-height:600px;" src="admin/temp/<?php echo $row["gambar"]; ?>" /><br/><br/>
            <p align="justify"><?php echo $row["artikel"]; ?></p>
            <?php
            }
            ?>
            
            <hr>
          </div><!-- /.blog-post -->
          <?php
            }
          ?>

           <!--KOMENTAR-->
      <div class="komentar" align="left">
        <form name="comment" method="POST" action="komentar.php">
          <table align="left" border="0" width="700">
            <tr>
              <td colspan="2" align="center"><h3><b>Silahkan Komentar</b></h3></td>
            </tr>
            <tr>
              <td width="100">&nbsp;</td>
              <td width="300"><input type="hidden" name="id_posting" id="id_posting" value="<?php echo $_GET["artikel"];?>" size="3"></td>
            </tr>
            <tr>
              <td align="right" valign="top">Email : </td>
              <td align="left" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="username" id="username" ></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right" valign="top">Komentar : </td>
              <td align="left" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="komentar" cols="40" rows="5"></textarea></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td align="left" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="komen" id="komen" value="Submit"><hr></td>
            </tr>
          </table>
        </form>
      </div>
      

      <?php
      $query_sub_komen  = "select username, tgl, komentar from komentar where id_posting='".$_GET["artikel"]."' order by tgl desc";

      $submit_komen     = mysql_query($query_sub_komen);

      if(!$submit_komen)
      {
        die("tidak dapat menemukan data : ".mysql_error());
      }  
      while($row = mysql_fetch_assoc($submit_komen))
      {
      ?>

      <div class="listkomen" >
        <h4><?php echo $row["username"];?></h4>
        <p><?php echo $row["tgl"]; ?></p>
        <p class="mamen"><?php echo $row["komentar"]; ?></p>
      </div>
      <hr>

      <?php
    }
    ?>

<!--END OF KOMENTAR-->

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
