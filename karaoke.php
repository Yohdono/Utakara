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

class	karaoke
{
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
	
	function	is_timer($user)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`timers`
					WHERE	`user_id` = " . $user->data["user_id"];
		$result = $db->sql_query($query);
		if (!is_empty($result))
			return TRUE;
		return FALSE;
	}
	
	function	add_timer($user)
	{
		global	$db;
		
		$query = "	INSERT INTO `protected_utakara`.`timers` (`name`, `user_id`)
					VALUES (" . $user->data['username'] . ", " . $user->data["user_id"] . ")";
		return $db->sql_query($query); 
	}
	
	function	get_timer($uid = NULL)
	{
		global	$db;
		
		$query = "	SELECT	`id`,
							`name`
					FROM	`protected_utakara`.`timers`";
		if ($id)
			$query .= " WHERE `ìd` = " . $id;
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
	
	function	karaList($karaId = NULL)
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
			$query .= "	AND	`public`.`id` = " . $karaId;;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	create($title, $origin)
	{
		global	$db;

		$title = htmlentities(htmlspecialchars(addslashes($title)));
		$origin = htmlentities(htmlspecialchars(addslashes($origin)));
		$query = "	INSERT INTO	`utakara`.`public_fstd_origin` (
									`title`,
									`origin`,
									`date`,
									`note`,
									`accepted`) 
					VALUES		(\"" . $title . "\",
								\"" . $origin . "\",
								" . time() . ",
								null,
								5)";
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	edit($id, $value)
	{
		global	$db;
		
		if (!is_numeric($value['accepted']) || !is_numeric($value['note']))
			return FALSE;
		$query = "	UPDATE	`utakara`.`public_fstd_origin` SET 
							`title` = '" . htmlentities(htmlspecialchars(addslashes($value['title']))) . "',
							`origin` = '" . htmlentities(htmlspecialchars(addslashes($value['origin']))) .	"',
							`note` = " . $value['note'] . ",
							`accepted` = " . $value['accepted'] . " 
					WHERE	`public_fstd_origin`.`id` = " . $id;
		$result = $db->sql_query($query);
		return $result;
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