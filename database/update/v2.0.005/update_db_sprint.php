<?php
$sprintDir = dirname(__FILE__);
require_once "$sprintDir/../../../lib/share.php";

// ----------------------------------------------------
// Synopsis: migrate DB GINCO from v2.0.004 to v2.0.005
// ----------------------------------------------------
function usage($mess = NULL) {
	echo "------------------------------------------------------------------------\n";
	echo ("\nUpdate DB from v2.0.004 to v2.0.005\n");
	echo ("> php update_db_sprint.php -f <configFile> [{-D<propertiesName>=<Value>}]\n\n");
	echo "o <configFile>: a java style properties file for the instance on which you work\n";
	echo "o -D : inline options to complete or override the config file.\n";
	echo "------------------------------------------------------------------------\n";
	if (!is_null($mess)) {
		echo ("$mess\n\n");
		exit(1);
	}
	exit();
}

if (count($argv) == 1)
	usage();
$config = loadPropertiesFromArgs();

try {
	/* patch code here */
	// execCustSQLFile("$sprintDir/xxx.sql", $config);
	execCustSQLFile("$sprintDir/update_predefined_request_group.sql", $config);
	execCustSQLFile("$sprintDir/fix_roles.sql", $config);
	execCustSQLFile("$sprintDir/update_providers.sql", $config);
} catch (Exception $e) {
	echo "$sprintDir/update_db_sprint.php\n";
	echo "exception: " . $e->getMessage() . "\n";
	exit(1);
}

$CLIParams = implode(' ', array_slice($argv, 1));
/* patch user raw_data here */
// system("php $sprintDir/script1.php $CLIParams", $returnCode1);
// system("php $sprintDir/script2.php $CLIParams", $returnCode2);
system("php $sprintDir/change_identifiantpermanent.php $CLIParams", $returnCode1);

if ($returnCode1 != 0 ) {
 	echo "$sprintDir/update_db_sprint.php\n";
 	echo "exception: error code returned from php sql script \n";
	echo $e->getMessage() . "\n";
 	exit(1);
}
