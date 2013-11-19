@section('title')
Protosocial
@endsection
@section('style')
<style type="text/css">
td{border:1px solid black;padding:3px;}
</style>
@endsection
@section('script')
@endsection
@section('content')
<div id="content">
<?php 
echo HTML::link('home/capture','Facebook');
?>
</div>
@endsection