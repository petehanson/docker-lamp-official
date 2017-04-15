<?php

require_once("../vendor/autoload.php");

$message = Swift_Message::newInstance()

    // Give the message a subject
    ->setSubject('Test subject')

    // Set the From address with an associative array
    ->setFrom(array('john@doe.com' => 'John Doe'))

    // Set the To addresses with an associative array
    ->setTo(array('receiver@domain.org', 'other@domain.org' => 'A name'))

    // Give it a body
    ->setBody('Here is the message itself')

    // And optionally an alternative body
    ->addPart('<q>Here is the message itself</q>', 'text/html');



// Create the Transport
$transport = Swift_SmtpTransport::newInstance('mailhog', 1025);

// Create the Mailer using your created Transport
$mailer = Swift_Mailer::newInstance($transport);

// Send the message
$result = $mailer->send($message);

?>
<p>Number of messages sent: <?php echo $result; ?></p>

