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

$l_title = $user->lang['HOME'];
// get news
$query = "	SELECT 		`news`.`id` AS 'id',
						`news`.`title` AS 'title',
						`news`.`date` AS 'date',
						`news`.`content` AS 'content',
						`news`.`author` AS 'author_id',
						`user`.`username` AS 'poster'
			FROM		`uta_news` news,
						`uta_users` user
			WHERE		`news`.`author` = `user`.`user_id`
			AND			`news`.`published` = 1
			ORDER BY	`id` DESC";
$result = $db->sql_query($query);
$i = 0;
while (($row = $db->sql_fetchrow($result)) && $i < 10)
{
	$template->assign_block_vars('news', array(
		'ID'		=> $row['id'],
		'TITLE'		=> html_entity_decode($row["title"]),
		'DATE'		=> date("D M d, Y g:i a", $row['date']),
		'CONTENT'	=> nl2br(html_entity_decode($row['content'])),
		'AUTHOR_ID'	=> $row['author_id'],
		'POSTER'	=> $row['poster']
	));
	++$i;
}

// build the page
$page = 'home.html';
$template->assign_vars(array(
	'L_UTA_TITLE'				=> $l_title,
	'L_BACK_TO_TOP'				=> $user->lang['BACK_TO_TOP'],
	'LINK'						=> "home.php",
	'SWITCH_COLUMN_MANUALLY'	=> (!$found_switch) ? true : false,
));

page_header($l_title, false);

$template->set_filenames(array(
	'body' => $page)
);
make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));

page_footer();

?>