<?php
function	toTime($kara, $user)
{
	$kara->assign_timer($user, $_POST);
}

function	unwantToTime($kara, $user)
{
	$kara->unassign_timer($user, $_POST);
}

function	timer_section($db, $template, $kara, $user)
{
	if (isset($_POST['action']))
		if (function_exists($_POST['action']))
			call_user_func($_POST['action'], $kara, $user);
		else
			print ($_POST['action']);
	$page_value;
	$page_value["message"] = "";
	$section = htmlentities(htmlspecialchars(addslashes($_GET["section"])));
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
					$page_value["message"] .= $user->lang("TIME_NOT_FOUND") . "<br/>";
			if ((isset($_POST)) && (!empty($_POST)))
			{
				$result = $kara->edit($kara_id, $_POST);
				if ($result)
					$page_value["message"] .= $user->lang("EDIT_SUCCESS") . "<br />";
			}
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
			$list = $kara->todoList($user);
			if (!empty($list))
				$result = $kara->karaList(implode(", ", $list));
/* TEST	*/
			$action[0]['VALUE'] = "unwantToTime";
			$action[0]['TITLE'] = ($user->lang["UNWANT_TIME"]) == "" ? ("UNWANT_TIME") : ($user->lang["UNWANT_TIME"]); 
			foreach ($action as $option)
				$template->assign_block_vars('action', $option);
/* FIN */
			
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
/* TEST */			
			$action[0]['VALUE'] = "toTime";
			$action[0]['TITLE'] = ($user->lang["WANT_TIME"]) == "" ? ("WANT_TIME") : ($user->lang["WANT_TIME"]); 
			foreach ($action as $option)
				$template->assign_block_vars('action', $option);

/* FIN */
			
			$result = $kara->karaList(NULL, $kara->todoList($user));
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