<!-- Archivo de cabecera global de Wordpress -->
<?php get_header(); ?>
<!-- Listado de posts -->
<?php if ( have_posts() ) : ?>


  <section class="container-fluid listado">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <br>
        <?php the_post_thumbnail( 'single-post-thumbnail' ); ?>
          <?php while ( have_posts() ) : the_post(); ?>
          <article>
            <header>
              <h1><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
              <time datatime="<?php the_time('Y-m-j'); ?>"><?php the_time('j F, Y'); ?></time>
            </header>
            <?php the_excerpt(); ?>
            <footer>
                <address>Por <?php the_author_posts_link() ?></address>
            </footer>
          </article>
          <?php endwhile; ?>
   
          <div class="pagination">
            <span class="in-left"><?php next_posts_link('« Entradas antiguas'); ?></span>
            <span class="in-right"><?php previous_posts_link('Entradas más recientes »'); ?></span>
          </div>
        </div>
      </div>
     </div>
  </section>

<?php else : ?>
  <p><?php _e('Ups!, no hay entradas.'); ?></p>
<?php endif; ?>
<!-- Archivo de barra lateral por defecto -->
<?php get_sidebar(); ?>
<!-- Archivo de pié global de Wordpress -->
<?php get_footer(); ?>
