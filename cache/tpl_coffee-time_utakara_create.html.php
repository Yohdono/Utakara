<?php if (!defined('IN_PHPBB')) exit; $this->_tpl_include('overall_header.html'); ?>
<h2><?php echo ((isset($this->_rootref['L_KARA_ASK'])) ? $this->_rootref['L_KARA_ASK'] : ((isset($user->lang['KARA_ASK'])) ? $user->lang['KARA_ASK'] : '{ KARA_ASK }')); ?></h2>
<div id="postingbox" class="panel">
	<div class="inner">
		<span class="corners-top">
			<span></span>
		</span>
		<h3><?php echo ((isset($this->_rootref['L_KARA_TO_ASK'])) ? $this->_rootref['L_KARA_TO_ASK'] : ((isset($user->lang['KARA_TO_ASK'])) ? $user->lang['KARA_TO_ASK'] : '{ KARA_TO_ASK }')); ?></h3>
		<form id="postform" method="post" action="./utakara.php?mode=create" enctype="multipart/form-data">
			<fieldset class="field1">
				<dl>
					<dt><label for="icon"><?php echo ((isset($this->_rootref['L_TITLE'])) ? $this->_rootref['L_TITLE'] : ((isset($user->lang['TITLE'])) ? $user->lang['TITLE'] : '{ TITLE }')); ?></label></dt>
					<dd><input id="subject" class="inputbox autowidth" type="text" name="title"></dd>
				</dl>
				<dl>
					<dt><label for="icon"><?php echo ((isset($this->_rootref['L_UTA_WHERE_FROM'])) ? $this->_rootref['L_UTA_WHERE_FROM'] : ((isset($user->lang['UTA_WHERE_FROM'])) ? $user->lang['UTA_WHERE_FROM'] : '{ UTA_WHERE_FROM }')); ?></label></dt>
					<dd><input id="origin" class="inputbox autowidth" type="text" name="origin"></dd>
				</dl>
			</fieldset>
			<fieldset class="submit-buttons">
				<input class="button1 default-submit-action" type="submit" value="<?php echo ((isset($this->_rootref['L_SUBMIT'])) ? $this->_rootref['L_SUBMIT'] : ((isset($user->lang['SUBMIT'])) ? $user->lang['SUBMIT'] : '{ SUBMIT }')); ?>" name="post" tabindex="6" accesskey="s"/>
			</fieldset>
		</form>
		<span class="corners-bottom">
			<span></span>
		</span>
	</div>
</div>
<?php $this->_tpl_include('overall_footer.html'); ?>