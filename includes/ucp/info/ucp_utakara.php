<?php
/**
* @package module_install
*/
class ucp_utakara_info
{
	function module()
	{
		return array(
			'filename'	=> 'ucp_utakara',
			'title'		=> 'UCP_UTAKARA',
			'version'	=> '1.0.0',
			'modes'		=> array(
				'list'		=> array('title' => 'UCP_UTAKARA_LIST', 'auth' => '', 'display' => false, 'cat' => array('')),
				'create'	=> array('title' => 'UCP_UTAKARA_CREATE', 'auth' => '', 'cat' => array('')),
				'edit'	=> array('title' => 'UCP_UTAKARA_EDIT', 'auth' => '', 'cat' => array('')),
				'delete'	=> array('title' => 'UCP_UTAKARA_DELETE', 'auth' => '', 'cat' => array('')),
			)
		);
	}

	function install() {
	}

	function uninstall() {
	}
}

?>