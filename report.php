<?php require_once 'includes/header.php'; ?>

<div class="row">
	<div class="col-md-12">
		<div class="content-card">
			<div class="content-card-header">
				<h3 class="page-heading"><i class="glyphicon glyphicon-check"></i>	Order Report</h3>
			</div>
			<form class="form-horizontal" action="php_action/getOrderReport.php" method="post" id="getOrderReportForm">
			  <div class="form-group">
			    <label for="startDate" class="col-sm-2 control-label">Start Date</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="startDate" name="startDate" placeholder="Start Date" />
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="endDate" class="col-sm-2 control-label">End Date</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="endDate" name="endDate" placeholder="End Date" />
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-success" id="generateReportBtn"> <i class="glyphicon glyphicon-ok-sign"></i> Generate Report</button>
			    </div>
			  </div>
			</form>

		</div>
		</div>
	</div>
<script src="custom/js/report.js"></script>

<?php require_once 'includes/footer.php'; ?>