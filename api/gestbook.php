<?php

$name = $_POST["name"] ?? null;
$email = $_POST["email"] ?? null;
$message = $_POST["message"] ?? null;

if ($name && $email && $message) {
  $db = new PDO('mysql:host=localhost;dbname=crepe-riz;charset=utf8', 'root', '');
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $query = $db->prepare("INSERT INTO GUESTBOOK (`name`, `email`, `message`) VALUES (:name, :email, :message)");
  $query->execute([
    "name" => $name,
    "email" => $email,
    "message" => $message
  ]);
  
  header("Location: ./../index.php");
} else {
  header("Location: ./../index.php");
}