<?php if (!defined('IN_PHPBB')) exit; $this->_tpl_include('overall_header.html'); ?>
<h2>Utakara <?php echo ((isset($this->_rootref['L_LIST'])) ? $this->_rootref['L_LIST'] : ((isset($user->lang['LIST'])) ? $user->lang['LIST'] : '{ LIST }')); ?></h2>

<?php if ($this->_rootref['MESSAGE']) {  ?>
	<span><?php echo (isset($this->_rootref['MESSAGE'])) ? $this->_rootref['MESSAGE'] : ''; ?></span>
<?php } ?>
<div class="forabg u_list">
	<div class="inner">
		<ul class="topiclist">
			<!-- a traduire -->
			<li class="header">
				<dl class="icon">
					<dt class="utitle"><?php echo ((isset($this->_rootref['L_TITLE'])) ? $this->_rootref['L_TITLE'] : ((isset($user->lang['TITLE'])) ? $user->lang['TITLE'] : '{ TITLE }')); ?></dt>
				    <dd class="uorigin"><?php echo ((isset($this->_rootref['L_ORIGIN'])) ? $this->_rootref['L_ORIGIN'] : ((isset($user->lang['ORIGIN'])) ? $user->lang['ORIGIN'] : '{ ORIGIN }')); ?></dd>
				    <dd class="udate"><?php echo ((isset($this->_rootref['L_DATE'])) ? $this->_rootref['L_DATE'] : ((isset($user->lang['DATE'])) ? $user->lang['DATE'] : '{ DATE }')); ?></dd>
				    <dd class="uaccept"><?php echo ((isset($this->_rootref['L_STATE'])) ? $this->_rootref['L_STATE'] : ((isset($user->lang['STATE'])) ? $user->lang['STATE'] : '{ STATE }')); ?></dd>
				</dl>
			</li>
		</ul>
		<ul class="topiclist forums">
		  <?php $_list_count = (isset($this->_tpldata['list'])) ? sizeof($this->_tpldata['list']) : 0;if ($_list_count) {for ($_list_i = 0; $_list_i < $_list_count; ++$_list_i){$_list_val = &$this->_tpldata['list'][$_list_i]; ?>
			<li>
				<dl>
				    <dt class="utitle"><?php echo $_list_val['TITLE']; ?></dt>
				    <dd class="uorigin"><?php echo $_list_val['ORIGIN']; ?></dd>
				    <dd class="udate"><?php echo $_list_val['DATE']; ?></dd>
					<dd class="uaccept"><?php echo $_list_val['STATUS']; ?></dd>
				</dl>
			</li>
		  <?php }} ?>
		</ul>
	</div>
</div>
<?php $this->_tpl_include('overall_footer.html'); ?>