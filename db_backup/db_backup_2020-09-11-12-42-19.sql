#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hc4r4nmnv7ku4lubuag9svvigmbsn189', '127.0.0.1', 1599748769, '__ci_last_regenerate|i:1599748769;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h04f9tvl6cbqsfh1jccknm88lvc97fln', '127.0.0.1', 1599744828, '__ci_last_regenerate|i:1599744828;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"25\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fls2c7jtiv7dlieo6sk955idbghvlefm', '127.0.0.1', 1599745422, '__ci_last_regenerate|i:1599745422;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"25\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ok6mrj8k7pps3npmkoddvta80euj3t26', '127.0.0.1', 1599746463, '__ci_last_regenerate|i:1599746463;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"3\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('72063bhe4mbls18v56s6rtsbvn05vnne', '127.0.0.1', 1599747816, '__ci_last_regenerate|i:1599747816;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dbmn2tb556v2lg157ojupfqhvcfepitl', '127.0.0.1', 1599748119, '__ci_last_regenerate|i:1599748119;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"5\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g5j71r7gvuaal2hcpcvoq3bravt7csa0', '127.0.0.1', 1599748521, '__ci_last_regenerate|i:1599748521;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"16\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3qhevmb4qblpfl4sr603ibdqhc8meobd', '127.0.0.1', 1599749356, '__ci_last_regenerate|i:1599749356;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cb6kqddn035k8unkhd03k81upijngqgs', '127.0.0.1', 1599748773, '__ci_last_regenerate|i:1599748769;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8k5dg46qld31gqtteo8fel077nlj3mgd', '127.0.0.1', 1599749770, '__ci_last_regenerate|i:1599749770;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q0161kah79prpi61fopn1vdfotts87an', '127.0.0.1', 1599750152, '__ci_last_regenerate|i:1599750152;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m4seiki3972oi0i0rgr6methnmmje8gl', '127.0.0.1', 1599750665, '__ci_last_regenerate|i:1599750665;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('k3e0smqdfofjshsjldot58eqtt0krb3p', '127.0.0.1', 1599751131, '__ci_last_regenerate|i:1599751131;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('blmfl37litn0k1va2d0oio2l4ijb3lco', '127.0.0.1', 1599751574, '__ci_last_regenerate|i:1599751574;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2m9sumit3vg7salrj7rehlt2vsa49kcd', '127.0.0.1', 1599751929, '__ci_last_regenerate|i:1599751929;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mbnicjc774epq2hm6mq2thcvgkl8qgl7', '127.0.0.1', 1599752230, '__ci_last_regenerate|i:1599752230;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"16\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('93n4jq06fe9hhmi0cl1vn6escrminkoa', '127.0.0.1', 1599752614, '__ci_last_regenerate|i:1599752614;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"16\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p5h81125fesr4haktj8e3dgf5ur82rqv', '127.0.0.1', 1599753039, '__ci_last_regenerate|i:1599753039;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"16\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dj7cjclcnn0jl6a30qks009i8sc94vl2', '127.0.0.1', 1599753355, '__ci_last_regenerate|i:1599753355;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"16\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0689l3eono65lhoniucbg5nm5sk0mtgu', '127.0.0.1', 1599753660, '__ci_last_regenerate|i:1599753660;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"24\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mi9li7jgldkpo2qt5bcbkkje7fpeu2gb', '127.0.0.1', 1599754040, '__ci_last_regenerate|i:1599754040;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"39\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mc4rbho5606jp8g94r931k93ktgl4le2', '127.0.0.1', 1599754392, '__ci_last_regenerate|i:1599754392;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"39\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bun06sqv42dgt52cpcerscgvl4bdsh0b', '127.0.0.1', 1599754711, '__ci_last_regenerate|i:1599754711;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"39\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iokns3g55gf1pk9au4id7f1r5r80imi0', '127.0.0.1', 1599755013, '__ci_last_regenerate|i:1599755013;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"39\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vumpd7beqd45qrqu6i1ro1hluqjqbipa', '127.0.0.1', 1599755048, '__ci_last_regenerate|i:1599755013;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"39\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qqgosbvgbq9u00ikoktfoig0muvi7g75', '127.0.0.1', 1599804835, '__ci_last_regenerate|i:1599804835;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qfgad91msagei8d5bek90nkbt9q9dtt4', '127.0.0.1', 1599805302, '__ci_last_regenerate|i:1599805302;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lbejvuce9f7a5ssvmoi7q1kacq5gvnjq', '127.0.0.1', 1599805803, '__ci_last_regenerate|i:1599805803;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"23\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n6m3tksqi6ulj0ge7rqgmjhq2mqdjo9k', '127.0.0.1', 1599806485, '__ci_last_regenerate|i:1599806485;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"23\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gmb70kvm8iepvkhrb82sk555d7aim4vp', '127.0.0.1', 1599806533, '__ci_last_regenerate|i:1599806485;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:14:\"ghamdan alsydy\";email|s:22:\"ghamdanal421@gmail.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"23\";');


