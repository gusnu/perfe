
<?php
/*
Template Name: nosotros
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
      <div class="col-md-10 col-md-offset-1 qs">
        <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/n_03.jpg">
        <p>
          Perfe es una agencia boutique de diseño gráfico, con sede en Santiago de Chile. Nos basamos en una fuerte pasión por la comunicación, el proceso de diseño y la comprensión constante del desarrollo de experiencias.
        </p>

        <p>
          La oficina fue fundada por Camilo Huinca y Francisco Meneses en 2014. Desde el principio ha tenido como principal motivación el desarrollo de proyectos en los cuales se pueda complementar el desafio comunicativo, con la dirección creativa.
        </p>

        <p>
          Trabajamos con empresas, organizaciones e individuos en todos los sectores culturales, públicos y privados, tanto a nivel local como internacional. Buscamos potenciar nuestra producción, y refinar los resultados; congregando especialistas oportunos para la ejecución de cada proyecto.
        </p>

        <p>
          Somos independientes, por lo que no nos atamos a ninguna filosofía, tomamos cada trabajo individualmente y lo desarrollamos a mano. Investigamos, experimentamos y exploramos las distintas soluciones. Este enfoque nos mantiene ágiles y expectantes.
        </p>

        <p>
          Nos especializamos en la producción y desarrollo de identidades coorporativas, marcas, editorial, visualísmo, diseño de productos y motion graphics.
        </p>

   </div>
    </div>
  </div>
</section>


<section class="container-fluid" id="camilo">
  <div class="container">
    <h1>Camilo</h1>
  </div>
</section>

<section class="container-fluid" id="datos-camilo">
  <div class="container">
    <div class="row">
      <div class="col-md-4 redes text-right">
        <h4>Instagram</h4>
        <a href="http://www.Instagram.com/onlyjoke">@onlyjoke</a>
        <br />  <br />
        <h4>Twitter</h4>
        <a href="http://twitter.com/camilohuinca">@camilohiunca</a>
      </div>

      <div class="col-md-8">
        <p>
          Diseñador gráfico de DuocUC (2012), especializado en ilustración, desarrollo de marca y dirección de arte. Su trabajo como artista es mas conocido bajo el nombre de <a href="http://www.camilohuinca.com" target="_blank">OnlyJoke</a>, ha sido publicado y mencionado por variados medios relacionados a la disciplina. Junto con su estilo ha logrado desarrollar proyectos con grandes marcas de nivel local e internacional.
        </p>
      </div>

    </div>
  </div>
</section>

<section class="container-fluid" id="francisco">
  <div class="container">
    <h1>Francisco</h1>
  </div>
</section>

<section class="container-fliud" id="datos-francisco">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-xs-4 redes text-right">
        <h4>Instagram</h4>
        <a href="http://www.Instagram.com/dmnc1">@dmnc1</a>
        <br />  <br />
        <h4>Twitter</h4>
        <a href="http://twitter.com/dmnc1">@dmnc1</a>
      </div>

      <div class="col-md-8 col-xs-8">
        <p>
        Diseñador gráfico de Arcos (2011), especializado en visualísmo, 3D y dirección de arte. Su trabajo como artista es mas conocido bajo el nombre de <a href="http://www.dmncnation.com" target="_blank">DMNC</a>, ha tenido importantes participaciones en la producción y dirección de diversos liveshows en la escena musical local.
        </p>
      </div>
    </div>
  </div>
</section>

<section class="container-fluid" id="f-estudio">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/n_07.jpg" class="img-responsive">
      </div>
      <div class="col-md-6">
          <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/n_09.jpg" class="img-responsive">
      </div>
    </div>
  </div>
</section>

<section class="container-fluid clientes">
  <div class="container">
    <div class="row">
      <h2>Algunos de nuestros clientes</h2>
      <div class="col-md-3 col-xs-6">
        <ul>
          <li>
            Nike
          </li>
          <li>
            Jack Daniel's
          </li>
          <li>
            Adidas
          </li>
          <li>
            CCPLM
          </li>
          <li>
            Gepe
          </li>
          <li>
            Converse
          </li>

        </ul>
      </div>
      <div class="col-md-3 col-xs-6">
        <ul>
          <li>
            Chaco
          </li>
          <li>
            Puma
            </li>
          <li>
            SCD
          </li>
          <li>
            Unilever
          </li>
          <li>
            Cineteca Nacional
          </li>
          <li>
            Samsung
          </li>

        </ul>

      </div>
      <div class="col-md-3 col-xs-6">
        <ul>
          <li>
            Nano Stern
          </li>
          <li>
            Lollapalooza
            </li>
          <li>
            FAXXI
          </li>
          <li>
            Sud Producciones
          </li>
          <li>

              TVN
        </li>
          <li>
            TVN
          </li>

        </ul>

      </div>
      <div class="col-md-3 col-xs-6">
        <ul>
          <li>
            Quemasucabeza
          </li>
          <li>
            Canal 13
          </li>
          <li>
            Nickelodeon
          </li>
          <li>
            NatGeo
          </li>
          <li>
            Falabella
          </li>
          <li>
            TNT
          </li>

        </ul>

      </div>

    </div>

  </div>

</section>

<section class="container-fluid foto">
</section>

<section class="container-fluid mail">
  <div class="container">
    <div class="col-md-8 col-md-offset-2">
      <p>
        Todo proyecto parte con una buena conversación. Para saber cómo podemos ayudar, llámanos a (+569) 6509 1444 / (+569) 6168 7311 o escribenos a <b>hola@estudioperfe.com</b>
      </p>
    </div>

  </div>
</section>


<!-- Archivo de barra lateral por defecto -->
<?php get_sidebar(); ?>
<!-- Archivo de pié global de Wordpress -->

