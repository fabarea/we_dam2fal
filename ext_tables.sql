#
# Table structure for table 'tx_wedam2fal_domain_model_damfalfile'
#
CREATE TABLE tx_wedam2fal_domain_model_damfalfile (

	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	title varchar(255) DEFAULT '' NOT NULL,

	tstamp int(11) unsigned DEFAULT '0' NOT NULL,
	crdate int(11) unsigned DEFAULT '0' NOT NULL,
	cruser_id int(11) unsigned DEFAULT '0' NOT NULL,
	deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
	hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
	starttime int(11) unsigned DEFAULT '0' NOT NULL,
	endtime int(11) unsigned DEFAULT '0' NOT NULL,

	t3ver_oid int(11) DEFAULT '0' NOT NULL,
	t3ver_id int(11) DEFAULT '0' NOT NULL,
	t3ver_wsid int(11) DEFAULT '0' NOT NULL,
	t3ver_label varchar(255) DEFAULT '' NOT NULL,
	t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
	t3ver_stage int(11) DEFAULT '0' NOT NULL,
	t3ver_count int(11) DEFAULT '0' NOT NULL,
	t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
	t3ver_move_id int(11) DEFAULT '0' NOT NULL,

	t3_origuid int(11) DEFAULT '0' NOT NULL,
	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumblob,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY t3ver_oid (t3ver_oid,t3ver_wsid),
	KEY language (l10n_parent,sys_language_uid)

);

#
# Add field to table 'tx_dam'
#
CREATE TABLE tx_dam (
	damalreadyexported int(1) unsigned DEFAULT '0' NOT NULL,
	falUid int(11) unsigned DEFAULT '0' NOT NULL,
);

#
# Add field to table 'sys_file'
#
CREATE TABLE sys_file (
	damUid int(11) unsigned DEFAULT '0' NOT NULL,
);

#
# Add field to table 'tx_dam_mm_ref'
#
CREATE TABLE tx_dam_mm_ref (
	dammmrefalreadyexported int(1) unsigned DEFAULT '0' NOT NULL,
	dammmrefnoexportwanted int(1) unsigned DEFAULT '0' NOT NULL,
	falUidRef int(11) unsigned DEFAULT '0' NOT NULL,
);

#
# Add field to table 'sys_file_reference'
#
CREATE TABLE sys_file_reference (
	damUidRef int(11) unsigned DEFAULT '0' NOT NULL,
);

#
# Add field to table 'tx_dam_cat'
#
CREATE TABLE tx_dam_cat (
	damcatalreadyexported int(1) unsigned DEFAULT '0' NOT NULL,
	falCatUid int(11) unsigned DEFAULT '0' NOT NULL,
);

#
# Add field to table 'sys_category'
#
CREATE TABLE sys_category (
	damCatUid int(11) unsigned DEFAULT '0' NOT NULL,
);

#
# Add field to table 'tx_dam_mm_cat'
#
CREATE TABLE tx_dam_mm_cat (
	dammmcatalreadyexported int(1) unsigned DEFAULT '0' NOT NULL,
	falCatRefInfo varchar(255) DEFAULT '' NOT NULL,
);

#
# Add field to table 'sys_category_record_mm'
#
CREATE TABLE sys_category_record_mm (
	damCatRefImported int(11) unsigned DEFAULT '0' NOT NULL,
);