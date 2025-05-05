<?php
require_once 'db.php';

$result = $conn->query("SELECT * FROM payments ORDER BY payment_date DESC");
?>

<!DOCTYPE html>
<html>
<head>
  <title>Payment List</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<div class="container my-5">
  <h2>Payment Records</h2>
  <table class="table table-bordered table-striped">
    <thead class="table-light">
      <tr>
        <th>No</th>
        <th>Sale ID</th>
        <th>Amount Paid</th>
        <th>Method</th>
        <th>Paid By</th>
        <th>Note</th>
        <th>Payment Date</th>
        <th>Created</th>
      </tr>
    </thead>
    <tbody>
      <?php $i=1; while($row = $result->fetch_assoc()): ?>
      <tr>
        <td><?= $i++ ?></td>
        <td><?= $row['sale_id'] ?></td>
        <td>₹<?= number_format($row['paid_amount'], 2) ?></td>
        <td><?= $row['payment_method'] ?></td>
        <td><?= $row['paid_by'] ?></td>
        <td><?= $row['payment_note'] ?></td>
        <td><?= $row['payment_date'] ?></td>
        <td><?= $row['created_at'] ?></td>
      </tr>
      <?php endwhile; ?>
    </tbody>
  </table>
</div>
</body>
</html>
