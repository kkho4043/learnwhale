<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

</head>
<body>

	<p>
		Date: <input type="text" id="datepicker">
	</p>

	<div class='col-md-3 col-xs-4'>
		<div class="form-group">
			<div class="input-group date" id="datetimepicker1" data-target-input="nearest">
				<input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" value="01/11/2020">
				<div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
					<div class="input-group-text">
						<i class="fa fa-calendar"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class='col-md-3 col-xs-4'>
		<div class="form-group">
			<div class="input-group date" id="datetimepicker2" data-target-input="nearest">
				<input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker2" value="01/15/2020">
				<div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
					<div class="input-group-text">
						<i class="fa fa-calendar"></i>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});

	$(function() {
		$('#datetimepicker1').datetimepicker({
			format : 'L'
		});
		$('#datetimepicker2').datetimepicker({
			format : 'L',
			useCurrent : false
		});
		$("#datetimepicker1").on("change.datetimepicker", function(e) {
			$('#datetimepicker2').datetimepicker('minDate', e.date);
		});
		$("#datetimepicker2").on("change.datetimepicker", function(e) {
			$('#datetimepicker1').datetimepicker('maxDate', e.date);
		});
	});
</script>
</html>