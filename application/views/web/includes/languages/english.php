<?php

	function lang($phrase) {

		static $lang = array(

			// Navbar Links

			'HOME_ADMIN' 	=> 'Home',
			'CATEGORIES' 	=> 'Categories',
			'anime' 		=> 'anime',
			'MEMBERS' 		=> 'Members',
			'COMMENTS'		=> 'Comments',
			'STATISTICS' 	=> 'Statistics',
			'LOGS' 			=> 'Logs',
			'' => '',
			'' => '',
			'' => '',
			'' => '',
			'' => ''
		);

		return $lang[$phrase];

	}
