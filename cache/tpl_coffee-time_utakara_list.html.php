<?php if (!defined('IN_PHPBB')) exit; $this->_tpl_include('overall_header.html'); ?>
<h2>Utakara <?php echo ((isset($this->_rootref['L_LIST'])) ? $this->_rootref['L_LIST'] : ((isset($user->lang['LIST'])) ? $user->lang['LIST'] : '{ LIST }')); ?></h2>

<?php if ($this->_rootref['MESSAGE']) {  ?>
	<span><?php echo (isset($this->_rootref['MESSAGE'])) ? $this->_rootref['MESSAGE'] : ''; ?></span>
<?php } ?>
<div class="forabg">
	<div class="inner">
		<ul class="topiclist">
			<!-- a traduire -->
			<li class="header">
				<dl class="icon">
					<dt class="utitle"><?php echo ((isset($this->_rootref['L_TITLE'])) ? $this->_rootref['L_TITLE'] : ((isset($user->lang['TITLE'])) ? $user->lang['TITLE'] : '{ TITLE }')); ?></dt>
				    <dd class="uorigin"><?php echo ((isset($this->_rootref['L_ORIGIN'])) ? $this->_rootref['L_ORIGIN'] : ((isset($user->lang['ORIGIN'])) ? $user->lang['ORIGIN'] : '{ ORIGIN }')); ?></dd>
				    <dd class="udate"><?php echo ((isset($this->_rootref['L_DATE'])) ? $this->_rootref['L_DATE'] : ((isset($user->lang['DATE'])) ? $user->lang['DATE'] : '{ DATE }')); ?></dd>
				    <dd class="ugrade"><?php echo ((isset($this->_rootref['L_GRADE'])) ? $this->_rootref['L_GRADE'] : ((isset($user->lang['GRADE'])) ? $user->lang['GRADE'] : '{ GRADE }')); ?></dd>
				    <dd class="uaccept"><?php echo ((isset($this->_rootref['L_STATE'])) ? $this->_rootref['L_STATE'] : ((isset($user->lang['STATE'])) ? $user->lang['STATE'] : '{ STATE }')); ?></dd>
					<?php if ($this->_rootref['U_MCP'] || $this->_rootref['U_ACP']) {  ?>
					<dd class="uedit"><?php echo ((isset($this->_rootref['L_EDIT'])) ? $this->_rootref['L_EDIT'] : ((isset($user->lang['EDIT'])) ? $user->lang['EDIT'] : '{ EDIT }')); ?></dd>
					<dd class="udelete"><?php echo ((isset($this->_rootref['L_DELETE'])) ? $this->_rootref['L_DELETE'] : ((isset($user->lang['DELETE'])) ? $user->lang['DELETE'] : '{ DELETE }')); ?></dd>
					<?php } if ($this->_rootref['U_ACP']) {  ?>
					<dd class="uedit"><?php echo ((isset($this->_rootref['L_TRANSFER'])) ? $this->_rootref['L_TRANSFER'] : ((isset($user->lang['TRANSFER'])) ? $user->lang['TRANSFER'] : '{ TRANSFER }')); ?></dd>
					<?php } ?>
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
				    <dd class="ugrade"><?php echo $_list_val['NOTE']; ?></dd>
					<dd class="uaccept"><?php echo $_list_val['STATUS']; ?></dd>
					<?php if ($this->_rootref['U_MCP'] || $this->_rootref['U_ACP']) {  ?>
				    <dd class="uedit"><a href="?mode=edit&id=<?php echo $_list_val['ID']; ?>"><?php echo ((isset($this->_rootref['L_EDIT'])) ? $this->_rootref['L_EDIT'] : ((isset($user->lang['EDIT'])) ? $user->lang['EDIT'] : '{ EDIT }')); ?></a></dd>
				    <dd class="udelete"><a href="?mode=delete&id=<?php echo $_list_val['ID']; ?>"><?php echo ((isset($this->_rootref['L_DELETE'])) ? $this->_rootref['L_DELETE'] : ((isset($user->lang['DELETE'])) ? $user->lang['DELETE'] : '{ DELETE }')); ?></a></dd>
					<?php } if ($this->_rootref['U_ACP']) {  ?>
					<dd class="utransfer"><a href="?mode=transfer&id=<?php echo $_list_val['ID']; ?>"><?php echo ((isset($this->_rootref['L_TRANSFER'])) ? $this->_rootref['L_TRANSFER'] : ((isset($user->lang['TRANSFER'])) ? $user->lang['TRANSFER'] : '{ TRANSFER }')); ?></a></dd>
					<?php } ?>
				</dl>
			</li>
		  <?php }} ?>
		</ul>
	</div>
</div>
<?php $this->_tpl_include('overall_footer.html'); ?>