<?php
require_once 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $sale_id = $_POST['sale_id'];
    $paid_amount = $_POST['paid_amount'];
    $payment_method = $_POST['payment_method'];
    $payment_note = $_POST['payment_note'];
    $paid_by = $_POST['paid_by'];
    $payment_date = $_POST['payment_date'];

    $stmt = $conn->prepare("INSERT INTO payments (sale_id, paid_amount, payment_method, payment_note, paid_by, payment_date) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sdssss", $sale_id, $paid_amount, $payment_method, $payment_note, $paid_by, $payment_date);
    $stmt->execute();

    // Calculate total paid for this sale
    $total_paid_result = $conn->query("SELECT SUM(paid_amount) AS total_paid FROM payments WHERE sale_id = '$sale_id'");
    $total_paid_row = $total_paid_result->fetch_assoc();
    $total_paid = $total_paid_row['total_paid'];

    // Get final_total from sales table
    $sale_result = $conn->query("SELECT final_total FROM sales WHERE sale_id = '$sale_id'");
    $sale = $sale_result->fetch_assoc();
    $final_total = $sale['final_total'];

    // If fully paid, update status = 1
    if ($total_paid >= $final_total) {
        $conn->query("UPDATE sales SET status = 1 WHERE sale_id = '$sale_id'");
    }

    echo "<script>alert('Payment added successfully.');window.location.href='list-payments.php';</script>";
    exit;
}
?>

<!-- HTML FORM -->
<!DOCTYPE html>
<html>
<head>
  <title>Add Payment</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<div class="container my-5">
  <h2>Add Payment</h2>
  <form method="post" class="row g-3">
    <div class="col-md-6">
      <label>Sale ID</label>
      <input type="text" name="sale_id" class="form-control" required>
    </div>
    <div class="col-md-6">
      <label>Paid Amount</label>
      <input type="number" name="paid_amount" class="form-control" required>
    </div>
    <div class="col-md-6">
      <label>Payment Method</label>
      <select name="payment_method" class="form-select">
        <option value="Cash">Cash</option>
        <option value="GPay">GPay</option>
        <option value="Bank Transfer">Bank Transfer</option>
      </select>
    </div>
    <div class="col-md-6">
      <label>Paid By (Person)</label>
      <input type="text" name="paid_by" class="form-control">
    </div>
    <div class="col-md-6">
      <label>Payment Date</label>
      <input type="date" name="payment_date" class="form-control">
    </div>
    <div class="col-12">
      <label>Note</label>
      <textarea name="payment_note" class="form-control"></textarea>
    </div>
    <div class="col-12">
      <button type="submit" class="btn btn-success">Add Payment</button>
    </div>
  </form>
</div>
</body>
</html>