#
# TABLE STRUCTURE FOR: comments
#

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `comments_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `video_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT 1,
  `replay_for` int(10) DEFAULT 0,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT 0,
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: config
#

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (194, 'system_name', 'GHMV- Android Live TV & Movie Portal');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (195, 'site_name', 'IBRANIME');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (196, 'business_address', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (197, 'business_phone', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (198, 'contact_email', 'contact@mydomain.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (199, 'system_email', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (200, 'system_short_name', 'GHMV');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (201, 'slider_type', 'movie');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (202, 'slide_per_page', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (203, 'protocol', 'mail');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (204, 'mailpath', '/usr/bin/sendmail');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (205, 'smtp_host', 'smtp.gmail.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (206, 'smtp_user', 'email@gmail.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (207, 'smtp_pass', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (208, 'smtp_port', '465');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (209, 'smtp_crypto', 'ssl');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (210, 'comments_approval', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (211, 'movie_per_page', '72');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (212, 'purchase_code', 'bf0f8dffac5390a');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (213, 'push_notification_enable', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (214, 'onesignal_appid', 'one_signal_app_id_here');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (215, 'onesignal_api_keys', 'one_signal_api_key_here');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (216, 'mobile_apps_api_secret_key', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (217, 'cron_key', '149b8085ec3b1d9');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (218, 'db_backup', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (219, 'backup_schedule', '30');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (220, 'version', '1.2.5');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (221, 'terms', '<p><br></p>');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (222, 'total_movie_in_slider', '5');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (223, 'preroll_ads_enable', '0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (224, 'preroll_ads_video', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (225, 'admob_ads_enable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (226, 'admob_publisher_id', ' pub-xxxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (227, 'admob_app_id', 'ca-app-pub-xxxxxxxxxx~xxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (228, 'admob_banner_ads_id', 'ca-app-pub-xxxxxxxxx/xxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (229, 'admob_interstitial_ads_id', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (230, 'app_menu', 'vertical');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (231, 'app_program_guide_enable', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (232, 'app_mandatory_login', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (233, 'genre_visible', 'true');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (234, 'country_visible', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (235, 'trial_enable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (236, 'trial_period', '7');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (237, 'paypal_email', 'paypal@yourwebsite.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (238, 'currency_symbol', '$');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (239, 'stripe_publishable_key', 'pk_test_fBUK0yZBlxsTrHoQudKGVD6s00EtEapeAl');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (240, 'stripe_secret_key', 'sk_test_QgCvIIJGWMKwLeLrvROYIKAV00qsjPGf4n');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (241, 'currency', 'USD');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (256, 'program_guide_enable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (242, 'mobile_ads_enable', '0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (243, 'mobile_ads_network', 'admob');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (244, 'fan_native_ads_placement_id', 'xxxxxxxxxxxxx_xxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (245, 'fan_banner_ads_placement_id', 'xxxxxxxxxx_xxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (246, 'fan_Interstitial_ads_placement_id', 'xxxxxxxxxxx_xxxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (247, 'startapp_app_id', 'xxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (248, 'paypal_client_id', 'xxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (249, 'exchange_rate_update_by_cron', '0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (250, 'enable_ribbon', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (251, 'apk_version_code', '15');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (252, 'apk_version_name', 'v1.2.0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (253, 'apk_whats_new', 'New UI\r\nDownload option\r\nAdvanced Search\r\nSubscription');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (254, 'latest_apk_url', 'http://oxoo.spagreen.net/demo/oxoo-v114.apk');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (257, 'apk_update_is_skipable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (258, 'season_order', 'DESC');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (259, 'episode_order', 'DESC');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (260, 'video_file_order', 'ASC');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (261, 'video_source', 'video_source');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (262, 'razorpay_key_id', 'xxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (263, 'razorpay_key_secret', 'xxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (264, 'paypal_enable', 'true');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (265, 'stripe_enable', 'true');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (266, 'razorpay_enable', 'true');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (267, 'razorpay_inr_exchange_rate', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (268, 'description_meta', 'Description IBRANIME');


#
# TABLE STRUCTURE FOR: country
#

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(2) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (1, 'International', '', 'international', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (2, 'Asia', '', 'asia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (3, 'USA', '', 'usa', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (4, 'China', '', 'china', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (5, 'Japan', '', 'japan', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (6, 'Korean', '', 'korean', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (7, 'Nepal', '', 'nepal', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (8, 'Thailand', '', 'thailand', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (9, 'Tamil', '', 'tamil', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (10, 'India', '', 'india', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (11, 'France', '', 'france', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (12, 'Italy', '', 'italy', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (13, 'German', '', 'german', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (14, 'London', '', 'london', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (15, 'Canada', '', 'canada', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (16, 'Denmark', '', 'denmark', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (17, 'UK', '', 'uk', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (18, 'Hong kong', '', 'hong-kong', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (19, 'UAE', '', 'uae', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (20, 'Australia', '', 'australia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (21, 'South Korea', '', 'south-korea', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (22, 'Russia', '', 'russia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (23, ' Sweden', '', 'sweden', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (24, 'Spain', '', 'spain', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (25, 'Brazil', '', 'brazil', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (26, 'Iran', '', 'iran', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (27, 'Israel', '', 'israel', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (28, 'Indonesia', '', 'indonesia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (29, 'Philippines', '', 'philippines', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (30, ' Peru', ' Peru', 'peru', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (31, ' Canada', ' Canada', 'canada', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (32, ' Japan', ' Japan', 'japan', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (33, ' USA', ' USA', 'usa', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (34, ' Hong Kong', ' Hong Kong', 'hong-kong', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (35, ' Mexico', ' Mexico', 'mexico', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (36, ' New Zealand', ' New Zealand', 'new-zealand', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (37, ' UK', ' UK', 'uk', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (38, ' Denmark', ' Denmark', 'denmark', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (39, ' Australia', ' Australia', 'australia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (40, ' Germany', ' Germany', 'germany', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (41, ' Hungary', ' Hungary', 'hungary', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (42, ' India', ' India', 'india', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (43, 'Hungary', 'Hungary', 'hungary', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (44, ' France', ' France', 'france', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (45, ' China', ' China', 'china', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (46, 'Chile', 'Chile', 'chile', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (47, ' Argentina', ' Argentina', 'argentina', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (48, 'Egypt', 'Egypt', 'egypt', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (49, 'New Zealand', 'New Zealand', 'new-zealand', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (50, 'Croatia', 'Croatia', 'croatia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (51, ' Switzerland', ' Switzerland', 'switzerland', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (52, ' Tunisia', ' Tunisia', 'tunisia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (53, 'Belgium', 'Belgium', 'belgium', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (68, 'United States of America', 'United States of America', 'united-states-of-america', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (69, 'Bangladesh', 'Bangladesh', 'bangladesh', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (70, 'United Kingdom', 'United Kingdom', 'united-kingdom', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (71, 'Malaysia', 'Malaysia', 'malaysia', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (72, 'South Africa', 'South Africa', 'south-africa', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (73, 'Switzerland', 'Switzerland', 'switzerland', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (74, 'Germany', 'Germany', 'germany', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (75, 'Sweden', 'Sweden', 'sweden', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (76, 'Bulgaria', 'Bulgaria', 'bulgaria', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (77, 'Soviet Union', 'Soviet Union', 'soviet-union', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (78, 'Netherlands', 'Netherlands', 'netherlands', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (80, 'Malta', 'Malta', 'malta', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (81, 'Taiwan', 'Taiwan', 'taiwan', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (82, 'Argentina', 'Argentina', 'argentina', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (83, 'Iceland', 'Iceland', 'iceland', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (84, 'CA', 'CA', 'ca', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (85, 'US', 'US', 'us', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (86, 'GB', 'GB', 'gb', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (87, '', '', '', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (88, 'BE', 'BE', 'be', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (89, 'Czech Republic', 'Czech Republic', 'czech-republic', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (90, 'Slovakia', 'Slovakia', 'slovakia', 1);


#
# TABLE STRUCTURE FOR: cron
#

DROP TABLE IF EXISTS `cron`;

CREATE TABLE `cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `save_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(250) DEFAULT NULL,
  `admin_email_from` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `admin_email` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_sub` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: currency
#

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `default` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (1, 'Albania', 'Leke', 'ALL', 'Lek', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (2, 'America', 'Dollars', 'USD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (3, 'Afghanistan', 'Afghanis', 'AFN', '؋', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (4, 'Argentina', 'Pesos', 'ARS', '$', '61.399228', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (5, 'Aruba', 'Guilders', 'AWG', 'ƒ', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (6, 'Australia', 'Dollars', 'AUD', '$', '1.4882', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (8, 'Bahamas', 'Dollars', 'BSD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (9, 'Barbados', 'Dollars', 'BBD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (10, 'Belarus', 'Rubles', 'BYR', 'p.', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (11, 'Belgium', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (12, 'Beliz', 'Dollars', 'BZD', 'BZ$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (13, 'Bermuda', 'Dollars', 'BMD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (14, 'Bolivia', 'Bolivianos', 'BOB', '$b', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (16, 'Botswana', 'Pula', 'BWP', 'P', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (17, 'Bulgaria', 'Leva', 'BGN', 'лв', '1.803753', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (18, 'Brazil', 'Reais', 'BRL', 'R$', '4.330496', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', '83', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (20, 'Brunei Darussalam', 'Dollars', 'BND', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (21, 'Cambodia', 'Riels', 'KHR', '៛', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (22, 'Canada', 'Dollars', 'CAD', '$', '1.325097', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (23, 'Cayman Islands', 'Dollars', 'KYD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (24, 'Chile', 'Pesos', 'CLP', '$', '794.622928', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (25, 'China', 'Yuan Renminbi', 'CNY', '¥', '6.984162', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (26, 'Colombia', 'Pesos', 'COP', '$', '3313', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (27, 'Costa Rica', 'Colón', 'CRC', '₡', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (28, 'Croatia', 'Kuna', 'HRK', 'kn', '6.869981', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (29, 'Cuba', 'Pesos', 'CUP', '₱', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (30, 'Cyprus', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', '22.911451', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (32, 'Denmark', 'Kroner', 'DKK', 'kr', '6.890187', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', '53.507402', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (34, 'East Caribbean', 'Dollars', 'XCD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (35, 'Egypt', 'Pounds', 'EGP', '£', '15.61815', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (36, 'El Salvador', 'Colones', 'SVC', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', '83', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (38, 'Euro', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (39, 'Falkland Islands', 'Pounds', 'FKP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (40, 'Fiji', 'Dollars', 'FJD', '$', '2.195918', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (41, 'France', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (42, 'Ghana', 'Cedis', 'GHC', '¢', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (43, 'Gibraltar', 'Pounds', 'GIP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (44, 'Greece', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', '7.63804', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (46, 'Guernsey', 'Pounds', 'GGP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (47, 'Guyana', 'Dollars', 'GYD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (49, 'Honduras', 'Lempiras', 'HNL', 'L', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (50, 'Hong Kong', 'Dollars', 'HKD', '$', '7.767071', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (51, 'Hungary', 'Forint', 'HUF', 'Ft', '310.231043', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (52, 'Iceland', 'Kronur', 'ISK', 'kr', '126.858376', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (53, 'India', 'Rupees', 'INR', 'Rp', '71.40112', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', '13612.651679', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (55, 'Iran', 'Rials', 'IRR', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (56, 'Ireland', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (57, 'Isle of Man', 'Pounds', 'IMP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (58, 'Israel', 'New Shekels', 'ILS', '₪', '3.427408', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (59, 'Italy', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (60, 'Jamaica', 'Dollars', 'JMD', 'J$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (61, 'Japan', 'Yen', 'JPY', '¥', '109.814254', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (62, 'Jersey', 'Pounds', 'JEP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', '376.834123', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (64, 'Korea (North)', 'Won', 'KPW', '₩', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (65, 'Korea (South)', 'Won', 'KRW', '₩', '1183.94149', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (67, 'Laos', 'Kips', 'LAK', '₭', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (68, 'Latvia', 'Lati', 'LVL', 'Ls', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (69, 'Lebanon', 'Pounds', 'LBP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (70, 'Liberia', 'Dollars', 'LRD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', '0.980752', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (72, 'Lithuania', 'Litai', 'LTL', 'Lt', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (73, 'Luxembourg', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (74, 'Macedonia', 'Denars', 'MKD', 'ден', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (75, 'Malaysia', 'Ringgits', 'MYR', 'RM', '4.139749', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (76, 'Malta', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (77, 'Mauritius', 'Rupees', 'MUR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (78, 'Mexico', 'Pesos', 'MXN', '$', '18.585695', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (79, 'Mongolia', 'Tugriks', 'MNT', '₮', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (80, 'Mozambique', 'Meticais', 'MZN', 'MT', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (81, 'Namibia', 'Dollars', 'NAD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (82, 'Nepal', 'Rupees', 'NPR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (84, 'Netherlands', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (85, 'New Zealand', 'Dollars', 'NZD', '$', '1.553574', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (87, 'Nigeria', 'Nairas', 'NGN', '₦', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (88, 'North Korea', 'Won', 'KPW', '₩', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (89, 'Norway', 'Krone', 'NOK', 'kr', '9.253793', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (90, 'Oman', 'Rials', 'OMR', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (91, 'Pakistan', 'Rupees', 'PKR', '₨', '154.392233', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (92, 'Panama', 'Balboa', 'PAB', 'B/.', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (93, 'Paraguay', 'Guarani', 'PYG', 'Gs', '6626', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', '3.383275', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (95, 'Philippines', 'Pesos', 'PHP', 'Php', '50.525693', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (96, 'Poland', 'Zlotych', 'PLN', 'zł', '3.917289', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (97, 'Qatar', 'Rials', 'QAR', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (98, 'Romania', 'New Lei', 'RON', 'lei', '4.396745', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (99, 'Russia', 'Rubles', 'RUB', 'руб', '63.537178', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (100, 'Saint Helena', 'Pounds', 'SHP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', '3.75061', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (102, 'Serbia', 'Dinars', 'RSD', 'Дин.', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (103, 'Seychelles', 'Rupees', 'SCR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (104, 'Singapore', 'Dollars', 'SGD', '$', '1.390516', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (105, 'Slovenia', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (106, 'Solomon Islands', 'Dollars', 'SBD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (107, 'Somalia', 'Shillings', 'SOS', 'S', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (108, 'South Africa', 'Rand', 'ZAR', 'R', '14.88117', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (109, 'South Korea', 'Won', 'KRW', '₩', '1183.94149', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (110, 'Spain', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (111, 'Sri Lanka', 'Rupees', 'LKR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (112, 'Sweden', 'Kronor', 'SEK', 'kr', '9.694847', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (113, 'Switzerland', 'Francs', 'CHF', 'CHF', '0.980752', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (114, 'Suriname', 'Dollars', 'SRD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (115, 'Syria', 'Pounds', 'SYP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', '30.0056', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (117, 'Thailand', 'Baht', 'THB', '฿', '31.163295', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (119, 'Turkey', 'Lira', 'TRY', 'TL', '6.053817', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (120, 'Turkey', 'Liras', 'TRL', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (121, 'Tuvalu', 'Dollars', 'TVD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (122, 'Ukraine', 'Hryvnia', 'UAH', '₴', '24.336642', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (123, 'United Kingdom', 'Pounds', 'GBP', '£', '83', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (124, 'United States of America', 'Dollars', 'USD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (125, 'Uruguay', 'Pesos', 'UYU', '$U', '37.880896', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (126, 'Uzbekistan', 'Sums', 'UZS', 'лв', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (127, 'Vatican City', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (129, 'Vietnam', 'Dong', 'VND', '₫', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (130, 'Yemen', 'Rials', 'YER', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (132, 'Bangladesh', 'Taka', 'BDT', '৳', '83', 0, 1);


#
# TABLE STRUCTURE FOR: download_link
#

DROP TABLE IF EXISTS `download_link`;

CREATE TABLE `download_link` (
  `download_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `link_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '720p',
  `file_size` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '00MB',
  `download_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_app_download` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`download_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: episodes
#

DROP TABLE IF EXISTS `episodes`;

CREATE TABLE `episodes` (
  `episodes_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_id` int(11) DEFAULT NULL,
  `episodes_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`episodes_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `episodes` (`episodes_id`, `stream_key`, `videos_id`, `seasons_id`, `episodes_name`, `file_source`, `source_type`, `file_url`, `order`, `last_ep_added`, `date_added`) VALUES (1, 's54cdrt7mmt3', 1, 1, 'totor', 'youtube', 'link', 'https://www.barmgely.com/', 1, '0000-00-00 00:00:00', '2020-09-10 16:29:35');


#
# TABLE STRUCTURE FOR: genre
#

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(1) NOT NULL,
  `featured` int(2) DEFAULT 0,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (1, 'Action', 'Action Movie<br>', 'action', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (2, 'TV Show', 'Tv Show <br>', 'tv-show', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (3, 'Si-Fi', '', 'si-fi', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (4, 'Adventure', 'Adventure Movies<br>', 'adventure', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (5, 'Animation', 'Animation Movies<br>', 'animation', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (6, 'Biography', 'Biography Movies<br>', 'biography', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (7, 'Comedy', 'Comedy Movies<br>', 'comedy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (8, 'Crime', 'Crime Movies<br>', 'crime', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (9, 'Documentary', 'Documentary Movies<br>', 'documentary', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (10, 'Drama', '', 'drama', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (11, 'Family', 'Family<br>', 'family', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (12, 'Fantasy', 'Fantasy Movies<br>', 'fantasy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (13, 'History', '', 'history', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (14, 'Horror', 'Horror Movies<br>', 'horror', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (15, 'Music', '', 'music', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (16, 'Musical', '', 'musical', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (17, 'Mystery', '', 'mystery', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (18, 'Thriller', '', 'thriller', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (19, 'War', '', 'war', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (20, 'Western', '', 'western', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (21, 'TV Series', '', 'tv-series', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (22, 'Romance', ' Romance', 'romance', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (23, 'Adventure', ' Adventure', 'adventure', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (24, 'Thriller', ' Thriller', 'thriller', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (25, 'Drama', ' Drama', 'drama', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (26, 'Fantasy', ' Fantasy', 'fantasy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (27, 'Sci-Fi', ' Sci-Fi', 'sci-fi', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (28, 'Comedy', ' Comedy', 'comedy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (29, 'Family', ' Family', 'family', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (30, 'Action', ' Action', 'action', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (31, 'Short', 'Short', 'short', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (32, 'Music', ' Music', 'music', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (33, 'History', ' History', 'history', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (34, 'Crime', ' Crime', 'crime', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (35, 'Western', ' Western', 'western', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (36, 'Sport', ' Sport', 'sport', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (37, 'Short', ' Short', 'short', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (38, 'Mystery', ' Mystery', 'mystery', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (39, 'Romance', 'Romance', 'romance', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (40, 'Action & Adventure', 'Action & Adventure', 'action-adventure', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (41, 'Sci-Fi & Fantasy', 'Sci-Fi & Fantasy', 'sci-fi-fantasy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (42, 'Science Fiction', 'Science Fiction', 'science-fiction', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (44, 'TV Movie', 'TV Movie', 'tv-movie', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (45, 'News', 'News', 'news', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (46, 'Reality', 'Reality', 'reality', 1, 0);


#
# TABLE STRUCTURE FOR: keys
#

DROP TABLE IF EXISTS `keys`;

CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT 'System',
  `key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `keys` (`id`, `label`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES (1, 'Admin', 'd78e1ea2e9362fe', 1, 0, 0, NULL, 1584340674);


#
# TABLE STRUCTURE FOR: languages_iso
#

DROP TABLE IF EXISTS `languages_iso`;

CREATE TABLE `languages_iso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(49) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (1, 'English', 'en');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (2, 'Afar', 'aa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (3, 'Abkhazian', 'ab');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (4, 'Afrikaans', 'af');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (5, 'Amharic', 'am');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (6, 'Arabic', 'ar');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (7, 'Assamese', 'as');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (8, 'Aymara', 'ay');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (9, 'Azerbaijani', 'az');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (10, 'Bashkir', 'ba');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (11, 'Belarusian', 'be');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (12, 'Bulgarian', 'bg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (13, 'Bihari', 'bh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (14, 'Bislama', 'bi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (15, 'Bangla', 'bn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (16, 'Tibetan', 'bo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (17, 'Breton', 'br');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (18, 'Catalan', 'ca');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (19, 'Corsican', 'co');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (20, 'Czech', 'cs');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (21, 'Welsh', 'cy');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (22, 'Danish', 'da');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (23, 'German', 'de');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (24, 'Bhutani', 'dz');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (25, 'Greek', 'el');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (26, 'Esperanto', 'eo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (27, 'Spanish', 'es');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (28, 'Estonian', 'et');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (29, 'Basque', 'eu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (30, 'Persian', 'fa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (31, 'Finnish', 'fi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (32, 'Fiji', 'fj');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (33, 'Faeroese', 'fo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (34, 'French', 'fr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (35, 'Frisian', 'fy');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (36, 'Irish', 'ga');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (37, 'Scots/Gaelic', 'gd');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (38, 'Galician', 'gl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (39, 'Guarani', 'gn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (40, 'Gujarati', 'gu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (41, 'Hausa', 'ha');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (42, 'Hindi', 'hi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (43, 'Croatian', 'hr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (44, 'Hungarian', 'hu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (45, 'Armenian', 'hy');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (46, 'Interlingua', 'ia');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (47, 'Interlingue', 'ie');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (48, 'Inupiak', 'ik');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (49, 'Indonesian', 'in');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (50, 'Icelandic', 'is');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (51, 'Italian', 'it');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (52, 'Hebrew', 'iw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (53, 'Japanese', 'ja');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (54, 'Yiddish', 'ji');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (55, 'Javanese', 'jw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (56, 'Georgian', 'ka');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (57, 'Kazakh', 'kk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (58, 'Greenlandic', 'kl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (59, 'Cambodian', 'km');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (60, 'Kannada', 'kn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (61, 'Korean', 'ko');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (62, 'Kashmiri', 'ks');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (63, 'Kurdish', 'ku');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (64, 'Kirghiz', 'ky');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (65, 'Latin', 'la');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (66, 'Lingala', 'ln');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (67, 'Laothian', 'lo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (68, 'Lithuanian', 'lt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (69, 'Latvian/Lettish', 'lv');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (70, 'Malagasy', 'mg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (71, 'Maori', 'mi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (72, 'Macedonian', 'mk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (73, 'Malayalam', 'ml');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (74, 'Mongolian', 'mn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (75, 'Moldavian', 'mo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (76, 'Marathi', 'mr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (77, 'Malay', 'ms');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (78, 'Maltese', 'mt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (79, 'Burmese', 'my');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (80, 'Nauru', 'na');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (81, 'Nepali', 'ne');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (82, 'Dutch', 'nl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (83, 'Norwegian', 'no');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (84, 'Occitan', 'oc');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (85, '(Afan)/Oromoor/Oriya', 'om');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (86, 'Punjabi', 'pa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (87, 'Polish', 'pl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (88, 'Pashto/Pushto', 'ps');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (89, 'Portuguese', 'pt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (90, 'Quechua', 'qu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (91, 'Rhaeto-Romance', 'rm');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (92, 'Kirundi', 'rn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (93, 'Romanian', 'ro');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (94, 'Russian', 'ru');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (95, 'Kinyarwanda', 'rw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (96, 'Sanskrit', 'sa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (97, 'Sindhi', 'sd');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (98, 'Sangro', 'sg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (99, 'Serbo-Croatian', 'sh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (100, 'Singhalese', 'si');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (101, 'Slovak', 'sk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (102, 'Slovenian', 'sl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (103, 'Samoan', 'sm');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (104, 'Shona', 'sn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (105, 'Somali', 'so');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (106, 'Albanian', 'sq');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (107, 'Serbian', 'sr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (108, 'Siswati', 'ss');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (109, 'Sesotho', 'st');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (110, 'Sundanese', 'su');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (111, 'Swedish', 'sv');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (112, 'Swahili', 'sw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (113, 'Tamil', 'ta');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (114, 'Telugu', 'te');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (115, 'Tajik', 'tg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (116, 'Thai', 'th');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (117, 'Tigrinya', 'ti');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (118, 'Turkmen', 'tk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (119, 'Tagalog', 'tl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (120, 'Setswana', 'tn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (121, 'Tonga', 'to');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (122, 'Turkish', 'tr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (123, 'Tsonga', 'ts');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (124, 'Tatar', 'tt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (125, 'Twi', 'tw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (126, 'Ukrainian', 'uk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (127, 'Urdu', 'ur');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (128, 'Uzbek', 'uz');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (129, 'Vietnamese', 'vi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (130, 'Volapuk', 'vo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (131, 'Wolof', 'wo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (132, 'Xhosa', 'xh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (133, 'Yoruba', 'yo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (134, 'Chinese', 'zh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (135, 'Zulu', 'zu');


#
# TABLE STRUCTURE FOR: live_tv
#

DROP TABLE IF EXISTS `live_tv`;

CREATE TABLE `live_tv` (
  `live_tv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tv_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_id` int(50) DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT 'en',
  `stream_from` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_url` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `poster` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thumbnail` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `focus_keyword` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `featured` int(2) DEFAULT 1,
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `tags` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`live_tv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `live_tv` (`live_tv_id`, `tv_name`, `seo_title`, `live_tv_category_id`, `slug`, `language`, `stream_from`, `stream_label`, `stream_url`, `poster`, `thumbnail`, `focus_keyword`, `meta_description`, `featured`, `is_paid`, `tags`, `description`, `publish`) VALUES (1, 'gham TV', NULL, 1, 'gham-tv', 'en', 'hls', 'HD', 'Stream URL sfsdgdfg', NULL, NULL, NULL, NULL, 1, 0, NULL, '<p>sdjdkj</p>', 1);


#
# TABLE STRUCTURE FOR: live_tv_category
#

DROP TABLE IF EXISTS `live_tv_category`;

CREATE TABLE `live_tv_category` (
  `live_tv_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_category` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `slug` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`live_tv_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`, `slug`) VALUES (1, 'Sports', 'All Sport TV Channel goes here', 1, NULL);
INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`, `slug`) VALUES (3, 'Bontl', 'bomtl gham', 1, NULL);
INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`, `slug`) VALUES (4, 'sbas go', 'hpd', 1, NULL);


#
# TABLE STRUCTURE FOR: live_tv_program_guide
#

DROP TABLE IF EXISTS `live_tv_program_guide`;

CREATE TABLE `live_tv_program_guide` (
  `live_tv_program_guide_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_id` int(50) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` enum('onaired','upcoming') COLLATE utf8mb4_unicode_520_ci DEFAULT 'upcoming',
  `status` int(50) NOT NULL DEFAULT 1,
  PRIMARY KEY (`live_tv_program_guide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: live_tv_url
#

DROP TABLE IF EXISTS `live_tv_url`;

CREATE TABLE `live_tv_url` (
  `live_tv_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_id` int(11) DEFAULT NULL,
  `url_for` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`live_tv_url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (1, '8antwpurc8hy', 1, 'opt1', NULL, 'SD', 'SD', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (2, 'oaopexuauokd', 1, 'opt2', NULL, 'LQ', 'LQ', '');


#
# TABLE STRUCTURE FOR: logs
#

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: plan
#

DROP TABLE IF EXISTS `plan`;

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `day` int(50) DEFAULT 0,
  `screens` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES (1, 'Basic', 7, NULL, '2.50', 1);
INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES (2, 'Starter', 30, NULL, '5.00', 1);
INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES (3, 'Professional ', 90, NULL, '10.00', 1);


#
# TABLE STRUCTURE FOR: quality
#

DROP TABLE IF EXISTS `quality`;

CREATE TABLE `quality` (
  `quality_id` int(10) NOT NULL AUTO_INCREMENT,
  `quality` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(5) DEFAULT 1,
  PRIMARY KEY (`quality_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (1, '4K', 'High Defination', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (2, 'HD', 'Sandard Defination', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (3, 'SD', 'Ultra High Defination', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (4, 'CAM', 'Web Camera Video', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (7, 'LQ', 'Low Quality', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (8, 'DVD', 'Digital Video Device', 1);


#
# TABLE STRUCTURE FOR: rest_logins
#

DROP TABLE IF EXISTS `rest_logins`;

CREATE TABLE `rest_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `rest_logins` (`id`, `username`, `password`, `status`) VALUES (1, 'admin', '64657f8b6625061', 1);


#
# TABLE STRUCTURE FOR: seasons
#

DROP TABLE IF EXISTS `seasons`;

CREATE TABLE `seasons` (
  `seasons_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(11) DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`seasons_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `seasons` (`seasons_id`, `videos_id`, `seasons_name`, `publish`, `order`) VALUES (1, 1, 'ServerGh', 1, 1);


#
# TABLE STRUCTURE FOR: slider
#

DROP TABLE IF EXISTS `slider`;

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_link` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_btn_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_id` int(50) DEFAULT NULL,
  `action_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(50) NOT NULL DEFAULT 0,
  `publication` int(1) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: star
#

DROP TABLE IF EXISTS `star`;

CREATE TABLE `star` (
  `star_id` int(10) NOT NULL AUTO_INCREMENT,
  `star_type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`star_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: subscription
#

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `subscription_id` int(50) NOT NULL AUTO_INCREMENT,
  `plan_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `price_amount` int(50) NOT NULL,
  `paid_amount` float NOT NULL,
  `timestamp_from` int(50) NOT NULL,
  `timestamp_to` int(50) NOT NULL,
  `payment_method` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_info` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_timestamp` int(50) NOT NULL,
  `recurring` int(10) NOT NULL DEFAULT 1,
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: subtitle
#

DROP TABLE IF EXISTS `subtitle`;

CREATE TABLE `subtitle` (
  `subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(50) NOT NULL,
  `video_file_id` int(50) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1,
  PRIMARY KEY (`subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: tvseries_subtitle
#

DROP TABLE IF EXISTS `tvseries_subtitle`;

CREATE TABLE `tvseries_subtitle` (
  `tvseries_subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `episodes_id` int(250) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1,
  PRIMARY KEY (`tvseries_subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` int(2) DEFAULT 1,
  `role` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `theme_color` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '#16163F',
  `join_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `deactivate_reason` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `phone` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dob` date DEFAULT '0000-00-00',
  `firebase_auth_uid` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `user` (`user_id`, `name`, `slug`, `username`, `email`, `password`, `gender`, `role`, `token`, `theme`, `theme_color`, `join_date`, `last_login`, `deactivate_reason`, `status`, `phone`, `dob`, `firebase_auth_uid`) VALUES (1, 'ghamdan alsydy', '', 'ghamdanal421@gmail.com', 'ghamdanal421@gmail.com', '9108ded6d91b2c2dc1c91ed41cdf944c', 1, 'admin', NULL, 'default', '#16163F', NULL, '2020-09-11 12:23:10', NULL, 1, NULL, '0000-00-00', NULL);


#
# TABLE STRUCTURE FOR: video_file
#

DROP TABLE IF EXISTS `video_file`;

CREATE TABLE `video_file` (
  `video_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Server#1',
  `order` int(50) NOT NULL DEFAULT 0,
  PRIMARY KEY (`video_file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: videos
#

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `videos_id` int(11) NOT NULL AUTO_INCREMENT,
  `imdbid` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stars` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `director` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `writer` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `release` date DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `genre` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `runtime` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT 'HD',
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `publication` int(5) DEFAULT NULL,
  `trailer` int(5) DEFAULT 0,
  `enable_download` int(5) DEFAULT 1,
  `focus_keyword` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `imdb_rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_tvseries` int(11) NOT NULL DEFAULT 0,
  `total_rating` int(50) DEFAULT 1,
  `today_view` int(250) DEFAULT 0,
  `weekly_view` int(250) DEFAULT 0,
  `monthly_view` int(250) DEFAULT 0,
  `total_view` int(250) DEFAULT 1,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`videos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `videos` (`videos_id`, `imdbid`, `title`, `seo_title`, `slug`, `description`, `stars`, `director`, `writer`, `rating`, `release`, `country`, `genre`, `video_type`, `runtime`, `video_quality`, `is_paid`, `publication`, `trailer`, `enable_download`, `focus_keyword`, `meta_description`, `tags`, `imdb_rating`, `is_tvseries`, `total_rating`, `today_view`, `weekly_view`, `monthly_view`, `total_view`, `last_ep_added`) VALUES (1, '', 'VAlims Ghamdan', NULL, 'valims-ghamdan', '<?php print_r(\'dd\'); ?>', '', '', '', '0', '2020-09-10', '3', '2', NULL, 'h', 'HD', 0, 1, 0, 0, NULL, NULL, NULL, '', 1, 1, 0, 0, 0, 1, '2020-09-10 16:29:35');


#
# TABLE STRUCTURE FOR: wish_list
#

DROP TABLE IF EXISTS `wish_list`;

CREATE TABLE `wish_list` (
  `wish_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `wish_list_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `episodes_id` int(200) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`wish_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

