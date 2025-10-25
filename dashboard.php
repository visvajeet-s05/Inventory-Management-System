<?php 	
require_once 'includes/header.php'; 
?>

<?php 
$sql = "SELECT * FROM product WHERE status = 1";
$query = $connect->query($sql);
$countProduct = $query->num_rows;

$orderSql = "SELECT * FROM orders WHERE order_status = 1";
$orderQuery = $connect->query($orderSql);
$countOrder = $orderQuery->num_rows;

$totalRevenue = 0;
while ($orderResult = $orderQuery->fetch_assoc()) {
	$totalRevenue += $orderResult['paid'];
}

$lowStockSql = "SELECT * FROM product WHERE quantity <= 3 AND status = 1";
$lowStockQuery = $connect->query($lowStockSql);
$countLowStock = $lowStockQuery->num_rows;

$connect->close();
?>

<div class="dashboard-grid">
	<div class="card">
		<div class="card-header">Total Products</div>
		<a href="product.php" class="card-link">
			<h2><?php echo $countProduct; ?></h2>
			<span class="badge">View</span>
		</a>
	</div>

	<div class="card">
		<div class="card-header">Total Orders</div>
		<a href="orders.php?o=manord" class="card-link">
			<h2><?php echo $countOrder; ?></h2>
			<span class="badge">View</span>
		</a>
	</div>

	<div class="card">
		<div class="card-header">Low Stock</div>
		<a href="product.php" class="card-link">
			<h2><?php echo $countLowStock; ?></h2>
			<span class="badge">Check</span>
		</a>
	</div>

	<div class="card">
		<div class="card-header">Total Revenue</div>
		<h2><?php echo $totalRevenue ?: '0'; ?></h2>
		<p><i class="glyphicon glyphicon-usd"></i> Paid Amount</p>
	</div>
</div>

<div class="dashboard-grid">
	<div class="card" style="grid-column: 1 / -1; @media (min-width: 768px) { grid-column: span 2; }">
		<div class="card-header"><i class="glyphicon glyphicon-calendar"></i> Calendar</div>
		<div id="calendar"></div>
	</div>

	<div class="card">
		<div class="card-header">Today</div>
		<h2><?php echo date('d'); ?></h2>
		<p><?php echo date('l') . ', ' . date('d M Y'); ?></p>
	</div>
</div>

<link rel="stylesheet" href="assests/plugins/fullcalendar/fullcalendar.min.css">
<script src="assests/plugins/moment/moment.min.js"></script>
<script src="assests/plugins/fullcalendar/fullcalendar.min.js"></script>

<script>
$(function () {
	$('#navDashboard').addClass('active');

	var date = new Date();
	var d = date.getDate(), m = date.getMonth(), y = date.getFullYear();

	$('#calendar').fullCalendar({
		header: {
			left: 'prev',
			center: 'title',
			right: 'next'
		},
		buttonText: {
			today: 'Today',
			month: 'Month'
		},
		height: 400,
		aspectRatio: 2
	});
});
</script>

<?php require_once 'includes/footer.php'; ?>