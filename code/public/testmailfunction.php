<?php

$result = mail("test@person.com", "mail test message", "this is a test message");

echo "<pre>";
var_dump($result);
echo "</pre>";

