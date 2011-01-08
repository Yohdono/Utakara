<?php

function	send_data_on_array($name, $data, $db, $template, $user = NULL)
{
	while ($row = $db->sql_fetchrow($data))
	{
		while (current($row))
		{
			if ($user == NULL)
				$res[strtoupper(key($row))] = $row[key($row)];
			else
			{
/*				if (is_numeric($row[key($row)]))
					$res[strtoupper(key($row))] = $row[key($row)];
				else*/
				if ($user->lang[$row[key($row)]] == "")
					$res[strtoupper(key($row))] = $row[key($row)]; 
				else
					$res[strtoupper(key($row))] = $user->lang[$row[key($row)]];		
			}
			next($row);
		}
		$template->assign_block_vars($name, $res);
	}
}

class			karaoke
{	
	function	set_message($msg, $type)
	{
		if ($type == TRUE)
			return "<li class=\"success\">" . $msg . "</li>";
		return "<li class=\"error\">" . $msg . "</li>";
	}
	
	function	set_status($kara_id, $status_id)
	{
		global	$db;
		
		if (is_numeric($kara_id) && is_numeric($status_id))
		{
			$query = "	UPDATE `utakara`.`public_fstd_origin`
						SET `accepted` = " . $status_id . "
						WHERE id = " . $kara_id;
			$result = $db->sql_query($query);
			print $result;
			return (TRUE);
		}
		return (FALSE);
	}
	
