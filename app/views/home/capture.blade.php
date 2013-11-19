@section('title')
Protosocial
@endsection
@section('style')
<?php echo HTML::style('css/jquery.autocomplete.css',array('type' => 'text/css'));?>
<style type="text/css">
td{border:1px solid black;padding:3px;}
</style>
@endsection
@section('script')
<?php echo HTML::script('js/jquery.ajaxQueue.js',array('type' => 'text/javascript'));?>
<?php echo HTML::script('js/jquery.autocomplete.js',array('type' => 'text/javascript'));?>
<script type="text/javascript">
function search_now(){
	$.post("<?php echo URL::current();?>",$("#frmsearch").serialize(),function(response){
		$("#result").html(response);
	});
	return false;
}

$(function(){
	$("#name").autocomplete(BASE+'/home/search-user',{
		minChars: 3,
		dataType: "json",
		max: 0,
		selectFirst: false,
		parse: function(data) {
			return $.map(data, function(row) {
				return {
					data: row,
					value: row.name,
					result: row.name
				}
			});
		},
		formatItem: function(item) {
			return '<img class="thumb" width="25" src="https://graph.facebook.com/'+item.id+'/picture">'+item.name;
		}
	}).result(function(event, data, formatted) {
		$('#user_id').val(data.id);
	});
	baseInit();
});
 </script>
@endsection
@section('content')
<div>
<?php
if (isset ( $profile ) && $profile != 0) {
	?>
	<div class="left-bar">
<h2>Profile:</h2>
		<table cellspacing="3" cellpadding="3">
			<tr>
				<td>Picture:</td>
				<td><img
					src="<?php echo isset($profile['picture'])?$profile['picture']:'';?>?type=large" /></td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><?php echo isset($profile['first_name'])?$profile['first_name']:'';?></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><?php echo isset($profile['last_name'])?$profile['last_name']:'';?></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><?php echo isset($profile['gender'])?$profile['gender']:'';?></td>
			</tr>
		</table>
	</div>
	<div class="right-bar">
		<h2>Data:</h2>
		<table id="tblall" cellspacing="3" cellpadding="3">
<?php
	foreach ( $profile as $k => $v ) {
		if (! empty ( $keyword ) && strstr ( $k . $v, $keyword ))
			$class = 'highlight';
		else
			$class = '';
		echo '<tr class="' . $class . '">';
		echo '<td>' . Capture::beautify ( $k ) . '</td><td>' . $v . '</td>';
		echo '</tr>';
	}
	?>
</table>
	</div>
<?php
} elseif (isset ( $profile ) && $profile == 0) {
	echo "No data available.";
} else {
	?>
<form id="frmsearch" method="post" onsubmit="return search_now()">
			<table border="0" id="tblsearch">
				<tr>
					<td>Facebook user:</td>
					<td><input class="searchBox" type="search" value="" name="name" id="name"
						required="required" />
						<input type="hidden" value="" name="user_id" id="user_id" />
						
						</td>
				</tr>
				<tr>
					<td>Keyword:</td>
					<td><input class="searchBox" type="search" value="" name="keyword" id="keyword"
						x-webkit-speech x-webkit-grammar="builtin:search" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input class="searchButton" type="submit" value="Search" /></td>
				</tr>
			</table>
		</form>
	</div>
</div>
<div id="result"></div>
<?php } ?>
@endsection
