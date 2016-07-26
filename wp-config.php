<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'perfe');

/** MySQL database username */
define('DB_USER', 'perfe');

/** MySQL database password */
define('DB_PASSWORD', 'perfe');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'JP3F&*(~R[<dT_3OL96i&I|A_RpDwab!,Sj>}A1Ky&/qJRUjzy2Wz<a5o`,87yA7');
define('SECURE_AUTH_KEY',  'L1j)ZSz9`mJ1D+>.=0%ba&emK&+#h|Gd+nl7VtKUNfH^X$Cv`QcC/:l{e/!nUq2W');
define('LOGGED_IN_KEY',    'WtC@e2_xdQi-hx>&>!,oFZBcnRqJ8l=_V8(|nkfG`I3nz!Wti(&On~KQ1q2<@wRw');
define('NONCE_KEY',        '?/mY%F>P7P]?xpdVG[~]z7@aYUa}+z<DRF=^J6]6uyg,SOrha/-]O,EDcjWx0O8W');
define('AUTH_SALT',        'srK:ao5/-*Wr.~?+6G}!V)s(qln;.(B.wC_0UTEUY!NuRx}h, fNk3:f]6U]_~PZ');
define('SECURE_AUTH_SALT', 't/:?v9f~;E)6>]ZW6dd-VJ0p*e@ULL$ertnfJUz5 iXR`QmTs?#-X0W^YQOH]df-');
define('LOGGED_IN_SALT',   'NJN;He,VxkV(G:{./_P(^jduW/n.T_C{]%BW0c+ZF<A]uo^H&!Z-N4+:MVC>N ag');
define('NONCE_SALT',       '{3:}-LyFYKEC=N$%iRLh~^Op!O/7L#f``z4`ktoXT=3.kJ<Sh=+~`zZs-Q}!V#k#');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
