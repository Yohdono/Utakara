<?php
function	timer_section($db, $template, $kara, $user)
{
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
			$result = $kara->todoList($user);
		}
		break;
		
		case 'assign_to':
		{
			if (!empty($_POST))
				$kara->assign_timer($_POST, $user);
			$page_value["page"] = "utakara_timer";
			$page_value["title"] = $user->lang["TO_TIME_LIST"];
		}
				
		default:
		{
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
			$page_value["title"] = $user->lang["TO_TIME_LIST"];
		}
		break;
	}
	return $page_value;
}

?>