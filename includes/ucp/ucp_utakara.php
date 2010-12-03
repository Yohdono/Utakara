<?php
/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}
require_once("karaoke.php");
/*$phpbb_root_path = './';
include($phpbb_root_path . 'common.' . $phpEx);
$user->session_begin();
$auth->acl($user->data);
$user->setup ();
*/
/**
* ucp_utakara
* utakara module for karaoke
*
* @package ucp
*/
class ucp_utakara
{
	var $u_action;
	
	function main($id, $mode)
	{
		global $config, $db, $user, $auth, $template, $phpbb_root_path, $phpEx;
		$kara = new karaoke();
		
		switch ($mode)
		{
			case 'create':
				{
					if (isset($_POST))
					{
						$result = $kara->create($_POST["title"], $_POST["origin"], $_POST["note"], $_POST["accepted"]);
						$template->assign_vars(array('iscreated' => $result));
					}
					$page = 'ucp_utakara_create';
					$title = "Create karaoke";
				}
			break;

			case 'edit':
					if (isset($_POST))
					{
						$result = $kara->edit($id, $_POST);
						$template->assign_vars(array('isedited' => $result));
					}
					$page = 'ucp_utakara_edit';
					$title = "Edit karaoke";
			break;
				
			case 'delete':
				$test = $kara->delete($_GET['id']);
				$page = 'ucp_utakara_list';
				$title = 'Karaoke list';
				break;
				
			default:
				{
					$result = $kara->karaList();
					while ($row = $db->sql_fetchrow($result))
					{
						$template->assign_block_vars('list', array(
							'ID'		=> $row['id'],
							'TITLE'		=> $row["title"],
							'ORIGIN'	=> $row['origin'],
							'DATE'		=> date("D M d", $row['date']),
							'NOTE'		=> $row['note'],
							'ACCEPTED'	=> $row['accepted']
						));
					}
					$page = 'ucp_utakara_list';
					$title = 'Karaoke list';
				}
			break;
		}
		$this->tpl_name = $page;
		$this->page_title = $title;
		
	}
}

?>