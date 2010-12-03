<?php if (!defined('IN_PHPBB')) exit; $this->_tpl_include('overall_header.html'); if ($this->_rootref['U_MCP'] || $this->_rootref['U_ACP']) {  ?>
<h2><?php echo ((isset($this->_rootref['L_KARA_EDIT'])) ? $this->_rootref['L_KARA_EDIT'] : ((isset($user->lang['KARA_EDIT'])) ? $user->lang['KARA_EDIT'] : '{ KARA_EDIT }')); ?></h2>
<div id="postingbox" class="panel">
	<div class="inner">
		<span class="corners-top">
			<span></span>
		</span>
		<h3><?php echo ((isset($this->_rootref['L_KARA_EDIT'])) ? $this->_rootref['L_KARA_EDIT'] : ((isset($user->lang['KARA_EDIT'])) ? $user->lang['KARA_EDIT'] : '{ KARA_EDIT }')); ?></h3>
		<?php if ($this->_rootref['MESSAGE']) {  ?>
			<span class="success"><?php echo (isset($this->_rootref['MESSAGE'])) ? $this->_rootref['MESSAGE'] : ''; ?></span>
		<?php } ?>
		<form id="postform" method="post" action="./utakara.php?mode=edit&id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>" enctype="multipart/form-data">
			<fieldset class="field1">
				<dl>
					<dt><label for="icon"><?php echo ((isset($this->_rootref['L_TITLE'])) ? $this->_rootref['L_TITLE'] : ((isset($user->lang['TITLE'])) ? $user->lang['TITLE'] : '{ TITLE }')); ?></label></dt>
					<dd><input id="subject" class="inputbox autowidth" type="text" name="title" value="<?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?>"></dd>
				</dl>
				<dl>
					<dt><label for="icon"><?php echo ((isset($this->_rootref['L_UTA_WHERE_FROM'])) ? $this->_rootref['L_UTA_WHERE_FROM'] : ((isset($user->lang['UTA_WHERE_FROM'])) ? $user->lang['UTA_WHERE_FROM'] : '{ UTA_WHERE_FROM }')); ?></label></dt>
					<dd><input id="origin" class="inputbox autowidth" type="text" name="origin" value="<?php echo (isset($this->_rootref['ORIGIN'])) ? $this->_rootref['ORIGIN'] : ''; ?>"></dd>
				</dl>
				<dl>
					<dt><label for="icon"><?php echo ((isset($this->_rootref['L_UTA_NOTE'])) ? $this->_rootref['L_UTA_NOTE'] : ((isset($user->lang['UTA_NOTE'])) ? $user->lang['UTA_NOTE'] : '{ UTA_NOTE }')); ?></label></dt>
					<dd><input id="note" class="inputbox autowidth" type="text" name="note" value="<?php echo (isset($this->_rootref['NOTE'])) ? $this->_rootref['NOTE'] : ''; ?>"></dd>
				</dl>
				<dl>
					<dt><label for="icon"><?php echo ((isset($this->_rootref['L_UTA_ACCEPT'])) ? $this->_rootref['L_UTA_ACCEPT'] : ((isset($user->lang['UTA_ACCEPT'])) ? $user->lang['UTA_ACCEPT'] : '{ UTA_ACCEPT }')); ?></label></dt>
					<dd>
						<select id="accepted" name="accepted">
						<?php $_status_count = (isset($this->_tpldata['status'])) ? sizeof($this->_tpldata['status']) : 0;if ($_status_count) {for ($_status_i = 0; $_status_i < $_status_count; ++$_status_i){$_status_val = &$this->_tpldata['status'][$_status_i]; ?>
							<option value="<?php echo $_status_val['ID']; ?>" <?php if ($this->_rootref['ACCEPTED'] == $_status_val['ID']) {  ?>selected="selected" <?php } ?>><?php echo $_status_val['STATUS']; ?></option>
						<?php }} ?>
						</select>
						<script type="text/javascript" src="./styles/coffee_time/template/assignement.js"></script>
						<div id="timer">
							<span> to </span>
							<select id="timer_id" name="timer">
							<?php $_timer_count = (isset($this->_tpldata['timer'])) ? sizeof($this->_tpldata['timer']) : 0;if ($_timer_count) {for ($_timer_i = 0; $_timer_i < $_timer_count; ++$_timer_i){$_timer_val = &$this->_tpldata['timer'][$_timer_i]; ?>
								<option value="<?php echo $_timer_val['ID']; ?>"><?php echo $_timer_val['NAME']; ?></option>
							<?php }} ?>
							</select>
						</div>
					</dd>
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
<?php } $this->_tpl_include('overall_footer.html'); ?>