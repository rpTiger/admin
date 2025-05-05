<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f8f9fa;
    }
    .sidebar {
      width: 260px;
      min-height: 100vh;
      background: #343a40;
      color: white;
      transition: left 0.3s;
    }
    .sidebar a {
      color: #ced4da;
      text-decoration: none;
      display: block;
      padding: 12px 20px;
      transition: background 0.2s;
    }
    .sidebar a:hover,
    .sidebar a.active {
      background-color: #495057;
      color: white;
    }
    .topbar {
      background: white;
      padding: 12px 20px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    }
    .topbar h5 {
      margin: 0;
    }
    .topbar .profile {
      float: right;
    }
    .content {
      padding: 20px;
    }

    #overlay {
      display: none;
      position: fixed;
      inset: 0;
      background: rgba(0, 0, 0, 0.5);
      z-index: 998;
    }

    @media (max-width: 768px) {
      .sidebar {
        position: fixed;
        top: 0;
        left: -260px;
        z-index: 999;
      }
      .sidebar.show {
        left: 0;
      }
      .sidebar .close-btn {
        display: block;
        text-align: right;
        padding: 10px 20px 0;
      }
      .sidebar .close-btn button {
        background: none;
        border: none;
        color: #fff;
        font-size: 1.5rem;
      }
    }

    @media (min-width: 769px) {
      .sidebar .close-btn {
        display: none;
      }
    }
  </style>
</head>
<body>

  <div id="overlay"></div>

  <div class="d-flex">
    <!-- Sidebar -->
    <div class="sidebar p-3" id="sidebar">
      <div class="close-btn">
        <button id="closeSidebar">&times;</button>
      </div>
      <h4 class="text-center mb-4">MyApp</h4>
      <a href="dashboard.php" class="active">🏠 Dashboard</a>
      <a href="add-expense.php">➕ Add Expense</a>
      <a href="list-expense.php">📋 Expense List</a>
      <a href="add-sale.php">💰 Add Sale</a>
      <a href="list-sales.php">📊 Sales List</a>
      <a href="sales-report.php">📈 Sales Report</a>
    </div>

    <!-- Page Content -->
    <div class="w-100">
      <!-- Topbar -->
      <div class="topbar d-flex justify-content-between align-items-center">
        <div class="d-flex align-items-center gap-3">
          <button id="toggleSidebar" class="btn btn-outline-dark d-md-none">
            ☰
          </button>
          <h5 class="mb-0">Dashboard</h5>
        </div>
        <div class="profile">
          <span class="me-3">👤 Admin</span>
          <a href="logout.php" class="btn btn-sm btn-outline-danger">Logout</a>
        </div>
      </div>
