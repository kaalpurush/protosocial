<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
@section('title')
@if(isset($title))
{{$title}}
@endif
@show
</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
@section('meta') 
@show
{{ HTML::style('css/reset.css',array('type' => 'text/css')) }}
{{ HTML::style('css/base.css',array('type' => 'text/css')) }}
<style type="text/css">
</style>
{{--[loading styles from page section:style]--}}
@yield('style')
{{--[loading styles from page section:style]--}}
{{ HTML::script('js/jquery.js',array('type' => 'text/javascript')) }}
{{ HTML::script('js/jquery.easing.js',array('type' => 'text/javascript')) }}
{{ HTML::script('js/jquery.transit.js',array('type' => 'text/javascript')) }}
{{ HTML::script('js/base.js',array('type' => 'text/javascript')) }}
<script type="text/javascript">
var BASE="{{URL::to('/')}}";
</script>	
{{--[loading scripts from page section:script]--}}
@yield('script')
{{--[loading scripts from page section:script]--}}
</head>  
<body>
<header id="header">
</header>
<nav id="nav">
</nav>
<section id="content">
@section('content') 
@show
</section>
<footer id="footer">
</footer>
</body>  
</html>