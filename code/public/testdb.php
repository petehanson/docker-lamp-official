<?php

$host = 'mysql';
$db   = 'test4';
$user = 'test4';
$pass = 'test4';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$pdo = new PDO($dsn, $user, $pass, $opt);

try {
    $stmt = $pdo->query('SELECT name FROM person');
    while ($row = $stmt->fetch())
    {
        echo $row['name'] . "<br />";
    }

} catch (Exception $e) {
    echo "<pre>";
    var_dump($e);
    echo "</pre>";
}
