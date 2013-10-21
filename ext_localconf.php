<?php
if (!defined('TYPO3_MODE')) {
	die ('Access denied.');
}

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
	'weDam2Fal.' . $_EXTKEY,
	'Pi1',
	array(
		'Damfalfile' => 'list,referenceUpdate,updateCategory',
		
	),
	// non-cacheable actions
	array(
		'Damfalfile' => 'list,referenceUpdate,updateCategory',
		
	)
);

?>