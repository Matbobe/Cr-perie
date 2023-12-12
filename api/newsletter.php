<?php

$email = $_POST["email"] ?? null;

if ($email) {
  $db = new PDO('mysql:host=localhost;dbname=crepe-riz;charset=utf8', 'root', '');
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $query = $db->prepare("INSERT INTO NEWSLETTER (`email`) VALUES (:email)");
  $query->execute([
    "email" => $email
  ]);

  header("Location: ./../index.php");
} else {
  header("Location: ./../index.php");
}