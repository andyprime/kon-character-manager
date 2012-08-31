
DROP TABLE IF EXISTS version;
CREATE TABLE IF NOT EXISTS `version` (
  `version_num` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO version (version_num) VALUES ("0.1");

--
-- Table structure for table `characters`
--
DROP TABLE IF EXISTS characters;
CREATE TABLE IF NOT EXISTS `characters` (
  `character_id` int(11) NOT NULL auto_increment,
  `player_id` int(11) NOT NULL default '0',
  `name` varchar(128) NOT NULL default '',
  `race` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default '',
  `date_created` datetime NOT NULL default '0000-00-00 00:00:00',
  `status` enum('sandbox','official','retired','deceased') NOT NULL default 'sandbox',
  `last_updated` datetime NOT NULL,
  PRIMARY KEY  (`character_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Table structure for table `character_skills`
--
DROP TABLE IF EXISTS character_skills;
CREATE TABLE IF NOT EXISTS `character_skills` (
  `character_skill_id` int(11) NOT NULL auto_increment,
  `character_id` int(11) NOT NULL default '0',
  `skill_id` int(11) NOT NULL default '0',
  `amount` int(11) NOT NULL default '1',
  PRIMARY KEY  (`character_skill_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Table structure for table `skills`
--
DROP TABLE IF EXISTS skills;
CREATE TABLE IF NOT EXISTS `skills` (
  `skill_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `requirement1` int(11) default '0',
  `requirement2` int(11) default '0',
  `description` text NOT NULL,
  `cost` int(11) NOT NULL default '0',
  `multiple` enum('y','n') NOT NULL default 'n',
  `max` int(11) NOT NULL default '0',
  PRIMARY KEY  (`skill_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `fname` varchar(64) NOT NULL default '',
  `lname` varchar(64) NOT NULL default '',
  `email` varchar(128) NOT NULL default '',
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date_created` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Table structure for table `user_roles`
--
DROP TABLE IF EXISTS user_roles;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_role_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `role` enum('admin','marshal','gm') NOT NULL,
  PRIMARY KEY  (`user_role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Table structure for table `xp_assignments`
--
DROP TABLE IF EXISTS xp_assignments;
CREATE TABLE IF NOT EXISTS `xp_assignments` (
  `xp_assignment_id` int(11) NOT NULL auto_increment,
  `character_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  PRIMARY KEY  (`xp_assignment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Table structure for table `xp_awards`
--
DROP TABLE IF EXISTS xp_awards;
CREATE TABLE IF NOT EXISTS `xp_awards` (
  `xp_award_id` int(11) NOT NULL auto_increment,
  `player_id` int(11) NOT NULL default '0',
  `amount` int(11) NOT NULL default '0',
  `notes` text NOT NULL,
  `date_added` date NOT NULL default '0000-00-00',
  `added_by` int(11) NOT NULL default '0',
  PRIMARY KEY  (`xp_award_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
