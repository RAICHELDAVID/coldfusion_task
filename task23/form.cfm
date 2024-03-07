<!---<!DOCTYPE html>
	<html>
		<head>
			<title>Admin Dashboard</title>
			<link rel="stylesheet" href="style/style.css">
		</head>
		<body>
			<div class="formBody">
				<div id="logo">
					<img src="./assets/logoimage.png"></img>
					
				</div>
				<form class="wufoo">
					<header id="header">
						<h2>Employment Application</h2>
						<div>Infinity Box Inc.</div>
					</header>
					<ul>
						<li class="box" id="box1">
							<label class="desc notranslate" id="title17">
								Which position are you applying for?
								<span id="req_17" class="req">*</span>
							</label>
							<div>
								<select id="Field17" name="Field17" class="field select medium">
									<option value="" selected="selected">
									</option>
									<option value="Interface Designer">
										Interface Designer
									</option>
									<option value="Software Engineer">
										Software Engineer
									</option>
									<option value="System Administrator">
										System Administrator
									</option>
									<option value="Office Manager">
										Office Manager
									</option>
								</select>
							</div>
						</li>
						<li class="box" id="box2">
							<fieldset>
								<legend id="title19" class="desc notranslate">
									Are you willing to relocate?
									<span id="req_19" class="req">*</span>
								</legend>
								<div class="radioDivision">
	  								<input id="radioDefault_19" name="Field19" type="hidden" value="">
	    							<span>
	  									<input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0"  checked="checked" required="">
	  									<label class="choice">
	    									<span class="choice__text notranslate">Yes</span>
	          								<span class="choice__qty"></span>
	  									</label>
	    							</span>
		  							<span>
	  									<input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" required="">
	  									<label class="choice">
	    									<span class="choice__text notranslate">No</span>
	          								<span class="choice__qty"></span>
	  									</label>
	    							</span>
								</div>
							</fieldset>
						</li>
						<li id="box3" class="box">
							<label class="desc" id="title20">
								When can you start?
								<span id="req_20" class="req">*</span>
							</label>
							<div class="dateContainer">
								<div>
									<input type="text" class="field text dateInputOne"  data-max="2" tabindex="0" required oninput="skipIfMax(this)">
									<span class="symbol">/</span>
								</div>
								<div>
									<input type="text" class="field text dateInputOne"  data-max="2" tabindex="0"  required="">
									<span class="symbol">/</span>
								</div>
								<div>
		 							<input type="text" class="field text dateInputTwo"  data-max="4" tabindex="0" required="">
									<span id="cal20">
									<img id="pick20" class="datepicker" src="assets/calendar.png" alt="Pick a date." data-date-format="yyyy-mm-dd" data-date="today">
									</span>			
								</div>
	
							</div>
	
							<div class="dateContent">
								<div id="month">MM</div>
								<div id="day">DD</div>
								<div id="year">YYYY</div>
							</div>
	
	
						</li>
					</ul>
					
				</form>
			</div>
	    
	      	<script src="script/jquery.js"></script>
			<script src="script/script.js"></script>
			<script>
	    		changeColor('box1');
	    		changeColor('box2');
	    		changeColor('box3');
			</script>
	
	    </body>
	</html>
	--->
<!DOCTYPE html>
<html>
	<head>
		<title>Admin Dashboard</title>
		<link rel="stylesheet" href="style/style.css">
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	</head>
	<body>
		<div class="formBody">
			<div id="logo">
				<img src="./assets/logoimage.png"></img>
			</div>
			<form class="wufoo">
				<header id="header">
					<h2>Employment Application</h2>
					<div>Infinity Box Inc.</div>
				</header>
				<ul>
					<li class="box" id="box1">
						<label class="desc notranslate" id="title17">
						Which position are you applying for?
						<span id="req_17" class="req">*</span>
						</label>
						<div>
							<select id="Field17" name="Field17" class="field select medium">
								<option value="" selected="selected">
								</option>
								<option value="Interface Designer">
									Interface Designer
								</option>
								<option value="Software Engineer">
									Software Engineer
								</option>
								<option value="System Administrator">
									System Administrator
								</option>
								<option value="Office Manager">
									Office Manager
								</option>
							</select>
						</div>
					</li>
					<li class="box" id="box2">
						<fieldset>
							<legend id="title19" class="desc notranslate">
								Are you willing to relocate?
								<span id="req_19" class="req">*</span>
							</legend>
							<div class="radioDivision">
								<input id="radioDefault_19" name="Field19" type="hidden" value="">
								<span>
								<input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0"  checked="checked" required="">
								<label class="choice">
								<span class="choice__text notranslate">Yes</span>
								<span class="choice__qty"></span>
								</label>
								</span>
								<span>
								<input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" required="">
								<label class="choice">
								<span class="choice__text notranslate">No</span>
								<span class="choice__qty"></span>
								</label>
								</span>
							</div>
						</fieldset>
					</li>
					<li id="box3" class="box">
						<label class="desc" id="title20">
							When can you start?
							<span id="req_20" class="req">*</span>
						</label>
						<div class="dateContainer">
							<div>
								<input type="text" class="field text dateInputOne"  data-max="2" tabindex="0" required oninput="skipIfMax(this)">
								<span class="symbol">/</span>
							</div>
							<div>
								<input type="text" class="field text dateInputOne"  data-max="2" tabindex="0"  required="">
								<span class="symbol">/</span>
							</div>
							<div>
								<input type="text" id="datepicker" class="field text dateInputTwo"  data-max="4" tabindex="0" required="">
							</div>
						</div>
						<div class="dateContent">
							<div id="month">MM</div>
							<div id="day">DD</div>
							<div id="year">YYYY</div>
						</div>
					</li>
				</ul>
			</form>
		</div>
		<script src="script/jquery.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
		<script src="script/script.js"></script>
		<script>
			// Initialize datepicker
			$(function() {
			    $("#datepicker").datepicker({
			        dateFormat: "yy-mm-dd", // Set date format
			        showOn: "button", // Show calendar icon only
			        buttonText: "<img src='assets/calendar.png' alt='Pick a date.' class='calendar-icon'>", // Use calendar icon as button
			        buttonImageOnly: true, // Show only the calendar icon
			        buttonImage: "assets/calendar.png", // Set the calendar icon image
			        onSelect: function(dateText, inst) {
			            var selectedDate = $(this).datepicker('getDate');
			            if (selectedDate != null) {
			                var month = selectedDate.getMonth() + 1;
			                var day = selectedDate.getDate();
			                var year = selectedDate.getFullYear();
			                $('.dateInputOne').eq(0).val(month);
			                $('.dateInputOne').eq(1).val(day);
			                $('.dateInputTwo').val(year);
			            }
			        }
			    });
			});
			
			// Update box colors
			changeColor('box1');
			changeColor('box2');
			changeColor('box3');
			
			// Prevent default behavior of input box click
			$('.dateInputTwo').click(function(event) {
			    event.preventDefault();
			});
			
			// Add click event listener to calendar icon
			$('.calendar-icon').click(function() {
			    $("#datepicker").datepicker("show");
			});
			$('.ui-icon-circle-triangle-w').css('background-position', '');

			    
		</script>
	</body>
</html>