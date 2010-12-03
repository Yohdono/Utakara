CREATE DATABASE IF NOT EXISTS protected_utakara;

USE protected_utakara;

CREATE TABLE IF NOT EXISTS languages (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS KaraokeTags (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Artists (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Timers (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	user_id mediumint(8) UNSIGNED NOT NULL,
	PRIMARY KEY (id),
	KEY user_id (user_id)
);

CREATE TABLE IF NOT EXISTS KaraokeOriginType (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS KaraokeOriginPosition (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS KaraokeOriginFlag (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS KaraokeOriginType (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS KaraokeOrigin (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	typeid mediumint(8) UNSIGNED NOT NULL,
	position mediumint(8) UNSIGNED NOT NULL,
	flag mediumint(8) UNSIGNED NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (typeid) REFERENCES KaraokeOriginType(id),
	FOREIGN KEY (position) REFERENCES KaraokeOriginPosition(id),
	FOREIGN KEY (flag) REFERENCES KaraokeOriginFlag(id)
);

CREATE TABLE IF NOT EXISTS KaraokeAlertsType (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	name varchar(64) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS KaraokeAlerts (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	kara mediumint(8) UNSIGNED NOT NULL,
	typeid mediumint(8) UNSIGNED NOT NULL,
	date DATETIME,
	status BINARY(1),
	pos mediumint(8) UNSIGNED NOT NULL,
	sender VARCHAR(255) NOT NULL,
	comment TEXT(1024),
	PRIMARY KEY (id),
	FOREIGN KEY (kara) REFERENCES PlayableKaraoke(id),
	FOREIGN KEY (typeid) REFERENCES KaraokeOriginType(id)
);

CREATE TABLE IF NOT EXISTS KaraokeStats (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	grade double NOT NULL,
	nbgrader mediumint(8) UNSIGNED NOT NULL,
	play mediumint(8) UNSIGNED NOT NULL,
	last DATETIME,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS PlayableKaraokeTag (
	karaid mediumint(8) UNSIGNED NOT NULL,
	tagid mediumint(8) UNSIGNED NOT NULL,
	name varchar(64) NOT NULL,
	FOREIGN KEY (karaid) REFERENCES PlayableKaraoke(id),
	FOREIGN KEY (tagid) REFERENCES KaraokeTags(id)
);

CREATE TABLE IF NOT EXISTS PlayableKaraokeLanguage (
	langid mediumint(8) UNSIGNED NOT NULL,
	karaid mediumint(8) UNSIGNED NOT NULL,
	FOREIGN KEY (karaid) REFERENCES PlayableKaraoke(id),
	FOREIGN KEY (langid) REFERENCES Languages(id)
);

CREATE TABLE IF NOT EXISTS PlayableKaraokeArtist (
	artid mediumint(8) UNSIGNED NOT NULL,
	karaid mediumint(8) UNSIGNED NOT NULL,
	FOREIGN KEY (karaid) REFERENCES PlayableKaraoke(id),
	FOREIGN KEY (artid) REFERENCES Artists(id)
);

CREATE TABLE IF NOT EXISTS PlayableKaraokeTimer (
	timerid mediumint(8) UNSIGNED NOT NULL,
	karaid mediumint(8) UNSIGNED NOT NULL,
	PRIMARY KEY (timerid, karaid),
	FOREIGN KEY (karaid) REFERENCES PlayableKaraoke(id),
	FOREIGN KEY (timerid) REFERENCES Timers(id)
);

CREATE TABLE IF NOT EXISTS PlayableKaraoke (
	id mediumint(8) UNSIGNED NOT NULL auto_increment,
	title varchar(128) NOT NULL,
	filename varchar(128) NOT NULL,
	stats mediumint(8) UNSIGNED NOT NULL,
	timerid mediumint(8) UNSIGNED NOT NULL,
	karaid mediumint(8) UNSIGNED NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (stats) REFERENCES KaraokeStats(id),
	FOREIGN KEY (timerid) REFERENCES PlayableKaraokeTimer(timerid)
);
