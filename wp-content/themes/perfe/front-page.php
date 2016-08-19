<!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>

<section class="container">
  <div class="row">
    <div class="col-md-10 col-md-offset-1"><h2 class="text-center" id="parrafo-cabecera">Hacemos diseño y comunicación. Desarrollando procesos de creación heterogéneos para afrontar cada proyecto. La oficina se especializa en identidad coorporativa, editorial, visualismo y dirección creativa. Congregamos especialistas adecuados para la producción de cada trabajo. </h2> </div>
  </div>
</section>

<!-- Contenido de página de inicio -->
<section class="container" id="inicio">
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
</section>

<!-- Archivo de barra lateral por defecto -->
<?php get_sidebar(); ?>
<!-- Archivo de pié global de Wordpress -->
<?php get_footer(); ?>
