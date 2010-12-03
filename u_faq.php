<?php
/**
*
* @package phpBB3
* @version $Id: faq.php 9961 2009-08-12 10:30:37Z Kellanved $
* @copyright (c) 2005 phpBB Group
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* @ignore
*/
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup();

$mode = request_var('mode', '');

$l_title = $user->lang['FAQ'];
// build the page
$page = 'u_faq.html';
$template->assign_vars(array(
	'L_UTA_TITLE'				=> $l_title,
	'L_BACK_TO_TOP'				=> $user->lang['BACK_TO_TOP'],
	'LINK'						=> "u_faq.php",
	'SWITCH_COLUMN_MANUALLY'	=> (!$found_switch) ? true : false,
));

page_header($l_title, false);

$template->set_filenames(array(
	'body' => $page)
);
make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));

page_footer();

?>