<?php
class Person extends Eloquent {
	
	public static function exists($username)
	{
		return self::where('username', '=', $username)->first()?true:false;
	}
	
}