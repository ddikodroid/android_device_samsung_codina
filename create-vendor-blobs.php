<?php

/**
 * copyright (c) 2012 by bagnz0r
 * http://github.com/bagnz0r
 *
 * this piece of code is released under the new bsd license.
 */

$vendor_dir = '../../../vendor/samsung/u8500-common';
$blob_fhandle = fopen($vendor_dir . '/u8500-vendor-blobs.mk', 'w');

scrap_folders($vendor_dir . '/proprietary', $blob_fhandle);

function scrap_folders($w_dir, &$blob_fhandle) {
	if (!$dir = opendir($w_dir)) {
		die($w_dir . ' is not a directory' . "\n");
	}
	
	while (false !== ($item = readdir($dir))) {
		if (!preg_match('/\.[.*]/', $item)) {
			echo '-- scraping ' . $item . ' ...' . "\n";
			if (is_dir($item)) {
				scrap_folders($w_dir . '/' . $item, $blob_fhandle);
			} else {
				add_blob_entry($w_dir, $item, $blob_fhandle);
			}
		}
	}
}

function add_blob_entry($dir, $file, &$blob_fhandle) {
	$target = str_replace('vendor/samsung/u8500-common/proprietary', '', $dir);
	fwrite($blob_fhandle, 'PRODUCT_COPY_FILES += vendor/samsung/' . $dir . '/' . $file . ':obj/' . $target . '/' . $entry . "\n");
	fwrite($blob_fhandle, 'PRODUCT_COPY_FILES += vendor/samsung/' . $dir . '/' . $file . ':system/' . $target . '/' . $entry . "\n");
}
