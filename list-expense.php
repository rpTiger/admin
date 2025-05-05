<?php 
require_once 'header.php'; // Header with sidebar and topbar
require_once 'db.php'; // DB connection

$result = $conn->query("SELECT * FROM expenses ORDER BY ex_date DESC");
?>

<div class="container-fluid p-4">
  <h4 class="mb-4">Expense List</h4>

  <div class="card shadow-sm border-0">
    <div class="card-header bg-primary text-white">
      <strong>All Expenses</strong>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-bordered" id="expenseTable">
          <thead class="table-light">
            <tr>
              <th>ID</th>
              <th>Title</th>
              <th>Price</th>
              <th>Date</th>
              <th>Note</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <?php while ($row = $result->fetch_assoc()): ?>
              <tr>
                <td><?= $row['id'] ?></td>
                <td><?= htmlspecialchars($row['ex_title']) ?></td>
                <td>₹<?= $row['ex_price'] ?></td>
                <td><?= $row['ex_date'] ?></td>
                <td><?= htmlspecialchars($row['ex_note']) ?></td>
                <td>
                  <a href="edit-expense.php?id=<?= $row['id'] ?>" class="btn btn-sm btn-warning">Edit</a>
                  <a href="delete-expense.php?id=<?= $row['id'] ?>" class="btn btn-sm btn-danger" onclick="return confirm('Delete this expense?')">Delete</a>
                </td>
              </tr>
            <?php endwhile; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<?php require_once 'footer.php'; ?>