	function	add_status($status)
	{
		global	$db;
		
		$status = htmlentities(htmlspecialchars(addslashes($status)));
		$query = "	INSERT INTO `protected_utakara`.`karaokeoriginflag` (`name`)
					VALUES (" . strtoupper($status) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_status($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`status`
					FROM	`utakara`.`uta_karaoke_status`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}

	function	add_artist($artist)
	{
		global	$db;
		
		$artist = htmlentities(htmlspecialchars(addslashes($artist)));
		$query = "	INSERT INTO `protected_utakara`.`artists` (`name`)
					VALUES (" . strtoupper($artist) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_artists($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`artists`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	add_origin($origin)
	{
		global	$db;
		
		$origin = htmlentities(htmlspecialchars(addslashes($origin)));
		$query = "	INSERT INTO `protected_utakara`.`karaokeorigin` (`name`)
					VALUES (" . strtoupper($origin) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_origin($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`karaokeorigin`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	add_flag($flag)
	{
		global	$db;
		
		$flag = htmlentities(htmlspecialchars(addslashes($flag)));
		$query = "	INSERT INTO `protected_utakara`.`karaokeoriginflag` (`name`)
					VALUES (" . strtoupper($flag) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_flag($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`karaokeoriginflag`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	add_position($position)
	{
		global	$db;
		
		$position = htmlentities(htmlspecialchars(addslashes($position)));
		$query = "	INSERT INTO `protected_utakara`.`karaokeoriginposition` (`name`)
					VALUES (" . strtoupper($position) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_position($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`karaokeoriginposition`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	add_type($artist)
	{
		global	$db;
		
		$type = htmlentities(htmlspecialchars(addslashes($type)));
		$query = "	INSERT INTO `protected_utakara`.`karaokeorigintype` (`name`)
					VALUES (" . strtoupper($type) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_type($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`karaokeorigintype`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	add_tags($tags)
	{
		global	$db;
		
		$tags = htmlentities(htmlspecialchars(addslashes($tags)));
		$query = "	INSERT INTO `protected_utakara`.`karaoketags` (`name`)
					VALUES (" . strtoupper($tags) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_tags($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`karaoketags`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	add_lang($lang)
	{
		global	$db;
		
		$lang = htmlentities(htmlspecialchars(addslashes($lang)));
		$query = "	INSERT INTO `protected_utakara`.`languages` (`name`)
					VALUES (" . strtoupper($lang) . ")";
		return $db->sql_query($query); 
	}
	
	function	get_lang($id = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`languages`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	is_timer()
	{
		global	$db, $user;
		
		$timer = $this->get_timer($user->data["user_id"]);
		$row = $db->sql_fetchrow($timer);
		if ($row["id"] > 0)
			return 1;
		return 0;
	}
	
	function	delete_time($kara_id)
	{
		global	$user;
		$message = "";
		
		foreach ($kara_id as $key => $id)
			if (is_numeric($id))
			{
				if ($this->delete($id) == TRUE)
					$message .= $this->set_message($user->lang("TIME_DELETED" . " : " . $key), TRUE);
				else
					$message .= $this->set_message($user->lang("TIME_DELETED_FAILED") . " : " . $key, FALSE); 
			}
	}
	
	function	refuse_time($kara_id)
	{
		global	$user;
		$message = "";
		
		foreach ($kara_id as $key => $id)
			if (is_numeric($id))
			{
				if ($this->set_status($id, 2) == TRUE)
					$message .= $this->set_message($user->lang("TIME_REFUSED") . " : " . $key, TRUE);
				else
					$message .= $this->set_message($user->lang("TIME_REFUSED_FAILED") . " : " . $key, FALSE); 
			}
	}
	
	function	is_assigned($user_id, $kara_id)
	{
		global	$db;
		
		$query = "	SELECT	t.`karaid`
					FROM	`protected_utakara`.`playablekaraoketimer` t
					WHERE t.`timerid` = " . $user_id . "  
					AND t.`karaid` = " . $kara_id;
		$result = $db->sql_query($query);
		$row = $db->sql_fetchrow($timer);
		if ($row["karaid"] != NULL)
			return (TRUE);
		return (FALSE);
	}
	
	function	assign_timer($kara_id, $user_id = NULL)
	{
		global	$db, $user;
		$message = "";
		
		if ($user_id == NULL)
			$user_id = $user->data['user_id'];
		foreach ($kara_id as $key => $id)
			if (is_numeric($id))
				if (!$this->is_assigned($user_id, $id))
				{
					$query = "	INSERT INTO `protected_utakara`.`playablekaraoketimer` (`timerid`, `karaid`)
								VALUES (" . $user_id . ", " . $id . ")";
					$result = $db->sql_query($query);
					if ($result == TRUE)
						$message .= $this->set_message($user->lang("ASSIGN_SUCCESS") . " : " . $key, TRUE);
					else 
						$message .= $this->set_message($user->lang("ASSIGN_FAILED") . " : " . $key, FALSE);
					$this->set_status($kara_id, 4);
				}
		return ($message); 
	}

	function	unassign_timer($kara_id, $user_id = NULL)
	{
		global	$db, $user;
		$message = "";
		
		if ($user_id == NULL)
			$user_id = $user->data['user_id'];
		foreach ($kara_id as $key => $id)
			if (is_numeric($id))
			{
				$query = "	DELETE FROM `protected_utakara`.`playablekaraoketimer` 
							WHERE `playablekaraoketimer`.`timerid` = " . $user_id . 
						 "	AND `playablekaraoketimer`.`karaid` = " . $id ;
				$result = $db->sql_query($query);
				if ($result == TRUE)
					$message .= $this->set_message($user->lang("UNASSIGN_SUCCESS") . " : " . $key, TRUE);
				else 
					$message .= $this->set_message($user->lang("UNASSIGN_FAILED") . " : " . $key, FALSE); 
			}
		return ($message);
	}
	
	function	add_timer()
	{
		global	$db, $user;
		
		$query = "	INSERT INTO `protected_utakara`.`timers` (`name`, `user_id`)
					VALUES (\"" . $user->data['username'] . "\" , '" . $user->data["user_id"] . "')";
		$result = $db->sql_query($query);
		if ($result == TRUE)
			return ($this->set_message($user->lang("BE_TIMER_SUCCESS", TRUE)));
		return  ($this->set_message($user->lang("ALREADY_TIMER", FALSE)));
	}
	
	function	get_timer($uid = NULL)
	{
		global	$db;

		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`timers`";
		if ($uid)
			$query .= " WHERE `user_id` = " . $uid;
		return $db->sql_query($query);
	}
	
	function	karaTransfer($karaId, $value)
	{
		global	$db, $user;
		
//		require_field(); 
		/*
		send_data_on_array('status', $kara->get_status(), $db, $template);
		send_data_on_array('artists', $kara->get_artists(), $db, $template);
		send_data_on_array('origin', $kara->get_origin(), $db, $template);
		send_data_on_array('flag', $kara->get_flag(), $db, $template);
		send_data_on_array('position', $kara->get_position(), $db, $template);
		send_data_on_array('type', $kara->get_type(), $db, $template);
		send_data_on_array('tags', $kara->get_tags(), $db, $template);
		send_data_on_array('lang', $kara->get_lang(), $db, $template);
		*/
		$query = "SELECT * FROM `protected_utakara`.artists`";
		$result = $db->sql_query($query);
		$row = $db->sql_fetchrow($result);
	}
	
	function	todoList()
	{
		global	$db, $user;
		
		$query = "	SELECT `karaid`
					FROM `protected_utakara`.`playablekaraoketimer`
					WHERE `timerid` = " . $user->data["user_id"];
		$result = $db->sql_query($query);
		while ($row = $db->sql_fetchrow($result))
			$time[] = $row['karaid'];
		return $time;
	}

	function	karaList($karaId = NULL, $exclude = NULL)
	{
		global	$db, $user;

		$query = "	SELECT	`public`.`id`,
							`public`.`title`,
							`public`.`origin`,
							`public`.`date`,
							`public`.`note`,
							`public`.`accepted`,
							`status`.`status`
					FROM	`public_fstd_origin` public,
							`uta_karaoke_status` status
					WHERE	`status`.`id` = `public`.`accepted`";
		if ($karaId != NULL)
			$query .= "	AND	`public`.`id` IN (" . $karaId . ")";
		if (!empty($exclude))
			$query .= " AND `public`.`id` NOT IN (" . implode(", ", $exclude) . ")";
		$query .= "ORDER BY `public`.`date` DESC";
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	create($title, $origin, $note)
	{
		global	$db, $user;

		$title = htmlentities(htmlspecialchars(addslashes($title)));
		$origin = htmlentities(htmlspecialchars(addslashes($origin)));
		if (!is_numeric($note) || $note < 0 || $note > 20)
			$note = "NULL";
		$query = "	INSERT INTO	`utakara`.`public_fstd_origin` (
									`title`,
									`origin`,
									`date`,
									`note`,
									`accepted`) 
					VALUES		(\"" . $title . "\",
								\"" . $origin . "\",
								" . time() . ",
								" . $note . ",
								1)";
		$result = $db->sql_query($query);
		if ($result == TRUE)
			return ($this->set_message($user->lang("REQUEST_SUCCESS"), TRUE));
		return ($this->set_message($user->lang("REQUEST_FAILED"), FALSE));
	}
	
	function	edit($id, $value)
	{
		global	$db, $user;
		
		if (!is_numeric($value['accepted']))
			return ($this->set_message($user->lang("EDIT_FAILED"), FALSE));
		else if (!is_numeric($value["note"] || $value["note"] > 20 || $value["note"] < 0 ))
			$value["note"] = "NULL";
		$query = "	UPDATE	`utakara`.`public_fstd_origin` SET 
							`title` = '" . htmlentities(htmlspecialchars(addslashes($value['title']))) . "',
							`origin` = '" . htmlentities(htmlspecialchars(addslashes($value['origin']))) .	"',
							`note` = " . $value['note'] . ",
							`accepted` = " . $value['accepted'] . " 
					WHERE	`public_fstd_origin`.`id` = " . $id;
		print $query;
		$result = $db->sql_query($query);
		if ($result == TRUE)
			return ($this->set_message($user->lang("EDIT_SUCCESS"), TRUE));
		return ($this->set_message($user->lang("EDIT_FAILED"), FALSE));
	}
	
	function	delete($id)
	{
		global	$db;
	
		if (!is_numeric($id))
			return FALSE;
		$query = "DELETE FROM `utakara`.`public_fstd_origin` WHERE `public_fstd_origin`.`id` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
}
?>