<?php

function	unwantToTime($kara, $user)
{
	$kara->unassign_timer($user, $_POST);
}

function	action($page)
{
	global	$user;
	$i = 0;
	
	if ($page == "todo")
	{
		$action[$i]['VALUE'] = "unassign_timer";
		$action[$i++]['TITLE'] = ($user->lang["UNWANT_TIME"]) == "" ? ("UNWANT_TIME") : ($user->lang["UNWANT_TIME"]);
	} 
	else if ($page == "list")
	{
		$action[$i]['VALUE'] = "assign_timer";
		$action[$i++]['TITLE'] = ($user->lang["WANT_TIME"]) == "" ? ("WANT_TIME") : ($user->lang["WANT_TIME"]);
		$action[$i]['VALUE'] = "refuse_time";
		$action[$i++]['TITLE'] = ($user->lang["ALREADY_TIMED"]) == "" ? ("ALREADY_TIMED") : ($user->lang["ALREADY_TIMED"]); 
		
	}
	if ($user->data['user_id'] == 2)
	{
		$action[$i]['VALUE'] = "delete_time";
		$action[$i++]['TITLE'] = ($user->lang["DELETE_TIME"]) == "" ? ("DELETE_TIME") : ($user->lang["DELETE_TIME"]); 
	}
	return ($action);
}

function	timer_section($db, $template, $kara, $user)
{
	$page_value;
	$page_value["message"] = "";
	$section = htmlentities(htmlspecialchars(addslashes($_GET["section"])));
	if (isset($_POST['action']))
		if (method_exists($kara, $_POST['action']))
			$page_value["message"] .= call_user_method($_POST['action'], $kara, $_POST);
	switch	($section)
	{		
		case 'edit':
		{
			send_data_on_array('status', $kara->get_status(), $db, $template, $user);
			send_data_on_array('timer', $kara->get_timer(), $db, $template, $user);
			if (!empty($_GET["id"]))
				if (is_numeric($_GET["id"]))
					$kara_id = $_GET["id"];
				else 
					$page_value["message"] .= $kara->set_message($user->lang("TIME_NOT_FOUND"), FALSE);
			if ((isset($_POST)) && (!empty($_POST)))
				$page_value["message"] .= $kara->edit($kara_id, $_POST);
			$result = $kara->karaList($_GET["id"]);
			$row = $db->sql_fetchrow($result);
			$template->assign_vars(array(
				'ID'		=> $row["id"],
				'TITLE'		=> $row["title"],
				'ORIGIN'	=> $row['origin'],
				'NOTE'		=> $row['note'],
				'ACCEPTED'	=> $row['accepted'],
				'USER_ID'	=> $user->data["uid"]
			));
			$page_value["page"] = 'time_edit';
			$page_value["title"] = $user->lang["TIME_EDIT"];
		}
		break;
			
		
		case 'todo' :
		{
			$list = $kara->todoList();
			if (!empty($list))
				$result = $kara->karaList(implode(", ", $list));
			$action = action("todo");
			foreach ($action as $option)
				$template->assign_block_vars('action', $option);
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
			$page_value["page"] = "utakara_timer";
			$page_value["title"] = ($user->lang["MY_TODO_LIST"]) == "" ? ("MY_TODO_LIST") : ($user->lang["MY_TODO_LIST"]);
		}
		break;
		
		default:
		{
			$action = action("list");
			foreach ($action as $option)
				$template->assign_block_vars('action', $option);
			$result = $kara->karaList(NULL, $kara->todoList());
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
			$page_value["page"] = "utakara_timer";
			$page_value["title"] = ($user->lang["TO_TIME_LIST"]) == "" ? ("TO_TIME_LIST") : ($user->lang["TO_TIME_LIST"]);
		}
		break;
	}
	return $page_value;
}

?>