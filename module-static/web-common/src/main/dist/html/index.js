document.addEventListener("DOMContentLoaded", function () {
  const sidebarToggleBtn = document.getElementById('sidebarToggle');
  const sidebar = document.querySelector('aside');

  sidebarToggleBtn.addEventListener('click', function () {
    sidebar.classList.toggle('d-none');
  });
});
