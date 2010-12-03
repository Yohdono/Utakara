<?php

class	karaoke {
	function	addKaraoke($title, $origin, $client = "moderator") {
		return "create";
	}
	
	function	dump($id = 0) {
		return "list";
	}
	
	function	remove($id) {
		return "remove";
	}
	
	function	edit($id) {
		return "edit";
	}
}
?>