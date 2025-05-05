<?php
require_once 'db.php';
$id = $_GET['id'] ?? 0;
$sql = "DELETE FROM expenses WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
header("Location: list-expense.php");
exit;
