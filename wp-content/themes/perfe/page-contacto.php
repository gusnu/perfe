<?php
/*
Template Name: contacto
*/
?>

<!DOCTYPE html>
<html lang="<?php bloginfo('language'); ?>">
  <head>
  <meta charset="utf-8">
  <meta content="ie=edge" http-equiv="x-ua-compatible">
    <meta charset="<?php bloginfo('charset'); ?>">
    <title><?php bloginfo('Estudio Perfe'); ?></title>
<meta content="width=device-width, initial-scale=1" name="viewport">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url') ?>">
    <?php wp_head(); ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </head>
  <?php wp_head(”) ?> 


<body>
<?php wp_footer(''); ?>

<header>
          <!-- <h1><?php bloginfo('name'); ?></h1> -->
<nav class="navbar ">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://perfe-wp/"><?php bloginfo('name'); ?></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
          <?php wp_nav_menu( array( 'theme_location' => 'navegation' ) ); ?>
  
<!-- <li data-toggle="modal" data-target="#myModal" style="float: right; font-size: 15px; text-transform: uppercase; margin-top: 29px;font-family:Apercu;">Archivo</li> -->

      </ul>

    </div><!-- /.navbar-collapse -->

  </div><!-- /.container-fluid -->
</nav>
</header>







<section class="container-fluid" id="quienes-1">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-md-offset-2 col-sm-12 qs nos">
        <h2>
          El desarrollo de cualquier proyecto es la conclusión de un tratamiento. El proceso debe desbordar empatía con su origen y lucidez en el objetivo.
        </h2>
      </div>
    </div>
  </div>
</section>

<section class="container-fluid" id="f-contacto">
  <div class="container">
  </div>
</section>

<section class="container-fluid" id="azul">
  <div class="container">
    <div class="row">
  
        <div class="col-md-10 col-md-offset-1">
          <div class="row">
            
            <div class="col-md-4 col-xs-12">
            <b>Santiago de Chile</b><br>
            Merced #293<br>
            Oficina 301<br>
            Barrio Lastarria<br>
            Stgo - RM
          </div>

          <div class="col-md-4 col-xs-12">
            <b>Mail</b><br>
            hola@estudioperfe.com<br>
            Tel:<br>
            +569.6509 1444<br>
            +569.6168 731<br>
          </div>

          <div class="col-md-4 col-xs-12">
            <a href="#">Facebook</a> <br>
             <a href="#">Twitter</a> <br>
            <a href="#">Behance </a> <br>
             <a href="#">Tumblr</a> <br>
          </div>

          </div>

        
      </div>
  <div class="container">
    <div class="col-md-12 mapa">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3329.4719162306783!2d-70.64296198428575!3d-33.43700960420977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c5996db1b88b%3A0x7fcdde35fa5b949c!2sPerfe+Estudio!5e0!3m2!1ses!2scl!4v1473089980207" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
</div>


    </div>
  </div>
</section>

<!-- Archivo de barra lateral por defecto -->
<?php get_sidebar(); ?>
<!-- Archivo de pié global de Wordpress -->

