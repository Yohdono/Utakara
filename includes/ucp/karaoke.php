<?php

class	karaoke
{
	function	karaList($karaId = "")
	{
		global	$db, $user;

		if ($karaId == "")
			$query = "	SELECT	`public`.`id`,
								`public`.`title`,
								`public`.`origin`,
								`public`.`date`,
								`public`.`note`,
								`public`.`accepted`
						FROM	`public_fstd_origin` public";
		else
			$query = "SELECT	`public`.`id`,
								`public`.`title`,
								`public`.`origin`,
								`public`.`date`,
								`public`.`note`,
								`public`.`accepted`
						FROM	`public_fstd_origin` public
						WHERE	`public`.`id` = " . $karaId;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	create($title, $origin, $note, $accepted)
	{
		global	$db;

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
								" . $accepted . ")";
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	edit($id, $value)
	{
		global	$db;
		
		$query = "	UPDATE	`utakara`.`public_fstd_origin` SET 
							`title` = '" . $value['title'] . "',
							`origin` = '" . $value['origin'] .	"',
							`note` = " . $value['note'] . ",
							`accepted` = '" . $value['accepted'] . "' 
					WHERE	`public_fstd_origin`.`id` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
	
	function	delete($id)
	{
		global	$db;
	
		$query = "DELETE FROM `utakara`.`public_fstd_origin` WHERE `public_fstd_origin`.`id` = " . $id;
		$result = $db->sql_query($query);
		return $result;
	}
}
?>