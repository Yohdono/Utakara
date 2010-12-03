<?php
/**
*
* @package mcp
* @version $Id: mcp_news.php 10042 2010-09-01 11:39:05Z Yoh $
* @copyright (c) 2005 phpBB Group
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

/**
* mcp_news
* Displays news for visitor
* @package mcp
*/
class mcp_news
{
	var $p_master;
	var $u_action;

	function mcp_news(&$p_master)
	{
		$this->p_master = &$p_master;
	}

	function	create_news($db, $user_id)
	{
		if (isset($_POST['subject']) && !empty($_POST['subject']) &&
			isset($_POST['content']) && !empty($_POST['content']))
		{
			$subject = $_POST['subject'];
			$content = $_POST['content'];
			$published = ($_POST['published'] == "on") ? 1 : 0;
			$subject = htmlentities(htmlspecialchars(addslashes($subject)));
			$content = htmlentities(htmlspecialchars(addslashes($content)));
			$query = '	INSERT INTO `utakara`.`uta_news` (
							`title` ,
							`date` ,
							`content` ,
							`author` ,
							`published`
						)
						VALUES (
							\'' . subject . '\', 
							UNIX_TIMESTAMP( ),
							\''. $user_id . '\',
							\'' . $published . '\');';
			return $db->sql_query($query);
			return true;
		}
		return false;
	}

	function	update_news($db, $user_id, $news_id)
	{
		if (isset($_POST['subject']) && !empty($_POST['subject']) &&
			isset($_POST['content']) && !empty($_POST['content']))
		{
			$subject = $_POST['subject'];
			$content = $_POST['content'];
			$published = ($_POST['published'] == "on") ? 1 : 0;
			$subject = htmlentities(htmlspecialchars(addslashes($subject)));
			$content = htmlentities(htmlspecialchars(addslashes($content)));
			$query = '	UPDATE `uta_news` 
						SET	`title`="' . $subject . '",
							`date`="' . time() . '",
							`content`="' . $content . '",
							`author`="' . $user_id . '",
							`published`="' . $published . '" 
						WHERE `uta_news`.`id` = "' . $news_id .'";';
			return $db->sql_query($query);
			return true;
		}
		return false;
	}
	
	function	get_news($db, $id = NULL)
	{
		$query = 		'SELECT 	`news`.`id`,
									`news`.`title`,
									`news`.`date`,
									`news`.`published`,
									`news`.`content`,
									`user`.`username` AS \'poster\'
						FROM 		`uta_news` `news`,
									`uta_users` `user`
						WHERE		`news`.`author` = `user`.`user_id`';
		if ($id != NULL)
			$query .=	' AND		`news`.`id` = ' . $id;
		$query .= 		' ORDER BY	`id` DESC';
		$result = $db->sql_query($query);
		return $result;
	}

	function main($id, $mode)
	{
		global $auth, $db, $user, $template;
		global $config, $phpbb_root_path, $phpEx;

		$action = request_var('action', array('' => ''));

		if (is_array($action))
			list($action, ) = each($action);

		$this->page_title = 'MCP_NEWS';
		$mode = $_GET['mode'];
		switch ($mode)
		{
			case 'create_news':
				if (!empty($_POST))
					$this->create_news($db, $user->data['user_id']);
				$template->assign_vars(array(
					'S_POST_ACTION'		=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=news&amp;mode=create_news'),
					'L_TITLE'			=> $user->lang['MCP_NEWS'],
					'SUBJECT'			=> html_entity_decode($_POST['subject']),
					'CONTENT'			=> html_entity_decode($_POST['content'])
				));
				$this->tpl_name = 'mcp_news_create';
			break;
			
			case 'edit_news':
				$user->add_lang('acp/common');
				if (!empty($_POST))
				{
					if ($this->update_news($db, $user->data['user_id'], $_GET['news_id']))
						$message = $user->lang["UP_NEWS_SUCCESS"];							/* to translate */
					else
						$error = $user->lang["UP_NEWS_ERROR"];								/* to translate */
				}
				$result = $this->get_news($db, $_GET['news_id']);
				$row = $db->sql_fetchrow($result);
				if (empty($row))
					$error = "This news doesn't exist";
				$template->assign_vars(array(
					'S_POST_ACTION'		=>	append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=news&amp;mode=edit_news&amp; news_id=' . $_GET['news_id']),
					'L_TITLE'			=>	$user->lang['MCP_NEWS'],
					'TITLE'				=>	html_entity_decode($row['title']),
					'NEWS_ID'			=>	$row['id'],
					'CONTENT'			=>	html_entity_decode($row['content']),
					'PUBLISHED'			=>	$row['published'],
					'MESSAGE'			=>	$message,
					'ERROR'				=>	$error
				));
				$this->tpl_name = 'mcp_news_edit';
			break;
			
			default:
				$user->add_lang('acp/common');
				$template->assign_vars(array(
					'S_POST_ACTION'		=>	append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=news&amp;mode=create_news')
					));
				$result = $this->get_news($db);
				while ($row = $db->sql_fetchrow($result))
					$template->assign_block_vars('news', array(
						'ID'		=>	$row['id'],
						'TITLE'		=>	html_entity_decode($row['title']),
						'DATE'		=>	date("D M d", $row['date']),
						'POSTER'	=>	$row['poster'],
						'PUBLISHED'	=>	$row['published']
					));
				$this->tpl_name = 'mcp_news_list';
			break;
		}
	}
}