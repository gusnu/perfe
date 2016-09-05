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
 


<body>

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




