<?php

// db.php

require_once 'db.php';

// add-expense.php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require_once 'db.php';
    $title = $_POST['ex_title'] ?? '';
    $price = $_POST['ex_price'] ?? 0;
    $date = $_POST['ex_date'] ?? date('Y-m-d');
    $note = $_POST['ex_note'] ?? '';

    $sql = "INSERT INTO expenses (ex_title, ex_price, ex_date, ex_note) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sdss", $title, $price, $date, $note);
    $stmt->execute();

    header("Location: list-expense.php");
    exit;
}
?>
<form method="post">
  <input type="text" name="ex_title" placeholder="Title" required>
  <input type="number" step="0.01" name="ex_price" placeholder="Price" required>
  <input type="date" name="ex_date" required>
  <textarea name="ex_note" placeholder="Note"></textarea>
  <button type="submit">Add Expense</button>
</form>

