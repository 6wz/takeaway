<?php
require "init.php";
\Stripe\Stripe::setApiKey('sk_test_4eC39HqLyjWDarjtT1zdp7dc');
$intent = \Stripe\PaymentIntent::create([
  'amount' => 1099,
  'currency' => 'usd',
  // Verify your integration in this guide by including this parameter
  'metadata' => ['integration_check' => 'accept_a_payment'],
]);
?>
<input id="card-name" type="text">
<!-- placeholder for Elements -->
<div id="card-element"></div>
<button id="card-button" data-secret="<?= $intent->client_secret ?>">
    Submit Payment
</button>