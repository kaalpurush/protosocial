<?php

/**
 * Capture
 *
 * @package    FB
 * @author     Ariful Islam <gplus.to/ariful>
 * @version    1.0
 * @license    http://mit-license.org/ MIT License
 * @link
 */

class Capture{	
	
	public static function profile($network,$username){
		$data=$network::profile($username);
		return $data;
	}
	
	public static function beautify($str){
		$str=str_replace('_', ' ', $str);
		$str=ucwords($str);
		return $str;
	}	
	
	public function __toString()
	{
		//return 'Facebook wrapper class for static access. Dont create instance, use static access.';
	}
	
	public function __call($method, $parameters)
	{
		//return call_user_func_array(array(static::inst(), $method), $parameters);
	}
	
	public static function __callStatic($method, $parameters)
	{
		//return call_user_func_array(array(static::inst(), $method), $parameters);
	}	
}