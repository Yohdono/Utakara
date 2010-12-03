<?php if (!defined('IN_PHPBB')) exit; ?>Subject: Bienvenue sur "<?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?>"

<?php echo (isset($this->_rootref['WELCOME_MSG'])) ? $this->_rootref['WELCOME_MSG'] : ''; ?>


Veuillez conserver cet e-mail dans vos archives. Les informations concernant votre compte sont les suivantes :

----------------------------
Nom d'utilisateur : <?php echo (isset($this->_rootref['USERNAME'])) ? $this->_rootref['USERNAME'] : ''; ?>


Lien du forum : <?php echo (isset($this->_rootref['U_BOARD'])) ? $this->_rootref['U_BOARD'] : ''; ?>

----------------------------

Votre mot de passe a été stocké en toute sécurité dans notre base de données et ne pourra pas être retrouvé. Dans le cas où vous l'oubliez, vous pourrez le réinitialiser en utilisant l'adresse e-mail associée à votre compte.

Nous vous remercions de votre inscription.

<?php echo (isset($this->_rootref['EMAIL_SIG'])) ? $this->_rootref['EMAIL_SIG'] : ''; ?>