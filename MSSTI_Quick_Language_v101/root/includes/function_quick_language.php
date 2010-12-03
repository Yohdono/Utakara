<?php
/**
* @package phpBB3 :: quick language mod
* @version $Id: function_quick_language.php, v 1.0.1 2009/01/14 14:01:09 leviatan21 Exp $
* @copyright: leviatan21 < info@mssti.com > (Gabriel) http://www.mssti.com/phpbb3/
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @author: leviatan21 - http://www.phpbb.com/community/memberlist.php?mode=viewprofile&u=345763
**/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

global $quick_language;

$quick_language = new quick_language();

/**
* Class
**/
class quick_language
{
	/**
	* Constructor
	**/
	function quick_language()
	{
		define('IN_QUICK_LANGUAGE', true);

		// Options //
		define('QUICK_LANGUAGE_ENABLED', true);	// Enable this MOD? Default true
		define('QUICK_LANGUAGE_GUEST', true);	// Allow guests to switch language ? Default true
		define('QUICK_LANGUAGE_USER', false);	// Allow registered users to switch language ? Default false
	}

	/**
	* Store the actual language to be used later
	* Called from : root/styles.php
	* 				root/includes/session.php
	**/
	function quick_language_setlang( &$user_lang, &$user_id, &$cookie_name )
	{
		// Do not use $user->data['is_registered'] because into the style.php do not exist the user class ;)
		$quick_language_guest	= ( QUICK_LANGUAGE_GUEST && $user_id == ANONYMOUS ) ? 1 : 0;
		$quick_language_user	= ( QUICK_LANGUAGE_USER  && $user_id != ANONYMOUS ) ? 1 : 0;

		if ( QUICK_LANGUAGE_ENABLED && ( $quick_language_guest || $quick_language_user ) )
		{
			// Get the value from the QL dropdown
			$quick_lang = basename( request_var( 'quick_language', $user_lang ) );

			if ( $quick_language_user )
			{

				// Get the value from the UCP dorpdown
				$ucp_lang	= basename( request_var( 'lang', $quick_lang ) );

				// Call session because into the style.php do not exist the user class ;)
				if (!class_exists('user'))
				{
					global $phpbb_root_path, $phpEx;
					include_once($phpbb_root_path . 'includes/session.' . $phpEx);
				}

				// Save the value into a cookie
				user::set_cookie('quick_language', $ucp_lang, 0);
			}

			// Read the value from the cookie
			$user_lang = basename( request_var($cookie_name . '_' . 'quick_language', $quick_lang, false, true) );
		}
		return $user_lang;
	}

	/**
	* Pick a language, any available language ...
	* Called from : root/includes/function.php
	**/
	function quick_language_select()
	{
		global $config, $template, $user, $phpbb_root_path, $phpEx;

		$quick_language_guest	= ( QUICK_LANGUAGE_GUEST && $user->data['user_id'] == ANONYMOUS ) ? true : false;
		$quick_language_user	= ( QUICK_LANGUAGE_USER  && $user->data['is_registered']) ? true : false ;

		if ( QUICK_LANGUAGE_ENABLED && ( $quick_language_guest || $quick_language_user ) )
		{
			// Build the dropdown
			$lang_options	= language_select( $user->data['user_lang'] );

			if (substr_count($lang_options, '<option') > 1)
			{
				$redirect = $user->page['page_dir'] ? '' : '&amp;redirect=' . urlencode(str_replace('&amp;', '&', build_url(array('_f_', 'quick_language'))));
				$template->assign_vars(array(
					'S_QUICK_LANGUAGE'		=> QUICK_LANGUAGE_ENABLED,
					'L_QUICK_LANGUAGE'		=> ( isset($user->lang['QUICK_LANGUAGE']) ) ? $user->lang['QUICK_LANGUAGE'] : 'Language',
					'S_QUICK_LANG_ACTION'	=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=prefs&amp;mode=personal' .  $redirect),
					'S_QUICK_LANG_OPTIONS'	=> $lang_options,
				));
			}
		}
	}

	/**
	* Set the selected language
	* Called from : root/ucp.php
	**/
	function quick_language_switch( )
	{
		global $user, $db, $phpbb_root_path, $phpEx;

		$quick_language_guest	= ( QUICK_LANGUAGE_GUEST && $user->data['user_id'] == ANONYMOUS ) ? true : false;
		$quick_language_user	= ( QUICK_LANGUAGE_USER  && $user->data['is_registered']) ? true : false ;

		if ( QUICK_LANGUAGE_ENABLED && ( $quick_language_guest || $quick_language_user ) && $quick_lang = basename( request_var( 'quick_language', '' ) ))
		{
			if ( $quick_language_user )
			{
				// Adjust the language if the user change it from the UCP
				$ucp_lang = basename( request_var( 'lang', $quick_lang ) );

				$sql = 'UPDATE ' . USERS_TABLE . ' SET user_lang = "' . $db->sql_escape($ucp_lang) . '" WHERE user_id = ' . $user->data['user_id'];
				$db->sql_query($sql);

				$user->set_cookie('quick_language', $ucp_lang, 0);
			}

			if ( $quick_language_guest )
			{
				$user->set_cookie('quick_language', $quick_lang, 0);
			}

			$redirect = request_var('redirect', append_sid("{$phpbb_root_path}index.$phpEx"));
			redirect($redirect);
		}
	}
}
// End class

?>