<?php
require '../init.php';
header('Content-Type: application/json');

//$config = parse_ini_file('../config.ini');
$config['stripe_secret_key']='sk_test_4eC39HqLyjWDarjtT1zdp7dc';
$config['stripe_publishable_key']='pk_test_d5zn1PfCKg0Ya2vhkX6gzA4z00GZtIN943';
// Make sure the configuration file is good.
if (!$config) {
	http_response_code(500);
	echo json_encode([ 'error' => 'Internal server error.' ]);
	exit;
}

\Stripe\Stripe::setApiKey($config['stripe_secret_key']);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$input = file_get_contents('php://input');
	$body = json_decode($input);	
}

if (json_last_error() !== JSON_ERROR_NONE) {
	http_response_code(400);
	echo json_encode([ 'error' => 'Invalid request.' ]);
	exit;
}
