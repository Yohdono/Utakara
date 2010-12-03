<?php
/**
*
* @package mcp
* @version $Id: mcp_news.php 8479 2010-08-04 16:11:48Z Yoh $
*
*/

/**
* @package module_install
*/
class mcp_news_info
{
	function module()
	{
		return array(
			'filename'	=> 'mcp_news',
			'title'		=> 'MCP_NEWS',
			'version'	=> '1.0.0',
			'modes'		=> array(
				'create_news'			=> array('title' => 'MCP_NEWS_CREATE', 'auth' => '', 'cat' => array('MCP_MAIN')),
				'news_delete'	=> array('title' => 'MCP_NEWS_DELETE', 'auth' => 'acl_m_,$id', 'cat' => array('MCP_MAIN')),
				'news_panel'	=> array('title' => 'MCP_NEWS_LIST', 'auth' => 'acl_m_,$id', 'cat' => array('MCP_MAIN')),
				'edit_news'	=> array('title' => 'MCP_NEWS_EDIT', 'auth' => 'acl_m_,$id || (!$id && aclf_m_)', 'cat' => array('MCP_MAIN')),
			),
		);
	}

	function install()
	{
	}

	function uninstall()
	{
	}
}

?>