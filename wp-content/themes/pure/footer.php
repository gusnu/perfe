</div><!-- .wrapper -->

<footer>
    <div class="footer_line container">
        <div class="copyright">
            <?php gt3_the_theme_option("copyright");
            if (is_front_page()) {echo '<br><a href="http://www.gt3themes.com/wordpress/pure-free-portfolio-wordpress-theme/" target="_blank">Free WordPress Theme</a> by GT3themes.com';}
            ?>
        </div>
        <?php echo gt3_show_social_icons($GLOBALS['available_socials']); ?>
        <div class="clear"></div>
    </div>
</footer>

<?php gt3_the_pb_custom_bg_and_color(gt3_get_theme_pagebuilder(@get_the_ID())); gt3_the_theme_option("code_before_body");
wp_footer(); ?>
</div>
</body>
</html>