CREATE TABLE IF NOT EXISTS public_fstd_origin (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	title varchar(64) NOT NULL,
	origin varchar(64) NOT NULL,
	date mediumint(8) UNSIGNED NOT NULL,
	note int(11) DEFAULT '0' NOT NULL,
	accepted int(11) DEFAULT '0' NOT NULL,
	PRIMARY KEY (id)
);

# Table: 'phpbb_uta_news'
CREATE TABLE IF NOT EXISTS uta_news (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	title varchar(64) NOT NULL,
	date mediumint(8) UNSIGNED NOT NULL,
	content TEXT NOT NULL,
	author mediumint(8) UNSIGNED NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (author) REFERENCES uta_users(user_id)
);
