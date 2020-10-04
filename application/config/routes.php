<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
// api route
$route['ghamdan'] 										= 'admin/gha';
$route['rest-api'] 										= 'admin/api_test';
$route['rest-api/v100'] 								= 'admin/api_test';
$route['rest-api/v100/(:any)'] 							= 'rest_api/v100/$1';
$route['rest-api/v100/(:any)/(:any)'] 					= 'rest_api/v100/$1/$2';
$route['rest-api/v100/(:any)/(:any)/(:any)'] 			= 'rest_api/v100/$1/$2/$3';
$route['rest-api/v100/(:any)/(:any)/(:any)/(:any)'] 	= 'rest_api/v100/$1/$2/$3/$4';
$route['api'] 											= 'legacy_api/index';
$route['api/(:any)'] 									= 'legacy_api/$1';

// general route
$route['default_controller'] 							= "legacy_api/ghamdan_index";
// $route['spaces'] 							            = "legacy_api/ghamdan_spaces";
$route['contact'] 							            = "legacy_api/ghamdan_contact";
$route['contact/(:any)'] 							            = "legacy_api/ghamdan_contact/$1";
$route['profile'] 							            = "legacy_api/ghamdan_profile";
$route['profile/(:any)'] 							    = "legacy_api/ghamdan_profile/$1";
$route['movies/(:any)'] 							    = "legacy_api/ghamdan_anime/$1";
$route['movies/(:any)/(:any)'] 							= "legacy_api/ghamdan_anime/$1/$2";
$route['tv/(:any)'] 				                    = "legacy_api/ghamdan_anime/$1";
$route['request'] 				                        = "legacy_api/ghamdan_request";
$route['request/(:any)'] 				                = "legacy_api/ghamdan_request/$1";
$route['favorite'] 				                        = "legacy_api/ghamdan_favorite";
$route['login'] 							            = "login";
// $route['signup'] 							            = "login/signup";
// $route['signup/(:any)/'] 							            = "login/signup/$1";
// $route['signup/(:any)/(:any)'] 							            = "login/signup/$1/$2";
$route['404_override'] 									= 'notfound';
$route['terms'] 										= 'terms/index';