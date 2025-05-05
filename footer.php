  </div> <!-- Close page content -->
  </div> <!-- Close sidebar container -->

  <script>
    // Mobile Sidebar Toggle (optional if you add hamburger later)
    const sidebar = document.getElementById('sidebar');
    const overlay = document.getElementById('overlay');
    const toggleBtn = document.getElementById('toggleSidebar');
    const closeBtn = document.getElementById('closeSidebar');

    toggleBtn.addEventListener('click', () => {
      sidebar.classList.add('show');
      overlay.style.display = 'block';
    });

    closeBtn.addEventListener('click', () => {
      sidebar.classList.remove('show');
      overlay.style.display = 'none';
    });

    overlay.addEventListener('click', () => {
      sidebar.classList.remove('show');
      overlay.style.display = 'none';
    });
  </script>

  <!-- Include DataTable CSS and JS -->
<link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

<script>
  $(document).ready(function() {
    $('#expenseTable').DataTable({
      "paging": true, // Enable pagination
      "searching": true, // Enable search
      "ordering": true, // Enable sorting
      "info": true, // Show table info (like total records)
      "autoWidth": false // Disable auto width adjustment
    });
  });
</script>

</body>
</html>
