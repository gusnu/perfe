<?php
/*
Template Name: home
*/
?>


<!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>

<section class="container intro">
  <div class="row">
    <div class="col-md-10 col-md-offset-1"><h2 class="text-center" id="parrafo-cabecera">Hacemos diseño y comunicación. Desarrollando procesos de creación heterogéneos para afrontar cada proyecto. La oficina se especializa en identidad coorporativa, editorial, visualismo y dirección creativa. Congregamos especialistas adecuados para la producción de cada trabajo. </h2> </div>
  </div>
</section>


<?php
 global $post;
 $myposts = get_posts('numberposts=5&category=1');
 foreach($myposts as $post) :
 ?>
 <?php the_title(); ?>
 <?php the_content(); ?>
 <?php endforeach; ?>

<!-- Contenido de página de inicio -->
<section class="container-fluid">
  <div class="container">
    <div class="row">
     <div class="col-md-12 work">
          <div class="col-md-10 col-md-offset-1 col-xs-12 full">
            <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/work_03.jpg" class="img-responsive img-full">
            <div class="titulo"><h2>CCPLM</h2></div>
            <div class="sub"><h3>6º Festival de la Cineteca Nacional</h3></div>
            <div class="ano"><p>Año<br><span>2016</span></p></div>
          </div>
        </div>
         
      
        <div class="col-md-10 col-md-offset-1">
          <div class="col-md-6 col-xs-12 mitad">
            <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/work_06.jpg" class="img-responsive img-full">
            <div class="titulo"><h2>CCPLM</h2></div>
              <div class="sub"><h3>6º Festival de la Cineteca Nacional</h3></div>
              <div class="ano"><p>Año<br><span>2016</span></p></div>
          </div>
        <div class="col-md-6 col-xs-12 mitad">
          <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/work_08.jpg" class="img-responsive img-full">
          <div class="titulo"><h2>CCPLM</h2></div>
            <div class="sub"><h3>6º Festival de la Cineteca Nacional</h3></div>
            <div class="ano"><p>Año<br><span>2016</span></p></div>
        </div>
        </div>

        <div class="col-md-12">
          <div class="col-md-10 col-md-offset-1 col-xs-12 full">
            <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/PERFE-WEB-Home_03.png" class="img-responsive img-full">
            <div class="titulo"><h2>CCPLM</h2></div>
            <div class="sub"><h3>6º Festival de la Cineteca Nacional</h3></div>
            <div class="ano"><p>Año<br><span>2016</span></p></div>
          </div>
        </div>
     
      
        <div class="col-md-10 col-md-offset-1">
          <div class="col-md-6 col-xs-12 mitad">
            <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/PERFE-WEB-Home_06.png" class="img-responsive img-full">
            <div class="titulo"><h2>CCPLM</h2></div>
              <div class="sub"><h3>6º Festival de la Cineteca Nacional</h3></div>
              <div class="ano"><p>Año<br><span>2016</span></p></div>
          </div>
          

        <div class="col-md-6 col-xs-12 mitad">
          <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/PERFE-WEB-Home_08.png" class="img-responsive img-full">
          <div class="titulo"><h2>CCPLM</h2></div>
            <div class="sub"><h3>6º Festival de la Cineteca Nacional</h3></div>
            <div class="ano"><p>Año<br><span>2016</span></p></div>
        </div>
        </div>
       

          <div class="col-md-12">
          <div class="col-md-10 col-md-offset-1 col-xs-12 full">
            <img src="<?php bloginfo('url');?>/wp-content/themes/perfe/images/PERFE-WEB-Home_12.png" class="img-responsive img-full">
            <div class="titulo"><h2>CCPLM</h2></div>
            <div class="sub"><h3>6º Festival de la Cineteca Nacional</h3></div>
            <div class="ano"><p>Año<br><span>2016</span></p></div>
          </div>
        </div>

      </div>

   
  </div>
</section>


<!-- <section class="container" id="inicio">
  <div class="row">
    <div class="col-md-10 col-md-offset-1">

        <?php
        // WP_Query arguments
        $args = array (
          'pagename'               => 'proyectos',
        );

        // The Query
        $query = new WP_Query( $args );

        if ( $query->have_posts() ) :
        while ( $query->have_posts() ) : $query->the_post();
          the_content();
        endwhile;
        endif;

         ?>
    </div>
  </div>
</section> -->

<!-- Archivo de barra lateral por defecto -->
<?php get_sidebar(); ?>
<!-- Archivo de pié global de Wordpress -->
<?php get_footer(); ?>
