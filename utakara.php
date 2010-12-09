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
require_once("karaoke.php");
require_once("u_timer.php");
// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup();

$mode = request_var('mode', '');

$l_title = $user->lang['UTAKARA'];

$kara = new karaoke();
$timer = $kara->is_timer($user);
$message = "";
switch ($mode)
{
	case 'become_timer':
	{
		if (!$timer)
		{
			$result = $kara->add_timer($user);
			if ($user->lang("BE_TIMER_SUCCESS") != "")
				$message = $user->lang("BE_TIMER_SUCCESS") . "<br/>";
			else 
				$message .= "BE_TIMER_SUCCESS" . "<br/>";
		}
		else 
		{
			if ($user->lang("ALREADY_TIMER") != "")
				$message .= $user->lang("ALREADY_TIMER") . "<br/>";
			else 
				$message .= "BE_TIMER_SUCCESS" . "<br/>";
		}
		$template->assign_vars(array('USERNAME' => $user->data["username"]));
		$page = 'utakara_timer';
		$title = $user->lang("TIMER");
	}
	break;
	
	case 'timer':
	{
		$template->assign_vars(array('USERNAME' => $user->data["username"]));
		$value = timer_section($db, $template, $kara, $user);
		$page = $value["page"];
		$title = $value["title"];
		$message .= $value["message"];
	}
	break;

	case 'create':
	{
		send_data_on_array('status', $kara->get_status(), $db, $template, $user);
		send_data_on_array('timer', $kara->get_timer(), $db, $template, $user);
		if ((isset($_POST)) && (!empty($_POST)))
		{
			$result = $kara->create($_POST["title"], $_POST["origin"]);
			$template->assign_vars(array('iscreated' => $result));
		}
		$page = 'utakara_create';
		$title = "Create karaoke";
	}
	break;

	case 'edit':
	{
		send_data_on_array('status', $kara->get_status(), $db, $template, $user);
		send_data_on_array('timer', $kara->get_timer(), $db, $template, $user);
		
		if ((isset($_POST)) && (!empty($_POST)))
		{
			$result = $kara->edit($_GET['id'], $_POST);
			if ($result)
				$template->assign_vars(array('MESSAGE' => $user->lang("EDIT_SUCCESS")));
		}
		$result = $kara->karaList($_GET["id"]);
		$row = $db->sql_fetchrow($result);
		$template->assign_vars(array(
			'ID'		=> $row["id"],
			'TITLE'		=> $row["title"],
			'ORIGIN'	=> $row['origin'],
			'NOTE'		=> $row['note'],
			'ACCEPTED'	=> $row['accepted']
		));
		$page = 'utakara_edit';
		$title = "Edit karaoke";
	}
	break;
		
	case 'transfer':
	{
		send_data_on_array('status', $kara->get_status(), $db, $template, $user);
		send_data_on_array('artists', $kara->get_artists(), $db, $template);
		send_data_on_array('origin', $kara->get_origin(), $db, $template);
		send_data_on_array('flag', $kara->get_flag(), $db, $template);
		send_data_on_array('position', $kara->get_position(), $db, $template);
		send_data_on_array('type', $kara->get_type(), $db, $template);
		send_data_on_array('tags', $kara->get_tags(), $db, $template);
		send_data_on_array('lang', $kara->get_lang(), $db, $template);
		
		if ((isset($_POST)) && (!empty($_POST)))
		{
			$result = $kara->karaTransfer($_GET['id'], $_POST);
			if ($result)
				$template->assign_vars(array('MESSAGE' => $user->lang("EDIT_SUCCESS")));
		}
		if ($_GET["id"])
		{
			$result = $kara->karaList($_GET["id"]);
			$row = $db->sql_fetchrow($result);
			$template->assign_vars(array(
				'ID'		=> $row["id"],
				'TITLE'		=> $row["title"],
				'ORIGIN'	=> $row['origin'],
				'NOTE'		=> $row['note'],
				'ACCEPTED'	=> $row['accepted']
			));
		}
		$page = 'utakara_transfer';
		$title = $user->lang["TRANSFER_TITLE"];
	}
	break;
	
	case 'delete':
	{
	$result = $kara->delete($_GET['id']);
	if ($result)
		$template->assign_vars(array('MESSAGE' => $user->lang['SUCCESS']));
	else
		$template->assign_vars(array('MESSAGE' => $user->lang['FAILED']));
	$result = $kara->karaList();
	while ($row = $db->sql_fetchrow($result))
		$template->assign_block_vars('list', array(
			'ID'		=> $row['id'],
			'TITLE'		=> $row["title"],
			'ORIGIN'	=> $row['origin'],
			'DATE'		=> date("d/m/Y", $row['date']),
			'NOTE'		=> $row['note'],
			'ACCEPTED'	=> $row['accepted']
		));
	$page = 'utakara_list';
	$title = 'Karaoke list';
	}
	break;
		
	default:
	{
		$result = $kara->karaList();
			while ($row = $db->sql_fetchrow($result))
		{
			$template->assign_block_vars('list', array(
				'ID'		=> $row['id'],
				'TITLE'		=> html_entity_decode($row["title"]),
				'ORIGIN'	=> html_entity_decode($row['origin']),
				'DATE'		=> date("d/m/Y", $row['date']),
				'NOTE'		=> $row['note'],
				'ACCEPTED'	=> $row['accepted'],
				'STATUS'	=> $user->lang[$row['status']]
			));
		}
		$page = 'utakara_list';
		$title = 'Karaoke list';
	}
	break;
}
$template->assign_vars(array('LINK' 	=> "utakara.php",
							 'TIMER'	=>	$timer,
							 'MESSAGE'	=>	$message));

page_header($title, false);
$template->set_filenames(array(
	'body' => $page . ".html")
);

page_footer();
		

?>