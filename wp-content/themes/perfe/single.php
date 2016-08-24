
<!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>
<!-- Contenido del post -->
<section class="container-fluid">
	<div class="container">
		<?php if ( have_posts() ) : the_post(); ?>
	  <div class="contenido-post">
	    <h1><?php the_title(); ?></h1>
	    <time datatime="<?php the_time('Y-m-j'); ?>"><?php the_time('j F, Y'); ?></time>
	    <?php the_content(); ?>
	    <address>Por <?php the_author_posts_link() ?></address>
	  </div>
	<?php else : ?>
	  <p><?php _e('Ups!, esta entrada no existe.'); ?></p>
	<?php endif; ?>
	</div>
	
</section>
<!-- Archivo de barra lateral por defecto -->
<?php get_sidebar(); ?>
<!-- Archivo de pié global de Wordpress -->
<?php get_footer(); ?>
