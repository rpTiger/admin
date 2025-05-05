<?php
require_once 'db.php';
$id = $_GET['id'] ?? 0;
$sql = "SELECT * FROM expenses WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$expense = $result->fetch_assoc();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST['ex_title'] ?? '';
    $price = $_POST['ex_price'] ?? 0;
    $date = $_POST['ex_date'] ?? date('Y-m-d');
    $note = $_POST['ex_note'] ?? '';

    $sql = "UPDATE expenses SET ex_title=?, ex_price=?, ex_date=?, ex_note=? WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sdssi", $title, $price, $date, $note, $id);
    $stmt->execute();

    header("Location: list-expense.php");
    exit;
}
?>
<form method="post">
  <input type="text" name="ex_title" value="<?= htmlspecialchars($expense['ex_title']) ?>" required>
  <input type="number" step="0.01" name="ex_price" value="<?= $expense['ex_price'] ?>" required>
  <input type="date" name="ex_date" value="<?= $expense['ex_date'] ?>" required>
  <textarea name="ex_note"><?= htmlspecialchars($expense['ex_note']) ?></textarea>
  <button type="submit">Update Expense</button>
</form>